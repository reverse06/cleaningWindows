The code presented is an help-cleaner that permits you to list all of your biggest files on Windows;

/!\ These commande does not shows you the hiden directories /!\

Sometimes, for some files or directory that your computer does not has access to, an error message can appear. The process will just continue with skipping the concerned file/directory after the powershell signals it to you.

- listFiles.ps1 :
This code gives you a list of the 15 bigger directories on the partition you're using. 
To change the lenght of the list, refer to line 3.

- doubleFiles.ps1 : 
This code gives you all the double-time installed files, which will help you to identify and clean the files that should not exist.
To change the directory to scan, refer to line 1.

- temporaryFiles.ps1 :
This code searches in some directories known for holding a copy of recent files downloaded, by example and delete their content.
Those files are not needed by your system, and their deleting will not change anything for the use of your device.

For a more complete analysis, install WinDirStat, wich gives you a better view on *all* your files.
