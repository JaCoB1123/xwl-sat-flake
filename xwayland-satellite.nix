{ lib
, rustPlatform
, pkg-config
, xcb-util-cursor
, xorg
, xwayland
, xwl-satellite-src
}: 

rustPlatform.buildRustPackage {
  pname = "xwayland-satellite";
  version = "dirty";

  src = xwl-satellite-src;

  nativeBuildInputs = [
    pkg-config
    rustPlatform.bindgenHook
  ];

  buildInputs = [
    xcb-util-cursor
    xorg.xcbutil
    xwayland
  ];

  cargoSha256 = "sha256-Nh5ssclAqZFOBDJtEjBRs2z1l/FIVZgvBr1lxjoVjG4=";

  postInstall = ''
    wrapProgram $out/bin/xwayland-satellite \
      --prefix PATH : "${lib.makeBinPath [
        xwayland
        xorg.xcbutil
        xcb-util-cursor
      ]}"
  '';
}
