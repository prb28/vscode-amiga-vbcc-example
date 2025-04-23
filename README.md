# Example project for Amiga visual studio code vbcc project
Example of vscode workspace for Amiga Assembly and C integration building.

# !!Work in progress !!

## Getting started
### Copy or clone this workspace
- Unzip it

### Setup VSCode
- Launch VSCode
- Install the *Amiga Assembly Extension* extension
- Install Microsoft C/C++ extension (optional)

### Build the code
- Type (⇧⌘B or Ctrl⇧B) or enter the Command Palette (⇧⌘P or F1) and select `Tasks: Run Build Task`)

### Run the application
- Click on the debug icon (⇧⌘D or Ctrl⇧D)
- In the upper combo select **WinUAE Launch** (Windows only) or **FS-UAE Launch**
- Click on the ▷ (Play) button or type F5

### Debug the application
- Click on the debug icon (⇧⌘D or Ctrl⇧D)
- In the upper combo select **WinUAE Debug** (Windows only) or **FS-UAE Debug**
- Open a C or ASM file and set a breakpoint
- Click on the ▷ (Play) button or type F5

## Adapting to your application
### Change the name of the application
- Change the name `hello` in the Makefile

### Add/remove/rename a file to the build
- Each modification of a source file add/rename/remove must reported in the **Makefile**
