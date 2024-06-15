{ rustPlatform
, fetchFromGitHub
}: 

rustPlatform.buildRustPackage rec {
  pname = "xwayland-satellite";
  version = "dirty";

  src = fetchFromGitHub {
    owner = "Supreeeme";
    repo = "xwayland-satellite";
    rev = version;
    sha256 = "";
  };

  cargoSha256 = "";
}
