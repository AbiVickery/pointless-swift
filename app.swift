// print("Hello World!")

// moveForward()
// moveForward()
// moveForward()
// collectGem()

// moveForward()
// moveForward()
// turnLeft()
// moveForward()
// moveForward()
// collectGem()

// moveForward()
// moveForward()
// turnLeft()
// moveForward()
// collectGem()
// moveForward()
// turnLeft()
// moveForward()
// moveForward()
// toggleSwitch()

// moveForward()
// moveForward()
// moveForward()
// turnLeft()
// moveForward()
// moveForward()
// toggleSwitch()
// moveForward()
// moveForward()
// turnLeft()
// moveForward()
// moveForward()
// collectGem()

// moveForward(
//     steps: 1;
// )
// turnLeft()
// moveForward(
//     steps: 3;
// )
// function turnRight(
//     turnLeft()
//     turnLeft()
//     turnLeft()
// )
// turnRight()
// turnLeft(
//     degrees: 0;
// )
// turnRight(
//     degrees: 180;
// )
// moveForward(
//     steps: 5;
// )
// collectGem(
//     color: red;
// )
// toggleSwitch(
//     action: jump;
// )
// jumpDown(
//     steps: 1;
// )
// speakOut(
//     dialouge: default;
// )
// jumpUp(
//     steps: 1;
// )
// pickUp(
//     grab: object;
// )
// thInk(
//     say: message;
// )
// register(
//     monster: boogeyman;
// )
// Ive started to notice that some of the elements of swift are a lot like that of JavaScript...

// Hello, World

scene.backgroundImage = 
playMusic(.lab)

let yellowCrystal = 
    createGraphic(image: , sound: .cowbell)
    yellowCrystal.scale = 0.5
    scene.place(yellowCrystal, at: Point(x: -20, y: -5))

let purpleCrystal =
    createGraphic(image: , sound: .ahh)
    purpleCrystal.scale = 0.5
    scene.place(purpleCrystal, at: Point(x: -80, y: -5))






scene.backgroundImage = cave

scene.isGridVisible = false

// Decorative moss
let mossValues = [
    BandProperties(scale: 0.5, point: Point(x: -20, y: -300)),
    BandProperties(scale: 0.3, point: Point(x: -70, y: -330)),
    BandProperties(scale: 0.5, point: Point(x: -400, y: -320))
]
for moss in mossValues {
    let mossGraphic = Graphic(image: moss)
    mossGraphic.scale = moss.scale
    scene.place(mossGraphic, at:
        moss.point)
}

// Graphic loops
addGraphicLoops(
    image: pinkCrystal,
    sounds: [.beat2, .beat3, .steelDrums2, .comeHere],
    at: Point(x: 250, y: -112)
)

addGraphicLoops(
    image: pearl,
    sounds: [.cowBell, .cumDeDum],
    at: Point(x: -445, y: -155)
)

// Cave glitter
let glitterPoints = [
    Point(x: -460, y: 150),
    Point(x: -410, y: 230),
    Point(x: -350, y: 260),
    Point(x: 200, y: 270),
    Point(x: 350, y: 270),
    Point(x: 380, y: 200),
    Point(x: 450, y: 150)
]
for point in glitterPoints {
    addCaveGlitter(
        count: 25,
        color: Color(red: 81/255, green: 57/255, blue: 92/255, alpha: 0.4),
        gradientColor: Color(red: 173/255, green: 84/255, blue: 139/255, alpha: 0.6),
        at: point
    )
}

// Band elements
let pinkMushroomValues = [
    BandProperties(scale: 0.3, point: Point(x: -350, y: -260)),
    BandProperties(scale: 0.15, point: Point(x: -345, y: -320))
]
for (index, pinkMushroom) in pinkMushroomValues.enumerated() {
    addBandElement(
        image: mushroom1,
        instrument: .sevenSynth,
        note: getNote(index),
        rotation: Double.random(in: -8...8),
        scale: pinkMushroom.scale,
        point: pinkMushroom.point
    )
}

let purpleMushroomValues = [
    BandProperties(scale: 0.1, point: Point(x: -300, y: -250)),
    BandProperties(scale: 0.15, point: Point(x: -320, y: -260)),
    BandProperties(scale: 0.15, point: Point(x: -280, y: -280)),
    BandProperties(scale: 0.2, point: Point(x: -320, y: -290)),
    BandProperties(scale: 0.2, point: Point(x: -400, y: -290)),
    BandProperties(scale: 0.25, point: Point(x: -380, y: -320)),
    BandProperties(scale: 0.3, point: Point(x: -300, y: -340)),
]
for (index, purpleMushroom) in purpleMushroomValues.enumerated() {
    addBandElement(
        image: mushroom2,
        instrument: .bassSynth,
        note: getNote(index),
        rotation: Double.random(in: -10...-10),
        scale: purpleMushroom.scale,
        point: purpleMushroom.point
    )
}

