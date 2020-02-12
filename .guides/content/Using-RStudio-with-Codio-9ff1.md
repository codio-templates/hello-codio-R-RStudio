----------------
Instead of using Codio's built in IDE, you can opt to use RStudio. Codio's Guide feature (what you are currently reading in) cannot interact with RStudio IDE in the same way it interacts with the Codio IDE (Run buttons, highlighting lines of code, etc). Codio also cannot open a particular file for students in RStudio as they navigate through Guide pages.
 
As RStudio is pointing at Codio's working directory, you will notice it's file tree looks the same as you see in edit mode (see how to do this on the next page). This means **RStudio is compatible with Codio's auto-grading functionality.**

## Using RStudio
RStudio Server should start upon the Codio box being opened. That means all you have to do is click "Run R-Studio" on the top menu bar to launch it. RStudio will appear in the blank pane to your left.

<details><summary>**Help! I don't see that button**</summary>No worries -- in the drop down of the middle button click "Configure...". This will open a file called `.codio`. Paste the following into it. <code>{ "commands": { "Start RStudio": "sudo service rstudio-server-codio start", "Restart RStudio": "sudo service rstudio-server-codio restart", "Stop RStudio": "sudo service rstudio-server-codio stop" }, "preview": { "Run R-Studio": "https://{{domain8787}}/"} }</code></details>

If you select the drop down menu next to the button, you can set RStudio to launch inside the current Codio tab or in a new browser tab.

![.guides/img/Run_RStudio](.guides/img/Run_RStudio.png)


You can choose to open an RStudio tab that is inside Codio in a new tab by clicking the arrow icon in the top left of the pane.

![.guides/img/Rstudio](.guides/img/Rstudio.png)

When you close the newly open tab and come back to Codio, you can resume editing in the Codio tab by clicking "Reconnect" on the pop up.

![.guides/img/RStudio_disconnect](.guides/img/RStudio_disconnect.png)
