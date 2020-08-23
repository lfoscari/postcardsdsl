The goal is to create a domain specific language to build static HTML pages. The components of the page are called nuggets and are made of HTML code with variables inside. A group of nuggets is called a lingot and is the base to build the page. The building process is the following:
1. The HTML code is extracted from each nugget in the lingot (the nuggets are stored in the /nuggets directory)
2. The variables are replaced with the actual values for each lingot
3. The page is assembled in an HTML wrapper

Inside the .lin file the user specifies which nugget are present and in what order, the values of the variable and a handful of global variables to build the page (page title, scripts, stylesheets etc). The program reads the .lin file and outputs an HTML page.

Future improvements:
- Add support for multiple pages
- Recursive nuggets
