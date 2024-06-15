{ rustPlatform
, fetchFromGitHub
}: 

rustPlatform.buildRustPackage rec {
  pname = "xwayland-satellite";
  version = "v0.4";

  src = fetchFromGitHub {
    owner = "Supreeeme";
    repo = "xwayland-satellite";
    rev = version;
    sha256 = "";
  };

  cargoSha256 = "";
}
