# Windows Powershell install Chocolatey

To download [chocolatey](https://chocolatey.org/) to simplify installing software,
we must first access Windows Powershell as Administrator

1. Click `Windows` Button
2. Type `powershell`
3. Click `ctrl` + `shift` + `enter`
4. Choose `Yes`

At this point, you should be in a window that says `Administrator: Windows Powershell`

5. Type `cd $HOME` or `cd ~` to change directory to your user directory
6. Copy & Paste the following: 
  > ```
  > Set-ExecutionPolicy Bypass; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
  > ```
  > more info [here](https://chocolatey.org/install#install-with-powershellexe)

7. Click `enter`
8. Click `a` and then `enter`
9. Wait until complete
10. After waiting, type `choco --help` and then click `enter` -- this should output the information on chocolatey commands

If there something different happens, please let me know.
