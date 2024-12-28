# FagFlag

A Python package to generate pride flags in bitmap (PNG) or vector (SVG) formats. Supports a variety of pride flag color schemes and allows generating flags in customizable sizes with the option to overlay PNG images.

## Features

- **Generate Bitmap Flags (PNG)**: Create pride flags in bitmap format with customizable sizes and optional PNG overlay.
- **Generate Vector Flags (SVG)**: Generate pride flags in SVG format with a fixed aspect ratio.
- **Color Schemes**: Includes several popular pride flag color schemes (e.g., Transgender, Gay, Bi, Nonbinary).
- **Output Flexibility**: Supports generating flags in either "bitmap" (PNG) or "vector" (SVG) formats.
- **Customizable Sizes**: Bitmap flags can be generated in different sizes with user-defined width and height.
- **Overlay PNG**: Option to overlay a PNG image (resized to fit the flag) on the generated bitmap flags.

## Installation

To install the package, use pip:

```bash
pip install fagflag
```

Alternatively, you can clone the repository and install it locally:

```bash
git clone https://github.com/Red-Panda-Studios/fagflag
cd fagflag
pip install .
```

## Usage

### Importing the Package

```python
from fagflag import generate_flags
```

### Generating Flags

You can generate flags by specifying the flag names, output format, sizes, output directory, and optionally, a PNG overlay image.

```python
from fagflag import generate_flags

# Example usage: Generate pride flags
flags = ["trans", "gay", "bi"]
output_format = "bitmap"  # Can be "bitmap" or "vector"
sizes = ["100", "200", "300"]  # For bitmap flags, or use "svg" for vector flags
output_dir = "./generated_flags"
overlay_path = "./overlay_image.png"  # Optional overlay image path

generate_flags(flags, output_format, sizes, output_dir, overlay_path)
```

### Available Pride Flags

- **Transgender Pride**: `"trans"`
- **Gay Pride**: `"gay"`
- **Bisexual Pride**: `"bi"`
- **Nonbinary Pride**: `"nonbinary"`

You can easily extend the `PRIDE_FLAGS` dictionary with more flags.

### Bitmap Flags

Bitmap flags are generated in PNG format. The `sizes` argument is a list of integers (e.g., `["100", "200", "300"]`) that specify the sizes of the generated images. The images will be saved in the output directory with filenames like `flag_name_widthxheight.png`. You can also pass an optional PNG image to overlay on the flag (the image will be resized to match the flag's size).

### Vector Flags

Vector flags are generated in SVG format with a fixed height of 100 units and a 2:1 aspect ratio. To generate vector flags, pass `"svg"` in the `sizes` argument.

### Overlaying PNG

You can optionally provide a PNG image to overlay on the bitmap flags. The image will be resized to fit the width and height of the generated flag. For example:

```python
overlay_path = "./overlay_image.png"  # Optional PNG overlay image path
```

## Contributing

Contributions are welcome! Feel free to submit issues or pull requests.

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit your changes (`git commit -am 'Add new feature'`).
5. Push to the branch (`git push origin feature-branch`).
6. Create a new Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.