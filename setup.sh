#!/bin/bash
# Setup script for AP CSP Assessment Tool
# Run with: source setup.sh

echo "=== AP CSP Assessment Tool Setup ==="
echo

# Install Python dependencies
echo "Installing dependencies..."
pip install anthropic rich python-dotenv --quiet
echo "Dependencies installed."
echo

# Prompt for API key
read -p "Enter your ANTHROPIC_API_KEY: " api_key

if [ -z "$api_key" ]; then
    echo "Error: API key cannot be empty."
    return 1 2>/dev/null || exit 1
fi

# Write .env file
echo "ANTHROPIC_API_KEY=$api_key" > ~/aiAssessment/.env
echo "API key saved."

# Make assess executable
chmod +x ~/aiAssessment/assess

# Add to PATH if not already there
if ! grep -q 'aiAssessment' ~/.bashrc 2>/dev/null; then
    echo 'export PATH="$HOME/aiAssessment:$PATH"' >> ~/.bashrc
    echo "Added aiAssessment to PATH."
fi

# Apply to current session
export PATH="$HOME/aiAssessment:$PATH"

echo
echo "=== Setup complete! ==="
echo "You can now use 'assess' from any directory."
echo "Example: assess mario.py \"Your Name\""
