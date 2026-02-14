# Deedy Resume Template

This directory is reserved for the Deedy Resume template.

## Setup Instructions

1. **Download the template**:
   ```bash
   cd templates/deedy
   wget https://raw.githubusercontent.com/deedy/Deedy-Resume/master/deedy-resume-openfont.cls
   ```

2. **Create resume.tex**:
   - Copy structure from `templates/awesome-cv/resume.tex`
   - Adapt to Deedy template syntax
   - Reference: https://github.com/deedy/Deedy-Resume

3. **Create content sections**:
   ```bash
   mkdir -p sections
   ```
   - Adapt your content from `templates/awesome-cv/sections/resume/` to Deedy syntax

4. **Update Makefile**:
   - Edit root `Makefile` to uncomment/update deedy target
   - Add compilation command for Deedy template

5. **Test build**:
   ```bash
   make deedy
   ```

## Deedy Template Features

- **Style**: Modern, colorful, single-page design
- **Best for**:
  - Early career professionals
  - Tech industry
  - Startups
- **Sections**:
  - Header with large name
  - Education
  - Experience
  - Projects
  - Skills

## Notes

- Deedy template is designed for 1-page resumes
- May need to condense content from Awesome-CV version
- Different syntax for sections - requires content adaptation

## Resources

- Original Template: https://github.com/deedy/Deedy-Resume
- Overleaf Example: https://www.overleaf.com/latex/templates/deedy-cv/bjryvfsjdyxz
