; No shoes in the washer or dryer please

G21 ; set units to mm
M203 X100 Y100 Z10 E0 ; set speed limits (mm/s)
M201 X1000 Y1000 Z200 E0 ; set acceleration limits (mm/s�)
M205 X8 Y8 Z0.5 E0 ; set jerk limits (mm/s)
G28 W ; home all axes
G90 ; use absolute coordinates
G1 F2000 ; set speed (mm/min)
G1 Z24 ; hover marker

G1 X39.5 Y67.81667
G1 Z22.5
G1 X39.5 Y81.15
G1 X42.83333 Y81.15
G2 X46.16667 Y77.81667 I0 J-3.33333
G1 X46.16667 Y67.81667
G1 Z24
G1 X49.16667 Y71.15
G1 Z22.5
G3 X52.5 Y67.81667 I3.33333 J0
G3 X55.83333 Y71.15 I0 J3.33333
G3 X52.5 Y74.48333 I-3.33333 J0
G3 X49.16667 Y71.15 I0 J-3.33333
G1 Z24
G1 X71.83333 Y74.48333
G1 Z22.5
G1 X68.5 Y74.48333
G3 X65.16667 Y71.15 I0 J-3.33333
G1 X71.83333 Y71.15
G2 X68.5 Y67.81667 I-3.33333 J0
G1 X65.16667 Y67.81667
G1 Z24
G1 X74.83333 Y81.15
G1 Z22.5
G1 X74.83333 Y67.81667
G1 Z24
G1 X74.83333 Y74.48333
G1 Z22.5
G1 X78.16667 Y74.48333
G2 X81.5 Y71.15 I0 J-3.33333
G1 X81.5 Y67.81667
G1 Z24
G1 X84.5 Y71.15
G1 Z22.5
G3 X87.83333 Y67.81667 I3.33333 J0
G3 X91.16667 Y71.15 I0 J3.33333
G3 X87.83333 Y74.48333 I-3.33333 J0
G3 X84.5 Y71.15 I0 J-3.33333
G1 Z24
G1 X94.16667 Y71.15
G1 Z22.5
G1 X97.5 Y71.15
G1 X100.83333 Y71.15
G3 X97.5 Y74.48333 I-3.33333 J0
G3 X94.16667 Y71.15 I0 J-3.33333
G3 X97.5 Y67.81667 I3.33333 J0
G1 X100.83333 Y67.81667
G1 Z24
G1 X110.5 Y74.48333
G1 Z22.5
G1 X107.16667 Y74.48333
G3 X103.83333 Y71.15 I0 J-3.33333
G1 X110.5 Y71.15
G2 X107.16667 Y67.81667 I-3.33333 J0
G1 X103.83333 Y67.81667
G1 Z24
G1 X119.83333 Y67.81667
G1 Z22.5
G1 X119.83333 Y74.48333
G1 Z24
G1 X119.83333 Y77.81667
G1 Z22.5
G1 Z24
G1 X122.83333 Y67.81667
G1 Z22.5
G1 X122.83333 Y74.48333
G1 X126.16667 Y74.48333
G2 X129.5 Y71.15 I0 J-3.33333
G1 X129.5 Y67.81667
G1 Z24
G1 X138.83333 Y81.15
G1 Z22.5
G1 X138.83333 Y71.15
G3 X142.16667 Y67.81667 I3.33333 J0
G1 Z24
G1 X138.83333 Y74.48333
G1 Z22.5
G1 X142.16667 Y74.48333
G1 Z24
G1 X145.16667 Y81.15
G1 Z22.5
G1 X145.16667 Y67.81667
G1 Z24
G1 X145.16667 Y74.48333
G1 Z22.5
G1 X148.5 Y74.48333
G2 X151.83333 Y71.15 I0 J-3.33333
G1 X151.83333 Y67.81667
G1 Z24
G1 X154.83333 Y71.15
G1 Z22.5
G1 X158.16667 Y71.15
G1 X161.5 Y71.15
G3 X158.16667 Y74.48333 I-3.33333 J0
G3 X154.83333 Y71.15 I0 J-3.33333
G3 X158.16667 Y67.81667 I3.33333 J0
G1 X161.5 Y67.81667
G1 Z24
G1 X170.83333 Y74.48333
G1 Z22.5
G1 X170.83333 Y71.15
G3 X174.16667 Y67.81667 I3.33333 J0
G1 X177.5 Y67.81667
G1 X177.5 Y74.48333
G1 Z24
G1 X174.16667 Y74.48333
G1 Z22.5
G1 X174.16667 Y67.81667
G1 Z24
G1 X187.16667 Y67.81667
G1 Z22.5
G1 X187.16667 Y74.48333
G1 X183.83333 Y74.48333
G3 X180.5 Y71.15 I0 J-3.33333
G3 X183.83333 Y67.81667 I3.33333 J0
G1 X187.16667 Y67.81667
G1 Z24
G1 X196.83333 Y74.48333
G1 Z22.5
G1 X193.5 Y74.48333
G3 X190.16667 Y71.15 I0 J-3.33333
G1 X196.83333 Y71.15
G2 X193.5 Y67.81667 I-3.33333 J0
G1 X190.16667 Y67.81667
G1 Z24
G1 X199.83333 Y81.15
G1 Z22.5
G1 X199.83333 Y67.81667
G1 Z24
G1 X199.83333 Y74.48333
G1 Z22.5
G1 X203.16667 Y74.48333
G2 X206.5 Y71.15 I0 J-3.33333
G1 X206.5 Y67.81667
G1 Z24
G1 X209.5 Y71.15
G1 Z22.5
G1 X212.83333 Y71.15
G1 X216.16667 Y71.15
G3 X212.83333 Y74.48333 I-3.33333 J0
G3 X209.5 Y71.15 I0 J-3.33333
G3 X212.83333 Y67.81667 I3.33333 J0
G1 X216.16667 Y67.81667
G1 Z24
G1 X219.16667 Y74.48333
G1 Z22.5
G1 X219.16667 Y67.81667
G1 Z24
G1 X219.16667 Y71.15
G1 Z22.5
G2 X222.5 Y74.48333 I3.33333 J0
G1 X225.83333 Y74.48333
G1 Z24

