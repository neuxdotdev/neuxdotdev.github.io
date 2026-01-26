# =========================
# Makefile Docsify + TypeScript
# =========================

# Directories
SRC_DIR = scripts/src
DIST_DIR = scripts/dist
DOCS_DIR = docs

# Default target
.PHONY: all
all: build

# =========================
# Compile TypeScript
# =========================
.PHONY: build
build:
	npx tsc

# =========================
# Serve Docsify
# =========================
.PHONY: serve
serve:
	npx docsify serve $(DOCS_DIR)

# =========================
# Clean dist
# =========================
.PHONY: clean
clean:
	rm -rf $(DIST_DIR)/*

# =========================
# Build + serve
# =========================
.PHONY: run
run: build serve
