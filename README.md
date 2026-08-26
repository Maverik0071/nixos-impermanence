A nixos impermanance from VIMJOYER

# add this after you put everything in the files

$ sudo nix --extra-experimental-features "nix-command flakes" \
  run 'github:nix-community/disko/latest#disko-install' -- \
  --flake .#nixos \
  --disk main /dev/vda \
