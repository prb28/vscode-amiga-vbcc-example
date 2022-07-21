# Example project for Amiga visual studio code vbcc project
Example of vscode workspace for Amiga Assembly and C integration building.

# !!Work in progress !!

## Getting started
### Download the workspace
- Download the latest [Example vbcc workspace bundle](https://github.com/prb28/vscode-amiga-vbcc-example/releases) zip file **FOR YOUR OS**
- Unzip it

### Setup VSCode
- Launch VSCode
- Install the *Amiga Assembly Extension* extension
- Install Microsoft C/C++ extension (optional)
- Open the workspace **File/Open Workspace...** -> Select the `vbcc`(.code-workspace)

### Build the code
- Type (⇧⌘B) or enter the Command Palette (⇧⌘P or F1) and select `Tasks: Run Build Task`)

### Run the application
- Click on the debug icon (⇧⌘D)
- In the upper combo select **Run**
- Click on the *Play* button or type F5

### Debug the application
- Click on the debug icon (⇧⌘D)
- In the upper combo select **Debug**
- Open a C or ASM file and set a breakpoint
- Click on the *Play* button or type F5

## Adapting to your application
### Change the name of the application
- Change the name `hello` of the executable in `vbcc.code-workspace`
- Change the name `hello` in the Makefile

### Add/remove/rename a file to the build
- Each modification of a source file add/rename/remove must reported in the **Makefile**

## Binaries used to build the code
- Build [VASM](http://sun.hasenbraten.de/vasm/index.php?view=main)
- Build [VLINK](http://sun.hasenbraten.de/vlink/index.php?view=main)
- Build [VBCC](http://sun.hasenbraten.de/vlink/index.php?view=main)
- Build a modified version of [FS-UAE](https://github.com/prb28/fs-uae)
- Build a modified version of [WinUAE](https://github.com/prb28/WinUAE)
- Download/Build [CAPSTONE](http://www.capstone-engine.org/download.html)
- [Make.exe for windows](https://sourceforge.net/projects/gnuwin32/)

The bundle containing these binaries is maintained in [vscode-amiga-assembly-binaries](https://github.com/prb28/vscode-amiga-assembly-binaries) repository.

## Misc docs
- Blitter Studio Guide: https://blitterstudio.com/setting-up-an-amiga-cross-compiler-windows/
