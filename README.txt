The goal is to create a domain specific language to build static HTML pages. The components of the page are called nuggets and are made of HTML code with variables inside. A group of nuggets is called a lingot and is the base to build the page. The building process is the following:
1. The HTML code is extracted from each nugget in the lingot (the nuggets are stored in the /nuggets directory)
2. The variables are replaced with the actual values for each lingot
3. The page is assembled in an HTML wrapper

Inside the .lin file the user specifies which nugget are present and in what order, the values of the variable and a handful of global variables to build the page (page title, scripts, stylesheets etc). The program reads the .lin file and outputs an HTML page.

Future improvements:
- Add support for multiple pages
- Recursive nuggets

How to use
----------

In the nuggets/ directory create a file for each lingo you need, the templating language is very basic, instead of the actual value inside the tags, write '{variable}'.

In the root directory you need an html.nug file, which contains the general structure of your HTML page, the variable used here are the so-called global variables of your oven file, only one variable is mandatory: the {content} variable, where the nuggets will be injected.

Now create a file .oven, start by writing the values of the global variables, then for each lingot write the lingot's name in a new line, and if there are variables to assign, write inside a pair round brackets the assignments, with the same syntax as the global ones.

To build everything together go to the project's root directory and run
$ ./oven example.oven

==> Example nuggets/title.nug
<h1>{content}</h1>

==> Example html.nug
<!DOCTYPE html>
<html>
	<head>
		<title>{title}</title>
		{stylesheets}
	</head>
	</body>
		{content}
		{scripts}
	</body>
</html>

==> Example example.oven
title: 'Lorem'
stylesheets: 'https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css', 'https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap'
scripts: 'https://cdn.jsdelivr.net/npm/vue'

Title (
	content: 'Just trying out oven'
)


note: stylesheets and scripts are particular variables, because are in fact hidden nuggets, each url under these variables is wrapper around a <link> or a <script> tag. This feature is at the moment hard coded.
