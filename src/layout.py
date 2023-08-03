# computes the text layout on the tape and generates the appropriate font instructions
# saves new font as font-{fontSize}.json and the layout settings as layout.json
# layout settings are
#     tape width
#     tape length
#     font size
#     font file
#     line count
#     line length
#     line spacing - space between lines relative to font size
#     letter spacing - space between letters relative to font size
#     padding - relative to font size
#     line origins

import json
import config

tapeWidth = 47.5
tapeLength = 216  # to avoid crashing into end of x axis
fontSize = 20
lineCount = 2
lineSpacing = 0.1
letterSpacing = 0.15
padding = 0.1


def lineOrigins():
    textHeight = (lineCount + (lineCount - 1) * lineSpacing) * fontSize
    assert textHeight + 2 * padding * \
        fontSize <= tapeWidth, 'text with these settings does not fit on tape'

    lineOrigins = []
    for lineIndex in reversed(range(lineCount)):
        lineOriginY = tapeWidth / 2 - textHeight / 2 + \
            lineIndex * (1 + lineSpacing) * fontSize
        lineOriginX = padding * fontSize
        lineOrigins.append((lineOriginX, lineOriginY))
    return lineOrigins


def saveLayout():
    layout = {
        'tapeWidth': tapeWidth,
        'tapeLength': tapeLength,
        'fontSize': fontSize,
        'fontFile': f'font-{fontSize}.json',
        'lineCount': lineCount,
        'lineLength': tapeLength - 2 * padding * fontSize,
        'lineSpacing': lineSpacing,
        'letterSpacing': letterSpacing,
        'padding': padding,
        'lineOrigins': lineOrigins(),
    }
    with open(config.assetsPath / 'layout.json', 'w') as file:
        json.dump(layout, file, indent=4)


def saveFont():
    with open(config.assetsPath / 'font.json', 'r') as file:
        font = json.load(file)
    for info in font.values():
        info['width'] = (info['width'] + letterSpacing) * fontSize
        info['height'] = info['height'] * fontSize
        for index, instruction in enumerate(info['instructions']):
            info['instructions'][index] = scaleInstruction(instruction)
    with open(config.assetsPath / f'font-{fontSize}.json', 'w') as file:
        json.dump(font, file, indent=4)


def scaleX(x):
    return (x + letterSpacing / 2) * fontSize


def scale(y):
    return y * fontSize


def scaleInstruction(instruction):
    if instruction['command'] in ['move', 'cwArc', 'ccwArc']:
        instruction['x'] = scaleX(instruction['x'])
        instruction['y'] = scale(instruction['y'])
        if instruction['command'] in ['cwArc', 'ccwArc']:
            instruction['i'] = scale(instruction['i'])
            instruction['j'] = scale(instruction['j'])
    return instruction


def main():
    saveLayout()
    saveFont()


if __name__ == '__main__':
    main()
