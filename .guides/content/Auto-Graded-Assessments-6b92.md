----------

## Auto-Graded Assessments
Here are some quick examples of the different types of auto-graded assessments available through Codio. For a more detailed set of examples, take a look at the [Demo Guides and Assessments](https://codio.com/home/starter-packs/cc68d38b-b0ea-4825-9814-46a3594c2b11) project. To add an assessment, from the library or one you created yourself, click the chess piece icon at the top.

![Assessments](.guides/img/assessments.png)

### Learning Insights
Auto-graded assessments are linked to Codio's [Learning Insights](https://www.codio.com/blog/codio-advanced-student-learning-insights) dashboard. The dashboard gives you and your students valuable feedback on performance.

### Assessment Library
Codio has an assessment library with hundreds of assessments (mostly Python and Java). You can search the assessments by entering a tag and its value. The tags are those topics in the gray boxes, and the value is what comes after. So if you wanted to see all of the Python assessments, you would use `Programming Language` as the tag and `Java` as the value. You can add additional parameters to make your search result more precise.

![Assessment Library](.guides/img/assessment-library.png)

### Multiple Choice
The default multiple choice question only has two answers. You can add as many as you would like, and you can have multiple correct answers.

{Check It!|assessment}(multiple-choice-1981899322)

### Fill in the Blank
You can write whatever you like (sentences, code examples, etc.) for fill in the blank questions. Surround the "blanks" with `<<<` and `>>>`. You can tell Codio to show the students the possible answers. Each blank will have a drop down menu with all of the choices.

{Check It!|assessment}(fill-in-the-blanks-2837664483)

### Parson's Problems
For a basic Parson's problems, type the correct code in the box. If you stop here, the lines of code will be scrambled, and the student has to rearrange them. You can add incorrect code (called distractors). Add these lines of code after the correct code. Add `#distractor` after the incorrect code. You also need to add a small JSON object for the problem to work.

```javascript
{
  "sortableId": "sortable",
  "trashId": "sortableTrash"
}
```

{Check It!|assessment}(parsons-puzzle-21366716)
