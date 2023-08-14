; Occupied if door is closed

G21 ; set units to mm
M203 X100 Y100 Z10 E0 ; set speed limits (mm/s)
M201 X1000 Y1000 Z200 E0 ; set acceleration limits (mm/s�)
M205 X8 Y8 Z0.5 E0 ; set jerk limits (mm/s)
G28 W ; home all axes
G90 ; use absolute coordinates
G1 F2000 ; set speed (mm/min)
G1 Z24 ; hover marker

G1 X39.5 Y81.15
G1 Z22.5
G1 X42.83333 Y81.15
G2 X46.16667 Y77.81667 I0 J-3.33333
G1 X46.16667 Y67.81667
G1 X42.83333 Y67.81667
G2 X39.5 Y71.15 I0 J3.33333
G1 X39.5 Y81.15
G1 Z24
G1 X55.83333 Y74.48333
G1 Z22.5
G1 X52.5 Y74.48333
G3 X49.16667 Y71.15 I0 J-3.33333
G3 X52.5 Y67.81667 I3.33333 J0
G1 X55.83333 Y67.81667
G1 Z24
G1 X65.5 Y74.48333
G1 Z22.5
G1 X62.16667 Y74.48333
G3 X58.83333 Y71.15 I0 J-3.33333
G3 X62.16667 Y67.81667 I3.33333 J0
G1 X65.5 Y67.81667
G1 Z24
G1 X68.5 Y74.48333
G1 Z22.5
G1 X68.5 Y71.15
G3 X71.83333 Y67.81667 I3.33333 J0
G1 X75.16667 Y67.81667
G1 X75.16667 Y74.48333
G1 Z24
G1 X78.16667 Y67.81667
G1 Z22.5
G1 X81.5 Y67.81667
G3 X84.83333 Y71.15 I0 J3.33333
G3 X81.5 Y74.48333 I-3.33333 J0
G1 X78.16667 Y74.48333
G1 X78.16667 Y61.15
G1 Z24
G1 X87.83333 Y67.81667
G1 Z22.5
G1 X87.83333 Y74.48333
G1 Z24
G1 X87.83333 Y77.81667
G1 Z22.5
G1 Z24
G1 X90.83333 Y71.15
G1 Z22.5
G1 X94.16667 Y71.15
G1 X97.5 Y71.15
G3 X94.16667 Y74.48333 I-3.33333 J0
G3 X90.83333 Y71.15 I0 J-3.33333
G3 X94.16667 Y67.81667 I3.33333 J0
G1 X97.5 Y67.81667
G1 Z24
G1 X107.16667 Y81.15
G1 Z22.5
G1 X107.16667 Y67.81667
G1 X103.83333 Y67.81667
G2 X100.5 Y71.15 I0 J3.33333
G2 X103.83333 Y74.48333 I3.33333 J0
G1 X107.16667 Y74.48333
G1 Z24
G1 X116.5 Y67.81667
G1 Z22.5
G1 X116.5 Y74.48333
G1 Z24
G1 X116.5 Y77.81667
G1 Z22.5
G1 Z24
G1 X119.5 Y67.81667
G1 Z22.5
G1 X119.5 Y77.81667
G2 X122.83333 Y81.15 I3.33333 J0
G1 Z24
G1 X119.5 Y74.48333
G1 Z22.5
G1 X122.83333 Y74.48333
G1 Z24
G1 X138.83333 Y81.15
G1 Z22.5
G1 X138.83333 Y67.81667
G1 X135.5 Y67.81667
G2 X132.16667 Y71.15 I0 J3.33333
G2 X135.5 Y74.48333 I3.33333 J0
G1 X138.83333 Y74.48333
G1 Z24
G1 X141.83333 Y71.15
G1 Z22.5
G3 X145.16667 Y67.81667 I3.33333 J0
G3 X148.5 Y71.15 I0 J3.33333
G3 X145.16667 Y74.48333 I-3.33333 J0
G3 X141.83333 Y71.15 I0 J-3.33333
G1 Z24
G1 X151.5 Y71.15
G1 Z22.5
G3 X154.83333 Y67.81667 I3.33333 J0
G3 X158.16667 Y71.15 I0 J3.33333
G3 X154.83333 Y74.48333 I-3.33333 J0
G3 X151.5 Y71.15 I0 J-3.33333
G1 Z24
G1 X161.16667 Y74.48333
G1 Z22.5
G1 X161.16667 Y67.81667
G1 Z24
G1 X161.16667 Y71.15
G1 Z22.5
G2 X164.5 Y74.48333 I3.33333 J0
G1 X167.83333 Y74.48333
G1 Z24
G1 X177.16667 Y67.81667
G1 Z22.5
G1 X177.16667 Y74.48333
G1 Z24
G1 X177.16667 Y77.81667
G1 Z22.5
G1 Z24
G1 X186.83333 Y74.48333
G1 Z22.5
G1 X183.5 Y74.48333
G3 X180.16667 Y71.15 I0 J-3.33333
G1 X186.83333 Y71.15
G2 X183.5 Y67.81667 I-3.33333 J0
G1 X180.16667 Y67.81667
G1 Z24
G1 X202.83333 Y74.48333
G1 Z22.5
G1 X199.5 Y74.48333
G3 X196.16667 Y71.15 I0 J-3.33333
G3 X199.5 Y67.81667 I3.33333 J0
G1 X202.83333 Y67.81667
G1 Z24
G1 X205.83333 Y81.15
G1 Z22.5
G1 X205.83333 Y67.81667
G1 Z24
G1 X208.83333 Y71.15
G1 Z22.5
G3 X212.16667 Y67.81667 I3.33333 J0
G3 X215.5 Y71.15 I0 J3.33333
G3 X212.16667 Y74.48333 I-3.33333 J0
G3 X208.83333 Y71.15 I0 J-3.33333
G1 Z24
G1 X225.16667 Y74.48333
G1 Z22.5
G1 X221.83333 Y74.48333
G3 X218.5 Y71.15 I0 J-3.33333
G1 X225.16667 Y71.15
G2 X221.83333 Y67.81667 I-3.33333 J0
G1 X218.5 Y67.81667
G1 Z24
G1 X228.16667 Y71.15
G1 Z22.5
G1 X231.5 Y71.15
G1 X234.83333 Y71.15
G3 X231.5 Y74.48333 I-3.33333 J0
G3 X228.16667 Y71.15 I0 J-3.33333
G3 X231.5 Y67.81667 I3.33333 J0
G1 X234.83333 Y67.81667
G1 Z24
G1 X244.5 Y81.15
G1 Z22.5
G1 X244.5 Y67.81667
G1 X241.16667 Y67.81667
G2 X237.83333 Y71.15 I0 J3.33333
G2 X241.16667 Y74.48333 I3.33333 J0
G1 X244.5 Y74.48333
G1 Z24

G1 X0 Y100 Z55 ; park aside
M84 ; disable motors