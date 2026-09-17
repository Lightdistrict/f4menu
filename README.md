# MAX F4 Menu

Drop-in DarkRP F4 menu: jobs, entities, weapons, shipments, vehicles, ammo, and food tabs, plus a webtabs section for Discord/Steam Group/Donate links.

## Install

Drop this whole repo into `garrysmod/addons/f4menu/` and restart. Files must stay under `lua/autorun/client/` and load in this order (already alphabetical, so a plain drop-in works): `cl_blur.lua` → `cl_configuration.lua` → `cl_extext.lua` → `cl_parallax.lua`.

## Configuration

Everything lives in `lua/autorun/client/cl_configuration.lua`:

- `general.banner` — header text/image. Currently `"MAX Servers DarkRP"`, drawn with "MAX" in the accent color and the rest in white (special-cased for any banner string starting with `"MAX"`; anything else draws in a single color).
- `general.color` — the accent color used for "MAX" in the header and tab highlights. Currently `Color(80, 200, 255)`, matching the MAX Scoreboard's cyan.
- `general.themes.max` — the single forced theme (plain black background, no blur, matching the scoreboard's look). There is no in-menu theme picker — that UI was removed since only one theme is used.
- `webtabs` — Discord/Steam Group/Donate links. **Currently placeholder `google.com` URLs — update these before going live.**
- `tabs` — enable/disable and recolor each tab (jobs, ents, weapons, shipments, vehicles, ammunition, food). The food tab is restricted to `TEAM_COOK` by default.

## What changed from the version found

- Removed the in-menu theme switcher UI and collapsed the config down to one forced theme (`max`) styled to match the MAX Scoreboard: plain black background, no blur.
- Header banner text is now two-tone ("MAX" in the accent color, rest in white) instead of a single flat color.
- **Fixed the job-preview T-pose bug**: the player model preview only tried a `LookupSequence("pose_standing_01")` call, which silently fails on any playermodel that doesn't have that exact sequence name (many don't), leaving the model on its default T-pose. Now tries a spread of common idle sequence names (`idle_unarmed`, `idle_all_01`, `idle_all`, `idle`, `walk_all`, `walk_unarmed`) and falls back to sequence 0 only if none exist.
- Restructured from a loose `parallax/` folder into a proper `lua/autorun/client/` addon layout so it actually loads.

## Notes from the security/code review

No backdoors, obfuscation, or unexpected network calls. The only outbound request is an optional `http.Fetch` for a banner *image* URL, and only if you set `general.banner` to an `http(s)://...png` link yourself — it's entirely config-driven, not hardcoded to any external service. `cl_extext.lua` is GMod's own stock `ExText`/`ExTextScrollBar` chat-panel code, vendored in for rich-text display. `cl_blur.lua` is a correct, standard blur implementation.
