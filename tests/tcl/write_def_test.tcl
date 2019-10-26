set db [dbDatabase_create]
set lef_parser [new_lefin $db true]
set def_parser [new_defin $db]
set def_writer [new_defout]
set lib [lefin_createTechAndLib $lef_parser gscl45nm ./OpenDB/tests/data/gscl45nm.lef]
set chip [$def_parser createChip {$lib} ./OpenDB/tests/data/design.def]
set block [$chip getBlock]
puts [$def_writer writeBlock $block ./OpenDB/build/test.def]