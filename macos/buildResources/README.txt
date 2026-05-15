#%%APP_NAME%% %%APP_VERSION%% MacOS

Install:
  1. Double-click %%FILE_APP_NAME%%-%%APP_VERSION%%-macos-[arm64|x64].pkg to start the installer.
    * If you get a message saying "Not Opened", then:
      a. Click either "Done" or "Cancel", depending on which of those options you have.
      b. Go to Apple menu > System Preference >  Privacy and Security > General > and at the bottom, where it shows the file that was blocked, click "Allow Anyway" .
      c. Wait until the "___ was blocked" message disappears from the settings page.
    * If you get "can't open the file" or something else similar, then:
      * Look under Settings > Privacy and Security > Files & Folders > Terminal, and see if you need to turn on permissions for Desktop, OR, move your %%FILE_APP_NAME%%%% folder to another location or re-unzip in another location and run from there in a terminal.
      * Or, another possibility is that 'Move to Trash' could have been selected on %%FILE_APP_NAME%%-%%APP_VERSION%%-macos-[arm64|x64]-.pkg on a prior attempt to run. If this was done, then you can find it in your trash and 'put back', or re-unzip.
  2. Continue the Installation, only double-clicking again on the pkg file if the process isn't automatically continued for you.

For first use of any app built on Pankosmia:
  After installation, run %%APP_NAME%% from the Launchpad or from Applications.

If unsure, check to see if `~/panksomia_working/` and/or `~/panksomia_repos/` already exist.
  If neither exists, then follow the "First use" instructions above.
  If `~/panksomia_working/` exists, but not `~/panksomia_repos/`, then follow the "Upgrade from versions prior to 0.4.0-rc1" instructions below.
  If both `~/panksomia_working/` and `~/panksomia_repos/` already exist, then follow the "Upgrade from 0.4.0-rc1 or greater" instructions below.

Upgrade from versions prior to 0.4.0-rc1:
  1. Make a copy of `~/panksomia_working/repos` where "~" is the OS user home directory.
      ***************************************************************************************
      * Prior to 0.4.0, local projects were stored inside `~/pankosmia_working`.            *
      * Starting with 0.4.0 they are stored separately in `~/pankosmia_repos`.              *
      * Be very careful to backup before deleting pankosmia_working on older installations. *  
      ***************************************************************************************
  2. Delete `~/panksomia_working/`
  3. Launch %%APP_NAME%% from the Launchpad or from Applications.
  4. Restore the backup copy from step 1 to `~/panksomia_repos/` such that the prior immediate subdirectories of `~/panksomia_working/repos` are now immediate subdirectores of `~/panksomia_repos/`.
     The resulting directory structure should be along the lines of the following
     ~
     └───panksomia_repos
         ├───_git.door43.org
         │   └───[...more subdirectories]
         └───_local_
             └───_local_
                 └───[...more subdirectories]

Upgrade from 0.4.0-rc1 or greater:
  1. Delete `~/panksomia_working/`
  2. Launch %%APP_NAME%% from the Launchpad or from Applications.


This app leverages Graphite-enabled Electronite for font feature support.