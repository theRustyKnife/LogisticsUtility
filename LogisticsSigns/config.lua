-------- FONTS
FIRSTASCII = 32;
LASTASCII = 159;

FONTSHEET_WIDTH = 512;
FONTSHEET_HEIGHT = 320;
FONT_WIDTH = 32;
FONT_HEIGHT = 32;
FONT_SCALE = 0.55;

SPACING_HORIZONTAL = 0.245;
SPACING_VERTICAL = 0.5;

-- SIGNS
SIGN_PROPERTIES = {}
SIGN_PROPERTIES["util-sign"] = {
  startingHeight = 1.1,
  startingWidth = 0.95,
  lettersPerLine = 8,
  maxLength = 16
}
SIGN_PROPERTIES["util-sign-large"] = {
  startingHeight = 1,
  startingWidth = 1.95,
  lettersPerLine = 17,
  maxLength = 34
}

--TODO ADD SUPPORT FOR CUSTOM ICONS?
ICONS = { "fluid", "item", "virtual-signal",  }
