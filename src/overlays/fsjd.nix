{
  lib,
  writers,
  fetchurl,
  python3,
}: let
  fsjd =
    writers.writePython3Bin "fsjd" {
      flakeIgnore = ["E501" "W605" "F541" "W293" "E303"];
      libraries = with python3.pkgs; [
        rich
        json-source-map
      ];
    }
    (fetchurl {
      url = "https://gist.githubusercontent.com/blaggacao/91a9f4988c7528e8c8a5513e530341ef/raw/3b8852858b92be76a6cad95b9a4542d69645d1d1/frappe_schema_json_diff.py";
      hash = "sha256-qT/YEJ4TY80Fy9nLariSoFp05TQ25j4MC4E99XMTIig=";
    });
in
  lib.lazyDerivation {
    derivation = writers.writeBashBin "fsjd" ''
      case $1 in
        --git)
            shift 1
            path="$1"
            oldfile="$2"
            oldhex="$3"
            oldmode="$4"
            newfile="$5"
            newhex="$6"
            newmode="$7"
            ;;
        *)
            path="$2"
            oldfile="$1"
            newfile="$2"
            ;;
      esac
      exec ${fsjd}/bin/fsjd $path $oldfile $newfile 0
    '';
    meta.description = "Frappe Schema JSON Differ";
  }
