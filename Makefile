.PHONY: help lint test clean setup

help:
	@echo "Available targets:"
	@echo "  make setup     - Install dependencies"
	@echo "  make lint      - Run ShellCheck on all scripts"
	@echo "  make test      - Run test scripts"
	@echo "  make clean     - Remove temporary files and logs"

setup:
	@command -v shellcheck >/dev/null 2>&1 || { echo "Installing ShellCheck..."; brew install shellcheck; }
	@echo "Setup complete!"

lint:
	@echo "Running ShellCheck..."
	@find . -type f \( -name "*.sh" -o -name "*.bash" \) ! -path "./.git/*" -exec shellcheck {} +
	@echo "Lint complete!"

test:
	@echo "Running tests..."
	@if [ -d tests ] && [ -n "$$(find tests -name '*.sh' -o -name '*.bash')" ]; then \
		for test_file in tests/*.sh tests/*.bash; do \
			[ -f "$$test_file" ] && bash "$$test_file" || true; \
		done; \
	else \
		echo "No test files found"; \
	fi

clean:
	@echo "Cleaning up..."
	@find . -type f -name "*.log" -delete
	@rm -rf tmp/ temp/ .tmp/ coverage/
	@echo "Clean complete!"
