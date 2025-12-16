{ pkgs, ... }: {
  # Stable channel recommended by IDX
  channel = "stable-24.05";

  # Packages available inside the IDX environment
  packages = with pkgs; [
    git
    unzip
    openssh
    sudo

    # QEMU + tools
    qemu
    qemu_kvm
    qemu-utils
    cloud-utils
    cdrkit

    # Flutter / Dart development
    flutter
    dart
    cmake
    ninja
    pkg-config
    llvm
    clang
    gtk3
  ];

  # Environment variables (optional)
  env = { };

  idx = {
    # Extensions from https://open-vsx.org/
    extensions = [
      "Dart-Code.flutter"
      "Dart-Code.dart-code"
      "ms-vscode.cpptools"
      "tamasfe.even-better-toml"
      "redhat.vscode-yaml"
    ];

    workspace = {
      # IDX does not allow commands here
      onCreate = { };
      onStart = { };
    };

    # Disable all previews for max performance
    previews.enable = false;
  };
}
