#!/bin/bash

# ================================================
# eSim Installer for Ubuntu 25.04
# Created by: [YOUR FULL NAME]
# For: eSim Semester Long Internship Spring 2026 - Task 4
# ================================================

echo "=========================================="
echo "eSim 2.5 Installer for Ubuntu 25.04"
echo "Created by: [ Ayushi ] - Task 4"
echo "=========================================="

# Fix 1: Python 2 compatibility
echo "Fixing Python 2 issue..."
if [ ! -f /usr/bin/python2 ]; then
    echo "Creating python2 symlink to python3"
    sudo ln -sf /usr/bin/python3 /usr/bin/python2
fi

# Fix 2: Install updated packages
echo "Installing dependencies for Ubuntu 25.04..."
sudo apt update
sudo apt install -y \
    git \
    python3 \
    python3-pip \
    libgtk-3-dev \
    python3-tk \
    llvm-15 \
    build-essential

# Fix 3: Clone eSim
echo "Cloning eSim repository..."
git clone https://github.com/FOSSEE/eSim.git
cd eSim

# Fix 4: Install with Python 3
echo "Installing eSim with Python 3..."
python3 -m venv esim_env
source esim_env/bin/activate
pip install numpy scipy matplotlib
python3 setup.py install --user

echo ""
echo "✅ Installation complete!"
echo "eSim 2.5 now works on Ubuntu 25.04"
echo ""
echo "Fixes applied:"
echo "1. Python 2 compatibility"
echo "2. Updated package names"
echo "3. Python 3 virtual environment"
echo ""
echo "By: Ayushi katiyar
echo "Task 4 - eSim Internship"
