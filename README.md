# Advance Wars: Black Hole Rising

This is a decompilation of **Advance Wars 2: Black Hole Rising**.

It builds the following ROM:

* **[aw2bhr.gba](https://datomatic.no-intro.org/index.php?page=show_record&s=23&n=1043)** `sha1sum: 14dd0b22c894865867aff89e8116b2dffae25605`

## Quick setup

Put a copy of the original ROM (still required for every build for now) inside this folder and name it `baserom.gba`. Then run the following:

```sh
# on Debian/Ubuntu variants (such as default WSL2)
sudo apt install build-essential gcc-arm-none-eabi
tools/install-agbcc.sh
make compare -j
```

## See also

* [**FireEmblemUniverse/fireemblem6j**](https://github.com/FireEmblemUniverse/fireemblem6j), a decompilation of Fire Emblem: The Binding Blade.
* [**MokhaLeee/FireEmblem7J**](https://github.com/MokhaLeee/FireEmblem7J), a decompilation of Fire Emblem: Rekka no Ken (JP).
* [**StanHash/fe7_us**](https://github.com/StanHash/fe7_us), a decompilation of Fire Emblem (US).
* [**FireEmblemUniverse/fireemblem8u**](https://github.com/FireEmblemUniverse/fireemblem8u), a decompilation of Fire Emblem: The Sacred Stones (US).
