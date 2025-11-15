// --- Settings ---
#let spaceBetweenCardsX = 10pt;
#let spaceBetweenCardsY = 10pt;

#let strokeWidth = 1pt;
#let strokeFill = gradient.linear(
	rgb("#0100FF"),
	rgb("#00FFFF"),
	angle: -20deg,
)

// --- Implementation ---
#set page(
	paper: "a4",
	margin: 0mm,
)

#set align(center + horizon)
#set text(spacing: spaceBetweenCardsX)
#set par(leading: spaceBetweenCardsY, spacing: 0em)
#for i in range(10) [
	#box(
		fill: white,
		outset: strokeWidth * 0.6,
		stroke: strokeWidth + strokeFill,
		image("card.pdf"),
	)
]
