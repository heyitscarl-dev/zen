#!/usr/bin/env fish

echo "[*] Updating submodules..."
git submodule update --init --recursive

echo "[*] Loading modules from modules.txt..."
set modules (string split \n (cat modules.txt))

echo "[*] Restowing modules..."
for module in $modules
    echo " → Stowing $module"
    stow --restow --ignore='.git|README.md|LICENSE' $module
end

echo "[✓] All done."

