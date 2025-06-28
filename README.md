# *nebby* 
*nebby* is a portable cross platform C++ learning and teaching repo. I made it for myself and friends who wanted to learn C++. It is set up with a .bat or .sh file, and features **vcpkg** packages.   
*nebby* demonstrates usage of CMake, vcpkg, and other useful tools. The set up process is a brief introduction to Git, CLI, and IDEs. 

## What is Git?
Git is version control software. It tracks changes to files and code. It lets us efficiently *branch* and *merge* our code. It allows many contributors to work on the same project or have different versions of the same project.  
- We set up a *repository* on our computer (*local*) which is the files we are tracking.  
- Working on a *branch*, the edits are recorded.  
- We stage our edits with "git add ."
- When the time is right, we use "git commit" to store our staged edits.
  
GitHub provides online storage, we can "git push" our commits to the online repository (*remote*). "git fetch" checks remote for changes. "git merge" will try to combine the remote and the local together.

## Setup Instructions

#### 1. Get an IDE (install one).
The first order of business is to get an IDE. I have chosen CLion because it is cross-platform. The IDE helps you develop a project by letting you edit, build, run, and debug it. 

#### 2. Fork the repository.
This creates your own remote, based on an existing repository. 

#### 3. Clone the fork to your machine.
Use cmd or terminal and move to the directory of choice.  
Run:  "git clone --recurse-submodules https://github.com/YOUR_USERNAME/REPO_NAME.git"

#### 4. Setup the fork.
Use cmd or terminal to navigate to /setup/. On Windows, run setup.bat. On Mac or Linux, run setup.sh.
