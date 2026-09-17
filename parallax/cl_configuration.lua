F4menu = F4menu or {}
F4menu.configuration = {}

F4menu.configuration.general = {
	banner = "MAX Servers DarkRP",
	// The banner to use up top of the F4. Make this value>      false     <to disable.
	// This can be a link to an image (has to start with http:// or https://), a material <Material("banner.png")> or text.
	// Has to be png.
	// Use the dimensions 3488 x 537 or something with the same aspect ratio or it might stretch.

	money_symbol = "$",
	
	time_and_date = false,
	// Whether or not to display the time in the top left corner of the screen.

	theme = "clear",
	// The default theme to use.
	// "clear", "dark", "light"

	color = Color(80, 200, 255),
	// Color used for any other small things that dont have their own palette

	themes = {
		["clear"] = {
			blur_background = true,
			text = Color(235, 235, 235),
			background = Color(0, 0, 0, 100),
			player_background = Color(0, 0, 0, 50),
			job_background = Color(0, 0, 0, 50),
			list_background = Color(0, 0, 0, 50),
			listing_background = Color(0, 0, 0, 50),
			listing_header = Color(0, 0, 0, 150),
		},

		["dark"] = {
			text = Color(235, 235, 235),
			background = Color(54, 57, 62),
			player_background = Color(30, 33, 36),
			job_background = Color(46, 49, 54),
			list_background = Color(46, 49, 54),
			listing_background = Color(0, 0, 0, 0),
			listing_header = Color(0, 0, 0, 150),
		},

		["light"] = {
			light = true,
			text = Color(30, 30, 30),
			background = Color(255, 255, 255),
			player_background = Color(223, 223, 223),
			job_background = Color(243, 243, 243),
			job_header = Color(90, 90, 90),
			list_background = Color(46, 49, 54),
			listing_background = Color(223, 223, 223, 0),
			listing_header = Color(233, 233, 233),
			listing_items = Color(243, 243, 243),
		},

		/* // Theme Template! (multiline-comment)
		["custom"] = {
			// Whether or not the background of the whole F4 should be blurred out.
			blur_background = true,

			// Make this true if youre theme is light, makes text and other color changes accordingly.
			light = true,
			// Color of all the text
			text = Color(30, 30, 30),
			// Background color of the main selection
			background = Color(255, 255, 255),
			// Background color of the model viewer in the job section
			player_background = Color(223, 223, 223),
			// Background color of the job section itself
			job_background = Color(243, 243, 243),
			// Color of the header on the job section
			job_header = Color(90, 90, 90),
			// General listing background (jobs>others, weapons>rifles)
			list_background = Color(46, 49, 54),
			// Background of every item in a list
			listing_background = Color(223, 223, 223, 0),
			// Color of the header for every category in a listing (rifles, other)
			listing_header = Color(233, 233, 233),
			// Button color for the items in a list
			listing_items = Color(243, 243, 243),
		},*/
	},
}

F4menu.configuration.tabs = {
	jobs = {
		// Whether to enable or not
		enable = true,
		
		// What color to use for the tab in the menu
		color = Color(80, 200, 255),
	},

	ents = {
		enable = true,
		color = Color(80, 200, 255),
	},

	weapons = {
		enable = true,
		color = Color(80, 200, 255),
	},

	shipments = {
		enable = true,
		color = Color(80, 200, 255),
	},

	vehicles = {
		enable = true,
		color = Color(80, 200, 255),
	},

	ammunition = {
		enable = true,
		color = Color(80, 200, 255),
	},
	
	food = {
		enable = true,
		color = Color(80, 200, 255),

		// Since food doesnt categorize properly please add your cook team here so only the cook is able to see the menu.
		// Remove this to make everyone be able to see the food tab
		allowed = {TEAM_COOK},
	},
}

F4menu.configuration.webtabs = {
	//title 				url to visit 				color for category
	["Discord"] = {url = "https://google.com", color = Color(255, 255, 255)},
	["Steam Group"] = {url = "https://google.com", color = Color(255, 255, 255)},
	["Donate"] = {url = "https://google.com", color = Color(255, 255, 255)},

	/* This is a multiline comment line, remove this line to remove the comment.
	["Guidance"] = {
		// You can also replace url with HTML to run your own code through here.
		html = [[
<!DOCTYPE html>
<html>
<body>

<h1>My First Heading</h1>

<p>My first paragraph.</p>

</body>
</html>			
		]],
		color = Color(0, 175, 255)
	},
	*///This is a multiline comment line, remove this line to remove the comment.
}