let purpleCrystalValues = [
    BandProperties(scale: 0.45, point: Point(x: -200, y: 190), rotation:145.0 ),
    BandProperties(scale: 0.55, point: Point(x: -100, y: ), rotation: 230.0),
    BandProperties(scale: 0.55, point: Point(x: -265, y: ), rotation: 150.0),
    BandProperties(scale: 0.7, point: Point(x: -180, y: ), rotation: 180.0)
]
let purpleCrystalNotes = [9.0, 4.0, 5.0, 7.0]
for (index, purpleCrystal) in purpleCrystalValues.enumerated() {
    addBandElement(
        image: crystal2,
        instrument: .warmBells,
        note: getNote(index),
        rotation: purpleCrystal.rotation,
        scale: purpleCrystal.scale,
        point: purpleCrystal.point
    )
}
let blueCrystalValues = [
    BandProperties(scale: 0.45, point: Point(x: 360, y: -250,), rotation: 0.0),
    BandProperties(scale: 0.25, point: Point(x: 400, y: -270,), rotation: -10.0),
    BandProperties(scale: 0.2, point: Point(x: 380, y: -280,), rotation: 10.0)
]
for (index, blueCrystal) in blueCrystalValues.enumerated() {
    addBandElement(
        image: crystal3,
        instrument: .piano,
        note: getNote(index),
        rotation: blueCrystal.rotation,
        scale: blueCrystal.scale,
        point: blueCrystal.point
    )
}

addBandElement(
    image: crystal4,
    instrument: .piano,
    note: 7,
    rotation: 0.3,
    scale: 1.0,
    point: Point(x: 380, y: -390))

// Band
addBand(
    image: mush2,
    instrument: .electricGuitar,
    point: Point(x: 80, y: -280), scale: 0.45)

addBand(
    image: crystal5,
    instrument: .bassGuitar,
    point: Point(x: 200, y: -270), 
    scale: 0.45
)

// Spinning gems
let spinningGemValues = [
    GemProperties(image: dia1, sound: .yoga2, point: Point(x: -470, y: 115)),
    GemProperties(image: dia2, sound: .vocals, point: Point(x: -460, y: 260)),
    GemProperties(image: dia3, sound: .ringing, point: Point(x: -430, y: 175)),
    GemProperties(image: dia1, sound: .flute, point: Point(x: -350, y: 80)),
    GemProperties(image: dia2, sound: .droplet2, point: Point(x: -350, y: 200)),
    GemProperties(image: dia3, sound: .etherial2, point: Point(x: 175, y: 275)),
    GemProperties(image: dia1, sound: .weirdYoga, point: Point(x: 250, y: 255)),
    GemProperties(image: dia2, sound: .gong, point: Point(x: 260, y: 290)),
    GemProperties(image: dia3, sound: .thinking, point: Point(x: 385, y: 220)),
    GemProperties(image: dia1, sound: .twinkles, point: Point(x: 325, y: 255)),
    GemProperties(image: dia2, sound: .vocals, point: Point(x: 400, y: 270)),
    GemProperties(image: dia3, sound: .shaker, point: Point(x: 450, y: 140))
]
for gem in spinningGemValues {
    let spinners = spinningGem(
        image: gem.image,
        period: 5,
        sound: gem.sound
    )
    scene.place(spinners, at: gem.point)
}

scene.backgroundImage = image
playMusic(.turtle)

let yellowCrystal = 
    createGraphic(image: crystal1, sound: .cowBell)
    yellowCrystal.scale = 0.5
    scene.place(yellowCrystal, at: Point(x: -20, y: -5))

let redCrystal =
    createGraphic(image: crystal2, sound: .bells)
    redCrystal.scale = 0.5
    scene.place(redCrystal, at: Point(x: 1000, y: -123))

let purpleCrystal =
    createGraphic(image: crystal3, sound: .ahh)
    purpleCrystal.scale = 0.5
    scene.place(purpleCrystal, at: Point(x: 100, y: -5))

let pearl1 = 
    createGraphic(image: pearl, sound: .glassClink)
    pearl1.scale = 0.5
    scene.place(pearl1, at: Point(x: 200, y: -25))

let mushRoom1 =
    createGraphic(image: mush1, sound: .bells)
    mushRoom1.scale = 0.4
    scene.place(mushRoom1, at: Point(x: 135, y: -150))

let mushRoom2 =
    createGraphic(image: mush2, sound: .chime)
    mushRoom2.scale = 0.4
    scene.place(mushRoom2, at: Point(x: 215, y: -150))

let mushRoom3 =
    createGraphic(image: mush3, sound: .lightChord)
    mushRoom3.scale = 0.4
    scene.place(mushRoom3 at: Point(x: -10, y: -150))

let mushRoom4 =
    createGraphic(image: mush4, sound: .chord)
    mushRoom4.scale = 0.4
    scene.place(mushRoom4 at: Point(x: 50, y: -150))

let mushRoom5 =
    createGraphic(image: mush5, sound: .chord2)
    mushRoom5.scale = 0.4
    scene.place(mushRoom5 at: Point(x: -75, y: -150))

let pony1 =
    createGraphic(image: pony1, sound: .caveBeats)
    pony1.scale = 0.7
    scene.place(pony1 at: Point(x: -225, y: -125))

let pony2 =
    createGraphic(image: pony2, sound: .caveBeats)
    pony2.scale = 0.6
    scene.place(pony2 at: Point(x: 225, y: 125))