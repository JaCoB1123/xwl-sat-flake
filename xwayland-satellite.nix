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
    sha256 = "f261e3feec27da5dcbb07db6abdaf0662d5f0db5";
  };

  cargoSha256 = "";
}
