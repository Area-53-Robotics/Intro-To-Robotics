# Program Structure

Program organization is a critical part of programming, that is very subjective. This of course means that no one can agree on how it should be done. However, there are a few general guidelines that you should follow.


## Src Folder

The src folder typically stores all of the body file in your project. It contains the entry point of your program, the main file.


## Include Folder

The include folder stores all of the header files in your project. 

### Header File Structure

The organization of your header files typically mirrors that of the body files. There is typically one header file for each body file that you define. You only need to create headers for files that contain things that you want to access in other parts of your program. For example if I have a body file called utils.cpp, I would also create a file called utils.hpp. The folder structure of your headers should mirror the structure of your body files. For example if I have a folder called helpers, and in that folder I have auton.cpp, opcontrol.cpp, and misc.cpp, I would also create a folder for my headers called helpers, and in that folder I would create auton.hpp, opcontrol.hpp, and misc.hpp.