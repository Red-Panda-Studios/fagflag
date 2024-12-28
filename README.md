

# FagFlag

A Python package to generate pride flags in bitmap (PNG) or vector (SVG) formats. Supports a variety of pride flag color schemes and allows generating flags in customizable sizes.

## Features

- **Generate Bitmap Flags (PNG)**: Create pride flags in bitmap format with customizable sizes.
- **Generate Vector Flags (SVG)**: Generate pride flags in SVG format with a fixed aspect ratio.
- **Color Schemes**: Includes several popular pride flag color schemes (e.g., Transgender, Gay, Bi, Nonbinary).
- **Output Flexibility**: Supports generating flags in either "bitmap" (PNG) or "vector" (SVG) formats.
- **Customizable Sizes**: Bitmap flags can be generated in different sizes.

## Installation

To install the package, use pip:

```bash
pip install pride-flag-generator
```

Alternatively, you can clone the repository and install it locally:

```bash
git clone https://github.com/your-username/pride-flag-generator.git
cd pride-flag-generator
pip install .
```

## Usage

### Importing the Package

```python
from pride_flag_generator import generate_flags
```

### Generating Flags

You can generate flags by specifying the flag names, output format, sizes, and output directory.

```python
from pride_flag_generator import generate_flags

# Example usage: Generate pride flags
flags = ["trans", "gay", "bi"]
output_format = "bitmap"  # Can be "bitmap" or "vector"
sizes = ["100", "200", "300"]  # For bitmap flags, or use "svg" for vector flags
output_dir = "./generated_flags"

generate_flags(flags, output_format, sizes, output_dir)
```

### Available Pride Flags

- **Transgender Pride**: `"trans"`
- **Gay Pride**: `"gay"`
- **Bisexual Pride**: `"bi"`
- **Nonbinary Pride**: `"nonbinary"`

You can easily extend the `PRIDE_FLAGS` dictionary with more flags.

### Bitmap Flags

Bitmap flags are generated in PNG format. The `sizes` argument is a list of integers (e.g., `["100", "200", "300"]`) that specify the sizes of the generated images. The images will be saved in the output directory with filenames like `flag_name_size.png`.

### Vector Flags

Vector flags are generated in SVG format with a fixed height of 100 units and a 2:1 aspect ratio. To generate vector flags, pass `"svg"` in the `sizes` argument.

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