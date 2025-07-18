with import <nixpkgs> { };

let
  PROJECT_ROOT = builtins.toString ./.;
in
mkShell {
  name = "ACM IaC";
  packages = [
    # terraform # Will compile from source.
    ansible
    kubectl
  ];

  KUBECONFIG = "${PROJECT_ROOT}/k8s-kubeconfig";
}
