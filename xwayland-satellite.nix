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

  cargoSha256 = "sha256-XizbD9AsRz0DiGyt08E00Ae27/2NV35PdhoV2blQBJg=";

  postInstall = ''
    wrapProgram $out/bin/xwayland-satellite \
      --prefix PATH : "${lib.makeBinPath [
        xwayland
        xorg.xcbutil
        xcb-util-cursor
      ]}"
  '';
}
