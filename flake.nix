{
  inputs = {
    xwl-satellite-src = {
      url = "github:Supreeeme/xwayland-satellite";
      flake = false;
    };
  };

  outputs = { ... }: {
    overlays.default = final: prev: {
      xwayland-satellite = prev.callPackage ./xwayland-satellite.nix { };
    };
  };
}
