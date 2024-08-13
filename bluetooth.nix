{ config, pkgs, ... }:

{
# Basic system configuration
  sound.enable = true;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  services.pipewire.wireplumber.extraConfig.bluetoothEnhancements = {
    "monitor.bluez.properties" = {
        "bluez5.enable-sbc-xq" = true;
        "bluez5.enable-msbc" = true;
        "bluez5.enable-hw-volume" = true;
        "bluez5.roles" = [ "a2dp_sink" "a2dp_source" ];
        "bluez5.auto-connect" = [ "a2dp_sink" ];
        "bluez5.device.profile" = [ "a2dp_sink" ] ;
    };
  };

  services.pipewire.extraConfig.pipewire."11-bluetooth-policy" = {
    wireplumber.settings = {
      bluetooth.autoswitch-to-headset-profile = false;
    };
  };
    
  hardware = {
    pulseaudio.enable = false;
    bluetooth.enable = true;
    bluetooth.powerOnBoot = true;
  };
}
