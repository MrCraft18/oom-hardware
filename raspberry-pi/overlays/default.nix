{...}: {
  imports = [
    ./dtb-audremap.nix
    ./dtb-cpu-revision.nix
    ./dtb-cpi-disable-pcie.nix
    ./dtb-cpi-disable-genet.nix
    ./dtb-cpi-uconsole.nix
    ./dtb-cpi-pmu.nix
    ./dtb-cpi-i2c1.nix
    ./dtb-cpi-bluetooth.nix
    ./dtb-vc4-kms-v3d.nix
    ./dtb-vc4-fkms-v3d.nix
    ./dtb-cpi-spi4.nix
    ./dtb-rpi4-disable-pwrled.nix
    ./dtb-spi-gpio40-45.nix
    ./dtb-i2c-rtc.nix
  ];
}
