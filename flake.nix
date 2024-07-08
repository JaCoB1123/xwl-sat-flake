{
  inputs = {
    xwl-satellite-src = {
      url = "github:Supreeeme/xwayland-satellite";
      flake = false;
    };
  };

  outputs = { xwl-satellite-src, ... }: {
    overlays.default = final: prev: {
      xwayland-satellite = prev.callPackage ./xwayland-satellite.nix { xwl-satellite-src = xwl-satellite-src; };
    };
  };
}
