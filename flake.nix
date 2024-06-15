{
  outputs = {self}: {
    overlays.default = final: prev: {
      xwayland-satellite = prev.callPackage ./xwayland-satellite.nix { };
    };
  };
}
