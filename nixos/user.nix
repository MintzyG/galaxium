{ pkgs, ... }: 

{
  users.users.sophia = {
    isNormalUser = true;
    description = "Sophia";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" ];
    # packages = with pkgs; [];
    shell = pkgs.zsh;
  };

  time.timeZone = "America/Sao_Paulo";
  i18n = {
    defaultLocale = "pt_BR.UTF-8";
    extraLocaleSettings = {
      LC_ADDRESS = "pt_BR.UTF-8";
      LC_IDENTIFICATION = "pt_BR.UTF-8";
      LC_MEASUREMENT = "pt_BR.UTF-8";
      LC_MONETARY = "pt_BR.UTF-8";
      LC_NAME = "pt_BR.UTF-8";
      LC_NUMERIC = "pt_BR.UTF-8";
      LC_PAPER = "pt_BR.UTF-8";
      LC_TELEPHONE = "pt_BR.UTF-8";
      LC_TIME = "pt_BR.UTF-8";
    };
  };

  services.xserver = {
    xkb = {
      layout = "br";
      variant = "";
    };
  };

  console.keyMap = "br-abnt2";
}
