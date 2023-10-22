VSCode ToDo Highlighter
--------

that helps you highlight and manage TODO comments in your code. 
It's a useful tool for keeping track of tasks and reminders within your codebase. 

**Here's how to use it:**

# Install the Extension:

1. Open Visual Studio Code.
2. Click on the Extensions icon in the Activity Bar on the side of the window (or press Ctrl+Shift+X).
3. Search for "VSCode Todo Highlight" in the Extensions Marketplace.
4. Click the "Install" button for the extension provided by "wayou".

# Configure the Highlighting Rules:

1. By default, VSCode Todo Highlight will recognize and highlight comments containing keywords like "TODO," "FIXME," "BUG," etc. However, you can customize the keywords and their highlighting styles to match your preferences.
   &nbsp;
2. To customize the highlighting rules, go to VSCode settings:
    - Open the command palette by pressing Ctrl+Shift+P.
    - Type "Preferences: Open Settings (JSON)" and select it.
3. In the JSON settings file, you can add or modify the rules. 
    Here's an example:


```` 
"todohighlight.keywords": [
    {
        "text": "TODO",
        "color": "#FFA500",
        "backgroundColor": "transparent",
        "overviewRulerColor": "rgba(255, 165, 0, 0.8)"
    },
    {
        "text": "FIXME",
        "color": "#FF0000",
        "backgroundColor": "transparent",
        "overviewRulerColor": "rgba(255, 0, 0, 0.8)"
    }
]
````

4. This example sets up highlighting for "TODO" and "FIXME" comments with different text and background colors.

# Viewing Highlights:
- Once you've configured your highlighting rules, the extension will automatically highlight any comments in your code that match the specified keywords.

# Filtering Highlights:
- You can filter and navigate through the highlighted comments using the "Todo Tree" view in VSCode. To open it, click on the Todo icon in the Activity Bar or use the Ctrl+Shift+T shortcut.

# Customization:
- You can further customize the extension's behavior by adjusting settings like highlighting style, icon colors, and more in your VSCode settings.

That's how you can use the "VSCode Todo Highlight" extension to manage and highlight TODO comments in your code within Visual Studio Code. It's a handy tool for keeping track of tasks and reminders while working on your projects.
