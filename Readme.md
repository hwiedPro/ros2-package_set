# Autoproj package set for managing ROS2 workspaces

## Autoproj

Autoproj is a workspace management tool that provides the functionality of WStool/VCSTool and rosdep combined.

Autoproj seperates package and workspace definitions. Package definitions are stored in a "package set", worspaces in a "buildconf" that is checked out into your workspace in a folder called "autoproj"


### A package_set (this repository) allows to define available packages for the workspace, it has three main configuration files 

* source.yml - Defines the location and type of the source to download (e.g. git, archive, ...) and can add automatically add patches after doenload
* *.autobuild file(s) - Define which packages are available and how autoproj should handle the code (autoproj may generate additional files, like a colcon.pkg file with cmake args). Autoproj can also build workspaces, in the ROS2 case you should still use colcon.
* *.osdeps file(s) - A list of OS dependencies, in this package set, the ros 2 wstool definitions is already imported.

Additional files are for advanced usage (see the autoproj documantation).

### A buildconf ("autoproj" folder in the Worksapce) 

A buildconf defines which packages from the package_set are actually installed into the workspace.

It is part of the workspace and thus can easily be shared among a team of developers (e.g. as a git repo).

Is also may contain "overrides" to adapt your checkouts/builds from the defaults in the package_set, this includes switching branches of setting specific cmake args for single libraries.

* In the init.rb you define server configurations for source names used in the package set (e.g. "github")
* The overrides.d folder may contain .xml files with changes of location or branches (e.g. when you workspace is using a fork)
* The overrides.rb file can change build definitions (e.g. build a scecific file in debug mode)





