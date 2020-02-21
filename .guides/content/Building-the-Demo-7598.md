----------

## Building the Demo

Instruction through Codio is built around the guides feature. This is a brief description on how the demo on the previous page was built. Please see the [documentation](https://codio.com/docs/content/authoring/) for more information about content authoring with guides.

||| info
### To try this out
You’ll need to be in Edit Mode. From the top tool bar menu, select  **Tools->Guide->Edit**.


![.guides/img/editGuide](.guides/img/editGuide.png)
|||


### Page Layout
Each page in the guide can have its own layout. You can select how many panels you want, and what information goes in each panel. The most common layout is a two panels without the tree. The guide is in one panel and the code editor is in the other. Click the gear in the top-right corner of Codio. You can select the layout from here. The default layout is copy the previous page, and Codio does not close any open tabs.

![Layout](.guides/img/layout.png)

It is a good idea to explicitly state the layout you want. Closing tabs from previous pages also keeps the UI free from unnecessary clutter.

### Code Editor
To use the code editor, add a programming file to your project. Right-click on the name of your project or book in the directory tree on the left. Select `New File...` and then type its name and file extension.

The next step is to load this file into a panel of your layout. Click on the gear icon again, and click on the `Open Tabs` button. You can click the button and type the file's path to add a new file to the layout. Or, you drag the file from the directory tree onto the page.

This file will open with the guide. The file will remain opened until the student closes the tab. This is why it is a good idea to tell Codio to close any previously opened tabs when selecting the layout.

### Markdown
Guides are authored with [markdown](https://codio.com/docs/content/authoring/page-edit/edit/), but you can use any HTML to author content. The drop-down text is an example of the `<details>` and `<summary>` tags.

### Images
You will notice a folder called `.guides` in the File Tree. To view the File Tree, select **View->File Tree**. All of the information in this folder is hidden from students. There is a subfolder called `img` where you can upload any images you want to appear in the guide. Right-click on the `img` folder and select `Upload...`.

![.guides/img/upload](.guides/img/upload.png)

Add the image to the guide using markdown syntax or by dragging the image file from the directory tree onto the guide page where you want to insert the image.

### Run code Button
Codio has syntax to add a [custom button](https://codio.com/docs/content/authoring/page-edit/buttons/) to your guide. On the first page, the `RUN CODE` button runs the command `Rscript` and prints the test output to the terminal and graphical output to a PDF.


### Code Highlighting
You can create links that [highlight](https://codio.com/docs/content/authoring/page-edit/inline/) sections of code. It is important to note that opening a file with highlighting will retain the highlighting. Adding another like to open the same file without highlighting will "remove" the highlighting.