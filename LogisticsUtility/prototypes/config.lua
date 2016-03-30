-------- COLORING
COLOR_TABLE = {}
COLOR_TABLE["red"    ]={r=1.00, g=0.55, b=0.54}
COLOR_TABLE["orange" ]={r=0.97, g=0.77, b=0.09}
COLOR_TABLE["purple" ]={r=0.49, g=0.40, b=0.52}
COLOR_TABLE["blue"   ]={r=0.04, g=0.65, b=0.70}
COLOR_TABLE["lime"   ]={r=0.56, g=0.98, b=0.52}

-------- FONTS
FIRSTASCII = 32; --33
LASTASCII = 159; --175

FONTSHEET_WIDTH = 512; --256
FONTSHEET_HEIGHT = 320; --80
FONT_WIDTH = 32; --8
FONT_HEIGHT = 32; --16
FONT_SCALE = 0.55; --1

SPACING_HORIZONTAL = 0.245; --0.21
SPACING_VERTICAL = 0.5; --0.5

-- SIGNS
SIGN_PROPERTIES = {}
SIGN_PROPERTIES["util-sign"] = {
  startingHeight = 0.5,
  startingWidth = 0.95,
  lettersPerLine = 8,
  maxLength = 16
}
SIGN_PROPERTIES["util-sign-large"] = {
  startingHeight = 0.5,
  startingWidth = 1.95,
  lettersPerLine = 17,
  maxLength = 34
}
