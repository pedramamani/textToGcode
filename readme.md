# TextToGcode
Generate G-Code from text and plot it on a 3D printer. Originally configured for a Prusa MK3S+.

## Steps
* Run [font.py](src/font.py) to generate the font configuration.
* Adjust layout parameters in [layout.py](src/layout.py). Absolute measurements are in mm and the rest are relative to  `fontSize`. The tape is applied to the print bed along the x-axis so that its lower-left corner is at the origin.
    * `tapeWidth`
    * `tapeLength`: Adjust this to avoid printhead collision with the x-axis end.
    * `fontSize`: The height of the bounding box containing all character paths, marker width not included.
    * `lineCount`
    * `lineSpacing`
    * `letterSpacing`
    * `padding`
* Run [layout.py](src/layout.py) to generate the layout configuration.
* Once you have mounted the marker to your printhead, adjust the parameters in [gcode.py](src/gcode.py) accordingly.
    * `origin`: The (x-coordinate, y-coordinate) when marker is at the origin.
    * `zHover`: The z-coordinate when marker is hovering.
    * `zPlot`: The z-coordinate when marker is plotting.
* In [gcode.py](src/gcode.py), run `saveGcode("Your desired text")` to generate the G-Code under [assets](src/assets). You will get an `AssertionError` if the text does not fit with the given layout parameters.
* Create a `.env` file in the project directory and input your OctoPrint API key as `apiKey=YOUR_API_KEY`.
* Update `octoPrintUrl` in [print.py](src/print.py) to match your OctoPrint instance.
* Run `printFile(assetsPath / "Your file name.gcode")` in [print.py](src/print.py) to upload and print.

## Execution Order
* [config.py](src/config.py)
* [font.py](src/font.py)
* [layout.py](src/layout.py)
* [gcode.py](src/gcode.py)
* [print.py](src/print.py)
