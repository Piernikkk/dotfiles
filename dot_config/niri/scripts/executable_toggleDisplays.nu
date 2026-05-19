#!/usr/bin/nu
let secondaryDisplays = ["DP-4", "DP-6"];
let displaysData = niri msg -j outputs | from json;
let currentlyDisabled = $secondaryDisplays | all { |d| ($displaysData | get $d).current_mode == null };
$secondaryDisplays | each { |display| niri msg output $display (if $currentlyDisabled { "on" } else { "off" }) }
