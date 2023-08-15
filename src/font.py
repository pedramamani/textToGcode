# produces the following properties for each character in the font and exports them to font.json
#     width
#     height
#     instruction set for drawing the character
# measurements are for a font size of 1

import config
import json

# 6 a — b — c
#   |       |
# 5 d   e   f
#   |       |
# 4 g — h — i
#   |       |
# 3 j   k   l
#   |       |
# 2 m — n — o
#   |       |
# 1 p   q   r
#   |       |
# 0 s — t — u
#   0   1   2

positionByNode = {
    'start': (0, 10),
    'a': (0, 6),
    'b': (1, 6),
    'c': (2, 6),
    'd': (0, 5),
    'e': (1, 5),
    'f': (2, 5),
    'g': (0, 4),
    'h': (1, 4),
    'i': (2, 4),
    'j': (0, 3),
    'k': (1, 3),
    'l': (2, 3),
    'm': (0, 2),
    'n': (1, 2),
    'o': (2, 2),
    'p': (0, 1),
    'q': (1, 1),
    'r': (2, 1),
    's': (0, 0),
    't': (1, 0),
    'u': (2, 0),
}

motionByCharacter = {
    '0': 'mnlcbdmc',
    '3': 'acghlnm',
    'a': 'oihjno',
    'b': 'amnlhg',
    'c': 'ihjno',
    'd': 'conjhi',
    'e': 'jklhjno',
    'f': 'mdb gh',
    'g': 'strihjno',
    'h': 'am ghlo',
    'i': 'nh e',
    'j': 'tri f',
    'k': 'am ig jno',
    'l': 'bn',
    'm': 'mghlo hn',
    'n': 'mghlo',
    'o': 'jnlhj',
    'p': 'mnlhgs',
    'q': 'onjhiu',
    'r': 'gm jhi',
    's': 'ihjlnm',
    't': 'ajn gh',
    'u': 'gjnoi',
    'v': 'gmnli',
    'w': 'gjnoi hn',
    'x': 'go mi',
    'y': 'gjno irts',
    'z': 'gimo',
    'A': 'mabfo gi',
    'B': 'mabfhg hlnm',
    'C': 'cbdjno',
    'D': 'mabflnm',
    'E': 'omdbc gi',
    'F': 'mdbc gi',
    'G': 'hilnmdbc',
    'H': 'ma gi co',
    'I': 'mo nb ac',
    'J': 'aclnm',
    'K': 'ma cgo',
    'L': 'ajno',
    'M': 'mabfo nb',
    'N': 'mabfo',
    'O': 'abfonja',
    'P': 'mabfhg',
    'Q': 'mdbclnm ko',
    'R': 'mabfhg hlo',
    'S': 'mnlhdbc',
    'T': 'nb ac',
    'U': 'ajnoc',
    'V': 'amnlc',
    'W': 'ajnoc bn',
    'X': 'mc ao',
    'Y': 'nha ch',
    'Z': 'acmo',
    '.': 'n',
    '!': 'bk n',
    '?': 'abfhj m',
    "'": 'be',
}


def scaleValue(value):
    return value / 6


def characterBounds(character):
    motion = motionByCharacter[character]
    nodes = motion.replace(' ', '')
    nodePositions = [positionByNode[n] for n in nodes]
    nodeXs = [x for x, _ in nodePositions]
    nodeYs = [y for _, y in nodePositions]
    xBounds = min(nodeXs), max(nodeXs)
    yBounds = min(nodeYs), max(nodeYs)
    return xBounds, yBounds


def motionInstructions(character, xOrigin):
    instructions = []
    motion = motionByCharacter[character]
    for stroke in motion.split(' '):
        instructions.extend(strokeInstructions(stroke, xOrigin))
    return instructions


def strokeInstructions(stroke, xOrigin):
    instructions = []
    startNode = 'start'  # so first instruction is always G1
    for endNode in stroke:
        instructions.append(subStrokeInstruction(startNode, endNode, xOrigin))
        startNode = endNode
    instructions.insert(1, {'command': 'penDown'})
    instructions.append({'command': 'penUp'})
    return instructions


def subStrokeInstruction(startNode, endNode, xOrigin):
    sx, sy = positionByNode[startNode]
    ex, ey = positionByNode[endNode]
    dx, dy = ex - sx, ey - sy
    instruction = {}

    if abs(dx) != 1 or abs(dy) != 1:
        instruction['command'] = 'move'
    elif dx > 0 and dy > 0 and sx == 0:
        instruction.update({'command': 'cwArc', 'i': scaleValue(1), 'j': 0})
    elif dx > 0 and dy < 0 and sx == 1:
        instruction.update({'command': 'cwArc', 'i': 0, 'j': scaleValue(-1)})
    elif dx < 0 and dy < 0 and sx == 2:
        instruction.update({'command': 'cwArc', 'i': scaleValue(-1), 'j': 0})
    elif dx < 0 and dy > 0 and sx == 1:
        instruction.update({'command': 'cwArc', 'i': 0, 'j': scaleValue(1)})
    elif dx < 0 and dy < 0 and sx == 1:
        instruction.update({'command': 'ccwArc', 'i': 0, 'j': scaleValue(-1)})
    elif dx < 0 and dy > 0 and sx == 2:
        instruction.update({'command': 'ccwArc', 'i': scaleValue(-1), 'j': 0})
    elif dx > 0 and dy > 0 and sx == 1:
        instruction.update({'command': 'ccwArc', 'i': 0, 'j': scaleValue(1)})
    elif dx > 0 and dy < 0 and sx == 0:
        instruction.update({'command': 'ccwArc', 'i': scaleValue(1), 'j': 0})
        
    instruction.update({'x': scaleValue(ex - xOrigin), 'y': scaleValue(ey)})
    return instruction


def saveFont():
    data = {
        ' ': {
            'width': scaleValue(1),
            'height': 0,
            'instructions': [],
        }
    }
    for character in motionByCharacter.keys():
        xBounds, yBounds = characterBounds(character)
        instructions = motionInstructions(character, xBounds[0])
        data[character] = {
            'width': scaleValue(xBounds[1] - xBounds[0]),
            'height': scaleValue(yBounds[1] - yBounds[0]),
            'instructions': instructions,
        }
    with open(config.assetsPath / 'font.json', 'w') as file:
        json.dump(data, file, indent=4)


def main():
    saveFont()


if __name__ == '__main__':
    main()
