#!/bin/bash
#
# A simple script to show how to create a bootsplash.
# Do with it whatever you wish.
#
# This needs ImageMagick for the 'convert' and 'identify' tools.
#

LOGO=logo.gif
LOGO_WIDTH=$(identify $LOGO | head -1 | cut -d " " -f 3 |
	cut -d x -f 1)
LOGO_HEIGHT=$(identify $LOGO | head -1 | cut -d " " -f 3 |
	cut -d x -f 2)

SPINNER=spinner.gif
SPINNER_WIDTH=$(identify $SPINNER | head -1 | cut -d " " -f 3 |
	cut -d x -f 1)
SPINNER_HEIGHT=$(identify $SPINNER | head -1 | cut -d " " -f 3 |
	cut -d x -f 2)

convert -alpha remove \
	-background "#BFBFBF" \
	$LOGO \
	logo%02d.rgb

convert -alpha remove \
	-background "#BFBFBF" \
	$SPINNER \
	spinner%02d.rgb

#make clean
#make bootsplash-packer

# Let's put Tux in the center of an orange background.
./bootsplash-packer \
	--bg_red 191 \
	--bg_green 191 \
	--bg_blue 191 \
	--frame_ms 36 \
	--picture \
	--pic_width "$LOGO_WIDTH" \
	--pic_height "$LOGO_HEIGHT" \
	--pic_position 0 \
	--pic_anim_type 0 \
	--pic_anim_loop 0 \
	--blob logo00.rgb \
	--picture \
	--pic_width "$SPINNER_WIDTH" \
	--pic_height "$SPINNER_HEIGHT" \
	--pic_position 0x05 \
	--pic_position_offset 250 \
	--pic_anim_type 1 \
	--pic_anim_loop 0 \
	--blob spinner00.rgb \
	--blob spinner01.rgb \
	--blob spinner02.rgb \
	--blob spinner03.rgb \
	--blob spinner04.rgb \
	--blob spinner05.rgb \
	--blob spinner06.rgb \
	--blob spinner07.rgb \
	--blob spinner08.rgb \
	--blob spinner09.rgb \
	--blob spinner10.rgb \
	--blob spinner11.rgb \
	bootsplash-cupertino

rm ./*.rgb
