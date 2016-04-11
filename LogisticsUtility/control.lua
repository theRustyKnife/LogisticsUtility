require "util"
require "defines"
require "string"
require "prototypes.config"

-- Init the sign table
function init()
    global.signs = global.signs or {}
    global.last_built=global.last_built or {}
end
script.on_init(function() init() end)

-- When built sign create text string fot it
script.on_event(defines.events.on_built_entity, function(event)
  -- TODO: Clean this up
  if event.created_entity.name == "util-sign" or event.created_entity.name == "util-sign-large" then
      global.last_built[event.player_index] = event.created_entity;
      create_gui(event.player_index);
  elseif event.created_entity.name == "util-sign-small" then
      global.last_built[event.player_index] = event.created_entity;
      -- TODO: Open GUI for the icon seleciton
      -- NOTE: Tempoarily add notice icon to the sign
      create_sign_icon("notice", global.last_built[event.player_index].position, global.last_built[event.player_index]);
  end
end)

-- Destroy text string when the sign is destroyed
script.on_event(defines.events.on_preplayer_mined_item, function(event)
    -- TODO: Clean this up
    if event.entity.name == "util-sign" or event.entity.name == "util-sign-large" then
        for i = 1, #global.signs do
            if event.entity == global.signs[i].sign then

              for j = 1, #global.signs[i].texts do
                global.signs[i].texts[j].destroy();
              end

              table.remove(global.signs, i);
              break;
            end
        end

        if gui ~= nil then
          gui.destroy();
          gui = nil;
        end

    elseif event.entity.name == "util-sign-small" then
       for i = 1, #global.signs do
	  if event.entity == global.signs[i].sign then
	     global.signs[i].icon.destroy();
	     table.remove(global.signs, i);
	     break;
	  end
       end
    end
end)

-- CREATE SIGNPOST GUI FOR WRITING TEXT
function create_gui(player_index)
    if game.players[player_index].gui.center.SignPosts then
        game.players[player_index].gui.center.SignPosts.destroy()
    end

    gui = game.players[player_index].gui.center.add{type="frame", name="SignPosts", caption={"sign-gui-title"}, direction="vertical"}
    gui.add{type='textfield',name='message'}
    gui.add{type="button", name="write", caption={"sign-gui-button-write"}}
end

-- ON SIGNPOST GUI CLICK
script.on_event(defines.events.on_gui_click,
    function(event)
        if event.element.parent.name=='SignPosts' then
          if event.element.name=="write" then --OnClicked Write create ascii text entities
              create_sign_text(event.element.parent.message.text, global.last_built[event.player_index].position, global.last_built[event.player_index]);
              event.element.parent.destroy();
              gui = nil;
          end
      end
  end)

--TODO MAKE TEXT TO BE CENTER?
--TODO CHECKBOX TO SHOW TEXT ON MAP?
--Function that creates text string
 --str: string for text
 --pos: world position for the text
 --parent: the entity that owns this text
function create_sign_text(str, pos, parent)

  strings = {};

  startingHeight =  SIGN_PROPERTIES[parent.name].startingHeight;
  startingWidth = SIGN_PROPERTIES[parent.name].startingWidth;
  lettersPerLine = SIGN_PROPERTIES[parent.name].lettersPerLine;
  maxLength = SIGN_PROPERTIES[parent.name].maxLength;

  for i = 0, string.len(str) do
    if (i > maxLength) then break; end
    char = string.sub(str,i,i);

    if (string.byte(char) ~= nil and string.byte(char) >= FIRSTASCII and string.byte(char) <= LASTASCII) then
          index = i - 1;
          offsetY = math.floor(index / lettersPerLine) * SPACING_VERTICAL - startingHeight;
          offsetX = index % lettersPerLine * SPACING_HORIZONTAL - startingWidth;
          table.insert(strings, game.get_surface(1).create_entity{name = "ascii" .. string.byte(char), position =  {pos.x + offsetX, pos.y + offsetY}});
    end
      table.insert(global.signs, {sign = parent, texts = strings});
  end
end

-- NOTE: Tempoarily add some icon to the sign
function create_sign_icon(icon, pos, parent)
   offsetX = 0.5;
   icon_entity = game.get_surface(1).create_entity{ name = "icon-"..icon, position = {pos.x - offsetX, pos.y} };
   table.insert(global.signs, {sign = parent, icon = icon_entity});
end
