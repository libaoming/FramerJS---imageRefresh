
size = 750

bg = new Layer
	size: size

canvas = document.createElement("canvas")
ctx = canvas.getContext("2d")


icon = new Layer
	width: 64
	height: 64
	image: "images/icon.png"
	x: 20
	y: 20
	parent: bg 

images = [
	"images/jellyfish.jpg",
	"images/taxi.jpg",
	"images/plants.jpg",
	"images/turtle.jpg"
]


icon.onClick ->
	@animate
		rotation: @rotation + 360 
		curve: "spring"
	random = images[Math.floor(images.length * Math.random())]
	
	image = new image
	image.src = random
	ctx.drawImage(image,0,0)
	

