# Master Makefile for Resume - Multi-Template Support
# Supports building resume with different LaTeX templates

# Variables
OUTPUT_DIR = output
AWESOME_CV_DIR = templates/awesome-cv
DEEDY_DIR = templates/deedy

# Docker command for LaTeX compilation
DOCKER_IMAGE = texlive/texlive:latest
DOCKER_CMD = docker run --rm -v "//c/Users/Arsla/OneDrive/Documents/Resume:/workspace" -w //workspace

# Default target: build all resumes
.PHONY: all
all: awesome-cv deedy

# Build Awesome-CV template (both resume and CV)
.PHONY: awesome-cv
awesome-cv: awesome-cv-resume awesome-cv-cv

# Build Awesome-CV resume (2-page)
.PHONY: awesome-cv-resume
awesome-cv-resume:
	@echo "Building Awesome-CV Resume..."
	$(DOCKER_CMD) $(DOCKER_IMAGE) bash -c "cd $(AWESOME_CV_DIR) && xelatex -interaction=nonstopmode resume.tex"
	@mkdir -p $(OUTPUT_DIR)
	@cp $(AWESOME_CV_DIR)/resume.pdf $(OUTPUT_DIR)/resume-awesome-cv.pdf
	@echo "Awesome-CV Resume built: $(OUTPUT_DIR)/resume-awesome-cv.pdf"

# Build Awesome-CV CV (4-page detailed)
.PHONY: awesome-cv-cv
awesome-cv-cv:
	@echo "Building Awesome-CV CV..."
	$(DOCKER_CMD) $(DOCKER_IMAGE) bash -c "cd $(AWESOME_CV_DIR) && xelatex -interaction=nonstopmode cv.tex"
	@mkdir -p $(OUTPUT_DIR)
	@cp $(AWESOME_CV_DIR)/cv.pdf $(OUTPUT_DIR)/cv-awesome-cv.pdf
	@echo "Awesome-CV CV built: $(OUTPUT_DIR)/cv-awesome-cv.pdf"

# Build Deedy template resume (1-page)
.PHONY: deedy
deedy:
	@echo "Building Deedy Resume..."
	$(DOCKER_CMD) $(DOCKER_IMAGE) bash -c "cd $(DEEDY_DIR) && xelatex -interaction=nonstopmode resume.tex"
	@mkdir -p $(OUTPUT_DIR)
	@cp $(DEEDY_DIR)/resume.pdf $(OUTPUT_DIR)/resume-deedy.pdf
	@echo "Deedy Resume built: $(OUTPUT_DIR)/resume-deedy.pdf"

# Clean auxiliary files from all templates
.PHONY: clean
clean:
	@echo "Cleaning auxiliary files..."
	@find $(AWESOME_CV_DIR) $(DEEDY_DIR) -name "*.aux" -o -name "*.log" -o -name "*.out" -o -name "*.fls" -o -name "*.fdb_latexmk" -o -name "*.synctex.gz" | xargs rm -f 2>/dev/null || true
	@echo "Clean complete"

# Clean everything including PDFs
.PHONY: clean-all
clean-all: clean
	@echo "Removing all generated PDFs..."
	@rm -rf $(OUTPUT_DIR)
	@rm -f $(AWESOME_CV_DIR)/*.pdf $(DEEDY_DIR)/*.pdf
	@echo "All files cleaned"

# Rebuild everything
.PHONY: rebuild
rebuild: clean-all all

# Help target
.PHONY: help
help:
	@echo "Resume Multi-Template Makefile Commands:"
	@echo ""
	@echo "  make                    - Build all templates (awesome-cv + deedy)"
	@echo "  make awesome-cv         - Build both Awesome-CV resume and CV"
	@echo "  make awesome-cv-resume  - Build Awesome-CV resume only (2 pages)"
	@echo "  make awesome-cv-cv      - Build Awesome-CV CV only (4 pages)"
	@echo "  make deedy              - Build Deedy template resume (1 page)"
	@echo "  make clean              - Remove auxiliary LaTeX files"
	@echo "  make clean-all          - Remove all generated files including PDFs"
	@echo "  make rebuild            - Clean and rebuild everything"
	@echo "  make help               - Show this help message"
	@echo ""
	@echo "Output files are generated in: $(OUTPUT_DIR)/"
