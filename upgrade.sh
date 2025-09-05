#! /usr/bin/bash

start=$(date +%s.%N)

echo "Starting System Upgrade..."
sleep 0.8
echo
echo
echo "Begin Pacman Update(s)..."
sleep 0.5
echo
echo
sudo pacman -Syy
sudo pacman -Syu
echo
echo
echo "Finished Pacman Update(s)."
sleep 0.3
echo
echo
echo "Begin AUR Update(s)..."
sleep 0.5
echo
echo
yay -Sua
echo
echo
echo "finished AUR Update(s)."
sleep 0.3
echo
echo
echo "Begin Flatpak Update(s)..."
sleep 0.5
echo
echo
sudo flatpak update
echo
echo
echo "Finished Flatpak Update(s)."
sleep 0.3
echo
echo

duration=$(echo "$(date +%s.%N) - $start" | bc)
execution_time=`printf "%.2f seconds" $duration`

echo "Finished System Upgrade. Took $execution_time."



