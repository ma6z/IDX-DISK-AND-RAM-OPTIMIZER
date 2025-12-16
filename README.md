IDX Disk and RAM Optimizer

⚠️ WARNING
These commands permanently delete files and stop processes.
Use only if you understand the impact.

PRE-RUN (Workspace)
- cd ~
- ls
- rm -rf flutter
- rm -rf myapp

DISK OPTIMIZATION
- rm -rf ~/.gradle   (Workspace)
- rm -rf .emu        (VM only)

RAM OPTIMIZATION
- pkill -f nixd
- pkill -f extensionHost

Custom optimized dev.nix available in the repo.

Credits: ZenxSpyke  
Permission required for redistribution.  
Discord: zenxspyke
