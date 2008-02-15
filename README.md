# WonCraft

An RTS made in GameMaker. It covers the RTS basics with worker, rifleman and artillery units, hall, barracks, bunker and watchtower buildings, a gold economy and drag selection, plus a minimap. The heart of it is the map editor: place terrain and units, set the funds and win condition, attach triggers, then save it as a map to share.

<p>
  <img src="docs/screenshots/screenshot-1.png" width="480" alt="Gameplay">
</p>


## How to play

Download from Releases, extract and run. The game reads the GIF and video files next to it, so extract the whole folder.

It opens on the main menu, and Start takes you into the editor. Build a map and press B to save, and the game starts on that map. A saved map is loaded back into the editor with N.

### Editor

| Key | Action |
|---|---|
| Space + 1 / 2 / 3 | Worker / Rifleman / Artillery |
| Space + 4 / 5 / 6 | Barracks / Bunker / Watchtower |
| Space + Q / W / E | Tree / Wall / Grass |
| Space + A / S / D | Enemy rifleman / Enemy artillery / Enemy barracks |
| Right click / Left click | Place / Erase |
| Delete, Enter | Remove resources, Spawn resources |
| Z / X | Enemy barracks auto spawn on, off |
| O / P | Raise, lower starting funds |
| K / L | Raise, lower the kill count win condition |
| B / N | Save, Load |
| Ctrl | Summon a trigger |
| Middle mouse button | Delete a trigger |

Summon a trigger with Ctrl, drag it into place with a left click, then right click it and it asks which unit it applies to as it moves on to the next step.

### In game

| Key | Action |
|---|---|
| Space + 1 | Worker (50 gold) |
| Space + 2 | Barracks (200 gold) |
| Space + 3 | Bunker (300 gold) |
| Space + 4 | Watchtower (50 gold) |
| Click barracks + Q | Rifleman (100 gold) |
| Click barracks + W | Artillery (250 gold) |
| F11 | Screenshot |


## How it works

Triggers are split into condition and action object folders. "A unit reaches the chosen spot" is a condition, and "a unit is created", "a picture is drawn" and "remove" are actions. When a condition object fires it wakes the linked action objects, so one trigger is a bundle of several objects. Picture triggers read the G1, H1, J1, K1 and L1 GIF files straight from the game folder.

Map saving does not define a placement format. `game_save` writes the whole game state as a snapshot, which is why pressing save in the editor flows straight into the game starting from that state.


## Files

| Path | Contents |
|---|---|
| `source/woncraft.gmk` | Original project file |
| `source/lib/AI.lib` | Action library used for enemy detection. Put it in GameMaker's `lib` folder or the project will not open |
| `source/split/` | Text tree produced by GmkSplitter |
| `docs/screenshots/` | Screenshots |
| Releases | Distributed build |


## Credits

The scripts under `source/split/Scripts/MDX-Minimap/` are the MDX-Minimap library by Midx. `source/lib/AI.lib` is an action library made by 멍멍이 (qw5628).


## License

CC BY-NC-ND 4.0. Unmodified copies may be shared for noncommercial purposes with attribution. Modified versions and commercial use are not allowed. Bundled libraries, graphics, sounds, and maps made by other people keep their own rights. See [LICENSE](LICENSE).