G1 X39.5 Y49.15
G1 Z22.5
G3 X42.83333 Y45.81667 I3.33333 J0
G3 X46.16667 Y49.15 I0 J3.33333
G3 X42.83333 Y52.48333 I-3.33333 J0
G3 X39.5 Y49.15 I0 J-3.33333
G1 Z24
G1 X49.16667 Y52.48333
G1 Z22.5
G1 X49.16667 Y45.81667
G1 Z24
G1 X49.16667 Y49.15
G1 Z22.5
G2 X52.5 Y52.48333 I3.33333 J0
G1 X55.83333 Y52.48333
G1 Z24
G1 X71.83333 Y59.15
G1 Z22.5
G1 X71.83333 Y45.81667
G1 X68.5 Y45.81667
G2 X65.16667 Y49.15 I0 J3.33333
G2 X68.5 Y52.48333 I3.33333 J0
G1 X71.83333 Y52.48333
G1 Z24
G1 X74.83333 Y52.48333
G1 Z22.5
G1 X74.83333 Y45.81667
G1 Z24
G1 X74.83333 Y49.15
G1 Z22.5
G2 X78.16667 Y52.48333 I3.33333 J0
G1 X81.5 Y52.48333
G1 Z24
G1 X84.5 Y52.48333
G1 Z22.5
G1 X84.5 Y49.15
G3 X87.83333 Y45.81667 I3.33333 J0
G1 X91.16667 Y45.81667
G1 Z24
G1 X91.16667 Y52.48333
G1 Z22.5
G1 X91.16667 Y42.48333
G2 X87.83333 Y39.15 I-3.33333 J0
G1 X84.5 Y39.15
G1 Z24
G1 X94.16667 Y49.15
G1 Z22.5
G1 X97.5 Y49.15
G1 X100.83333 Y49.15
G3 X97.5 Y52.48333 I-3.33333 J0
G3 X94.16667 Y49.15 I0 J-3.33333
G3 X97.5 Y45.81667 I3.33333 J0
G1 X100.83333 Y45.81667
G1 Z24
G1 X103.83333 Y52.48333
G1 Z22.5
G1 X103.83333 Y45.81667
G1 Z24
G1 X103.83333 Y49.15
G1 Z22.5
G2 X107.16667 Y52.48333 I3.33333 J0
G1 X110.5 Y52.48333
G1 Z24
G1 X119.83333 Y45.81667
G1 Z22.5
G1 X123.16667 Y45.81667
G3 X126.5 Y49.15 I0 J3.33333
G3 X123.16667 Y52.48333 I-3.33333 J0
G1 X119.83333 Y52.48333
G1 X119.83333 Y39.15
G1 Z24
G1 X129.5 Y59.15
G1 Z22.5
G1 X129.5 Y45.81667
G1 Z24
G1 X132.5 Y49.15
G1 Z22.5
G1 X135.83333 Y49.15
G1 X139.16667 Y49.15
G3 X135.83333 Y52.48333 I-3.33333 J0
G3 X132.5 Y49.15 I0 J-3.33333
G3 X135.83333 Y45.81667 I3.33333 J0
G1 X139.16667 Y45.81667
G1 Z24
G1 X148.83333 Y45.81667
G1 Z22.5
G1 X148.83333 Y52.48333
G1 X145.5 Y52.48333
G3 X142.16667 Y49.15 I0 J-3.33333
G3 X145.5 Y45.81667 I3.33333 J0
G1 X148.83333 Y45.81667
G1 Z24
G1 X158.5 Y52.48333
G1 Z22.5
G1 X155.16667 Y52.48333
G3 X151.83333 Y49.15 I0 J-3.33333
G1 X158.5 Y49.15
G2 X155.16667 Y45.81667 I-3.33333 J0
G1 X151.83333 Y45.81667
G1 Z24
G1 X161.5 Y49.15
G1 Z22.5
G1 X164.83333 Y49.15
G1 X168.16667 Y49.15
G3 X164.83333 Y52.48333 I-3.33333 J0
G3 X161.5 Y49.15 I0 J-3.33333
G3 X164.83333 Y45.81667 I3.33333 J0
G1 X168.16667 Y45.81667
G1 Z24

G1 X0 Y100 Z55 ; park aside
M84 ; disable motors