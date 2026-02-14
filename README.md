# Resume - Multi-Template Support

This repository contains my professional resume and CV with support for multiple LaTeX templates.

## Directory Structure

```
Resume/
├── templates/
│   ├── awesome-cv/              # Awesome-CV template (current)
│   │   ├── awesome-cv.cls      # Template class file
│   │   ├── resume.tex          # Resume main file (2 pages)
│   │   ├── cv.tex              # CV main file (4 pages detailed)
│   │   ├── Makefile            # Template-specific Makefile
│   │   └── sections/           # Content sections
│   │       ├── resume/         # Resume sections (concise)
│   │       │   ├── skills.tex
│   │       │   ├── experience.tex
│   │       │   └── education.tex
│   │       └── cv/             # CV sections (detailed)
│   │           ├── summary.tex
│   │           ├── skills.tex
│   │           ├── experience.tex
│   │           ├── education.tex
│   │           ├── aitools.tex
│   │           └── projects.tex
│   └── deedy/                   # Deedy template (to be added)
│       └── README.md            # Instructions for setting up
├── output/                      # Generated PDFs
│   ├── resume-awesome-cv.pdf
│   └── cv-awesome-cv.pdf
├── Makefile                     # Master Makefile for all templates
└── README.md                    # This file
```

## Building Your Resume

### Prerequisites
- Docker installed (for LaTeX compilation)

### Quick Start

```bash
# Build all templates (currently just Awesome-CV)
make

# Build specific template
make awesome-cv          # Both resume and CV
make awesome-cv-resume   # Resume only (2 pages)
make awesome-cv-cv       # CV only (4 pages)

# Clean up
make clean      # Remove auxiliary files
make clean-all  # Remove all generated files
make rebuild    # Clean and rebuild everything

# Get help
make help
```

### Output Files

All generated PDFs are placed in the `output/` directory:
- `output/resume-awesome-cv.pdf` - 2-page concise resume
- `output/cv-awesome-cv.pdf` - 4-page detailed CV

## Adding a New Template

To add a new template (e.g., Deedy):

1. Create template directory:
   ```bash
   mkdir -p templates/deedy/sections
   ```

2. Add template files:
   - Download the template class file (e.g., `deedy-resume.cls`)
   - Create main `.tex` file
   - Create section files adapted to the template syntax

3. Update root `Makefile`:
   - Add build target for the new template
   - Copy/adapt from existing `awesome-cv` targets

4. Build:
   ```bash
   make deedy
   ```

## Current Templates

### Awesome-CV
- **Source**: https://github.com/posquit0/Awesome-CV
- **Features**: Professional, clean design with customizable colors
- **Outputs**:
  - Resume: 2-page concise version
  - CV: 4-page detailed version with projects and AI tools

### Deedy (Planned)
- **Source**: https://github.com/deedy/Deedy-Resume
- **Status**: Not yet implemented
- **To implement**: Download template and adapt content sections

## Editing Content

### For Awesome-CV Template

**Resume (concise, 2 pages)**:
- Edit files in `templates/awesome-cv/sections/resume/`
- Each job limited to 3 bullet points
- Focus on impact and results

**CV (detailed, 4 pages)**:
- Edit files in `templates/awesome-cv/sections/cv/`
- More comprehensive descriptions (7-11 bullets per job)
- Includes side projects and AI tools section

### Personal Information

Edit in the main `.tex` files:
- `templates/awesome-cv/resume.tex` - lines 57-64
- `templates/awesome-cv/cv.tex` - lines 55-62

## Tips

1. **Keep content in sync**: When updating experience, update both resume and CV sections
2. **Template-specific syntax**: Different templates have different LaTeX syntax - content may need adaptation
3. **Test locally**: Always test builds locally before sharing
4. **Version control**: Consider using git to track changes

## Troubleshooting

### Build fails
- Check Docker is running
- Verify paths in Makefile are correct
- Check for LaTeX syntax errors in `.tex` files

### Fonts missing
- Awesome-CV uses system fonts (Roboto, Source Sans Pro)
- These are usually included in texlive
- If missing, install locally or modify template

## License

- Resume content: Personal, all rights reserved
- Awesome-CV template: CC BY-SA 4.0
- Other templates: Check individual licenses
