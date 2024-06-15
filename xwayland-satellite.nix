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
    sha256 = "sha256-dwF9nI54a6Fo9XU5s4qmvMXSgCid3YQVGxch00qEMvI=";
  };

  cargoSha256 = "sha256-Nh5ssclAqZFOBDJtEjBRs2z1l/FIVZgvBr1lxjoVjG4=";
}
