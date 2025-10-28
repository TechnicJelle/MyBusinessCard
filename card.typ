#set page(
	paper: "eu-business-card",
	margin: 0pt,
)

#set text(
	font: "JetBrains Mono",
	size: 9pt,
)

// ---------------------------------
// Top: Shaped Gradient
// ---------------------------------
#place(top + left, curve(
	fill: gradient.linear(
		rgb("#0100FF"),
		rgb("#00FFFF"),
		angle: -35deg,
	),
	curve.move((0%, 0%)), //top left
	curve.line((100%, 0%)), //top right
	curve.line((100%, 10%)), //bottom right
	curve.cubic((42%, -10%), (80%, 60%), (0%, 40%)), //handle towards left, handle towards right, bottom left
))


// ---------------------------------
// Logo Image
// ---------------------------------
#place(right + top, dy: 8%, image(
	"logo.png",
	height: 62%,
))


// ---------------------------------
// Top: Name & Job Title
// ---------------------------------
#place(top + left, dy: 2pt, block(
	inset: 8pt,
	spacing: 0pt,
	width: 100%,
)[
//Allow overriding my name with the $TYPST_NAME environment variable (see compile.sh)
#let default_name = "TechnicJelle"
#let input_name = sys.inputs.at("NAME", default: default_name)
#let name = if input_name.len() > 0 {
	input_name
} else {
	default_name
}

#set text(fill: white)
#show heading: set block(below: 0pt, above: 0pt)

= *#name*
#v(13pt)

== Graphics Programmer
#v(6pt)

For Games
])


// ---------------------------------
// Bottom (Links)
// ---------------------------------
#place(bottom + left, dy: -10pt, block(
	inset: 8pt,
	spacing: 0pt,
	width: 100%,
)[

#show link: name => underline(text(rgb("#3333FF"), name))

#show strong: set text(size: 7pt, weight: 300)

*Website:* #link("https://TechnicJelle.com")[TechnicJelle.com]

*⠀GitHub:* #link("https://github.com/TechnicJelle")[github.com/TechnicJelle]

*⠀E-Mail:* #link("mailto:technicjelleplay@gmail.com")[technicjelleplay\@gmail.com]

])
