#import "../../presets.typ": *

= Course Intro
#line(length: 100%, stroke: 2pt)

*C language* is a high-level language close to assembly.
- Exposes how data is organized in a linear address space.
- *Pointers* demonstrate how variables represent locations in memory.
- Shows system calls provided by the OS.

*Assembly language* shows what hardware can do:
- Instructions processors can execute.
- How function calls work.
- How input/output devices are accessed.

*UNIX operating system*
- Shows how threads, processes, pipes, etc are building blocks for servers and high-performance applications.
- We will use a variant of UNIX called *Linux*.



== Linux Shell Commands
*Flags* are extra options for commands. They are generally denoted by a dash.

The following commands are the _essentials_ for writing and executing C programs.
+ ``` pwd``` displays the current direction. Forward slashes separate directories and files.
+ ``` ls``` displays all files and directories in the current directory.
  + ``` ls -al``` will also include hidden directories and files.
  + ``` ls -F``` will append specific characters to items' names depending. Particularly, directories are marked with a forward slash.
+ ``` cd ``` changes the directory to the home directory.
  + ``` cd DIRECTORY_NAME``` changes the directory to the specified directory.
  + ``` cd ~``` makes the current directory the home directory.
+ ``` mkdir``` creates a new directory in the current directory.
+ ``` cp FILE_1 FILE_2``` will create a new file using the data of the first file.
+ ``` rm FILE``` permanently removes the specified file.
+ ``` mv``` moves files/directories to a directory or renames files/directories.
  + ``` mv FILE_1 FILE_2``` renames the first file to ``` FILE_2```.
  + ``` mv FILE DIRECTORY``` moves the file into the specified directory.
  + ``` mv DIRECTORY_1 DIRECTORY_2``` renames the first directory to ``` DIRECTORY_2 ``` if the second directory doesn't exist. Otherwise, the first directory is moved to the second directory.
+ ``` rm DIRECTORY``` removes the specified _empty_ directory.
  + ``` rm -f -r DIRECTORY``` removes the specified directory, _even if it is non-empty._