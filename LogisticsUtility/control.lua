require "util"
require "defines"
require("prototypes.config")

script.on_event(defines.events.on_built_entity, function(event)

  if event.created_entity.name == "basic-transport-belt" then
    local pos = event.created_entity.position;

    game.get_surface(1).create_entity{name = "ascii75", position = {pos.x, pos.y}}
    game.get_surface(1).create_entity{name = "ascii74", position = {pos.x + 0.2, pos.y}}
    game.get_surface(1).create_entity{name = "ascii79", position = {pos.x + 0.4, pos.y}}
    game.get_surface(1).create_entity{name = "ascii81", position = {pos.x + 0.6, pos.y}}
    game.get_surface(1).create_entity{name = "ascii85", position = {pos.x + 0.8, pos.y}}
    game.get_surface(1).create_entity{name = "ascii135", position = {pos.x + 1.05, pos.y}}
    game.get_surface(1).create_entity{name = "ascii119", position = {pos.x + 1.25, pos.y}}

    game.get_surface(1).create_entity{name = "ascii88", position = {pos.x, pos.y + 1}}
    game.get_surface(1).create_entity{name = "ascii132", position = {pos.x + 0.2, pos.y + 1}}

    create_sign_text("im The best of all man kind! abcdefghijklmonpqerstuvwxyz", pos);

  end

end)

function create_sign_text(str, pos)
  for i = 0, string.len(str) do
    char = string.sub(str,i,i);
    if (string.byte(char) ~= nil and string.byte(char) >= FIRSTASCII and string.byte(char) <= LASTASCII) then
          game.get_surface(1).create_entity{name = "ascii" .. string.byte(char), position =  {pos.x + i * 0.2, pos.y + 2}}
    end
  end
end
