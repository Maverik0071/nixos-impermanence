{
  preservation = {
    enable = true;

    preserveAt."/persistent" = {
      directories = [
        "/etc/nixos"
        "/etc/NetworkManager/system-connections"
        "/var/lib/systemd/timers"
        "/var/lib/bluetooth"
        "/var/lib/nixos"
        "/var/log"
        "/tmp"
        {
          directory = "/var/lib/nixos";
          inInitrd = true;
        }
      ];

      files = [
        {
          file = "/etc/machine-id";
          inInitrd = true;
        }
      ];

      # Preserve user files
      # users.densetsu = {
      #   directories = [
      #     ".ssh"
      #     ".mozilla"
      #   ];
      #
      #   files = [
      #
      #   ];
      # };
    };
  };
}
