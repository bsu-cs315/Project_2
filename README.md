# Project 2 Daniel Litt
A platforming game, live version of this project can be found <a href="https://bsu-cs315.github.io/Project_2/">here</a>

### How to play
The player is contolled via the arrow keys up jumps left moves left and right moves right.

## Project Report
### Iteration 2 Reflection
I had fun polishing my platformer this iteration. For my 2 examples of juice I tried to juice the camera and the platforming. I juiced the camera by adding smoothing to it which made the game feel a lot less rigid. To juice the platforming, I added coyote time which gives the player a little extra time to jump after walking off a ledge. This makes the platforming feel less robotically precise.

- [x] D-1: The repository link is submitted to Canvas before the project deadline.
- [x] D-2: The repository contains a <code>README.md</code> file in its top-level directory.
- [x] D-3: The project content is eligible for an <a href="https://www.esrb.org/ratings-guide/">ESRB Rating</a> of M or less.
- [x] C-1: Your repository is well-formed, with an appropriate <code>.gitignore</code> file and no unnecessary files tracked.
- [x] C-2: Your release is tagged using <a href="https://semver.org/">semantic versioning</a> where the major version is zero, the minor version is the iteration number, and the patch version is incremented as usual for each change made to the minor version, and the release name matches the release tag.
- [x] C-3: You have a clear legal right to use all incorporated assets, and the licenses for all third-party assets are tracked in the <code>README.md</code> file.
- [x] C-4: The <code>README.md</code> contains instructions for how to play the game or such instructions are incorporated into the game itself.
- [x] C-5: The project content is eligible for an <a href="https://www.esrb.org/ratings-guide/">ESRB Rating</a> of T or less.
- [x] C-6: The game includes a player-controlled character, implemented as a <code>KinematicBody</code> and positioned in a conventional, <code>TileMap</code>-based, 2D-platforming world.
- [x] C-7: The player's character can move left and right, with its movement bounded by impassable tiles.
- [x] C-8: The player's character can jump up and onto tiles.
- [x] C-9: The player's character falls down when walking off a ledge.
- [x] C-10: Include a full player experience loop: title, gameplay, end.
- [x] B-1: The <code>README.md</code> file contains a personal reflection on the iteration and self-evaluation, as defined above.
- [x] B-2: The playable game is published to GitHub Pages and linked from the <code>README.md</code> file.
- [x] B-3: The source code and project structure comply with our adopted style guides.
- [x] B-4: There is a sprite element in the level that the player can interact with, such as a collectible, an enemy, a book, or a switch.
- [x] B-5: The camera follows the character through a world that is larger than one screen.
- [x] B-6: Include sound effects and music.
- [x] B-7: Include a HUD that tracks game-appropriate data such as score or time remaining.
- [x] B-8: Include a clear example of <em>juice</em> and describe it in the <code>README.md</code>.
- [x] A-1: Include two clear examples of <em>juice</em> and describe them in the <code>README.md</code>.
- [x] A-2: Earn two stars.
- [x] ⭐ Animate the main character using either <code>AnimatedSprite</code> or cutout animation
- [x] ⭐ Include parallax scrolling in the background.
- [ ] ⭐ Include tiles that can be passed in one direction, such as being able to jump up through a tile and land atop it.


## Third-Party Assets

Menu font is "Press Start 2P" Copyright &copy; 2012 CodeMan38
<cody@zone38.net>, with Reserved Font Name "Press Start 2P", SIL open font license
version 1.1. Details are in `Godot_project/assets/fonts/OLF.txt`.

Tiles and characters are from "Abstract Platformer". Created in 2020 by kenney.nl,
[CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/). Source:
https://www.kenney.nl/assets/abstract-platformer

Pickup sound from `Retro Coin Collect` Created in 2012 by [DrMinky](https://freesound.org/people/DrMinky/),
[CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/). Source:
https://freesound.org/people/DrMinky/sounds/166184/

Background Music from `Main Theme.mp3` Created in 2018 by [Cnupoc](https://freesound.org/people/Cnupoc/),
[CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/). Source:
https://freesound.org/people/Cnupoc/sounds/449640/