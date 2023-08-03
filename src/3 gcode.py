# given some text, outputs the gcode for drawing it with the provided layout
# the file name is {text}.gcode

import config
import json

origin = (36, 36.4)
penUpZ = 24
penDownZ = 22.5
preGcode = f'''
G21 ; set units to mm
M203 X100 Y100 Z10 E0 ; set speed limits (mm/s)
M201 X1000 Y1000 Z200 E0 ; set acceleration limits (mm/s²)
M205 X8 Y8 Z0.5 E0 ; set jerk limits (mm/s)
G28 W ; home all axes
G90 ; use absolute coordinates
G1 F2000 ; set speed (mm/min)
G1 Z{penUpZ} ; hover marker
'''
postGcode = '''
G1 X0 Y100 Z55 ; park aside
M84 ; disable motors
'''


def roundValue(value):
    return round(value, 5)


def addPositions(position, otherPosition):
    return tuple(a + b for a, b in zip(position, otherPosition))


def textLines(text, layout, font):
    words = []
    lengths = []
    for word in text.split():
        wordLength = 0
        for character in word:
            assert character in font, f'character "{character}" not in font'
            wordLength += font[character]['width']
        words.append(word)
        lengths.append(wordLength)

    lineLength = 0
    lines = [[]]
    for word, length in zip(words, lengths):
        lineLength += length
        if lineLength > layout['lineLength']:
            lines.append([word])
            lineLength = length
        else:
            lines[-1].append(word)
        lineLength += font[' ']['width']

    assert len(lines) <= layout['lineCount'], 'text is too long to fit on tape'
    return [' '.join(line) for line in lines]


def instructionGcode(instruction, cursorPosition):
    if instruction['command'] == 'penUp':
        return f'G1 Z{penUpZ}'
    if instruction['command'] == 'penDown':
        return f'G1 Z{penDownZ}'
    if instruction['command'] == 'move':
        return f'G1 X{roundValue(cursorPosition[0] + instruction["x"])} Y{roundValue(cursorPosition[1] + instruction["y"])}'
    if instruction['command'] == 'cwArc':
        return f'G2 X{roundValue(cursorPosition[0] + instruction["x"])} Y{roundValue(cursorPosition[1] + instruction["y"])} I{roundValue(instruction["i"])} J{roundValue(instruction["j"])}'
    if instruction['command'] == 'ccwArc':
        return f'G3 X{roundValue(cursorPosition[0] + instruction["x"])} Y{roundValue(cursorPosition[1] + instruction["y"])} I{roundValue(instruction["i"])} J{roundValue(instruction["j"])}'
    return ''


def fileName(text):
    name = ' '.join(text.split()[:3])
    return f'{name}.gcode'


def saveGcode(text):
    with open(config.assetsPath / 'layout.json', 'r') as file:
        layout = json.load(file)
    with open(config.assetsPath / layout['fontFile'], 'r') as file:
        font = json.load(file)

    gcode = f'; {text}\n' + preGcode
    lines = textLines(text, layout, font)
    for index, line in enumerate(lines):
        cursorPosition = addPositions(origin, layout['lineOrigins'][index])
        for character in line:
            info = font[character]
            for instruction in info['instructions']:
                gcode += '\n' + instructionGcode(instruction, cursorPosition)
            cursorPosition = addPositions(cursorPosition, (info['width'], 0))
        gcode += '\n'
    gcode += postGcode

    with open(config.assetsPath / fileName(text), 'w') as file:
        file.write(gcode)


def main():
    # saveGcode("To avoid toilet clogs please don't throw stuff in")
    # saveGcode("Please use the garburator with caution")
    saveGcode("Occupied if door is closed")


if __name__ == '__main__':
    main()
