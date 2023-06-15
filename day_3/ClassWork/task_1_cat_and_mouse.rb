# You are given following array of strings featuring a cat 'C' and a mouse 'm'.
# The rest of the string will be made up of '.'.

def cat_mouse(string)
  cat_position = string.index("C")
  mouse_position = string.index("m")

  position_difference = mouse_position-cat_position

  if position_difference <= 4
    "Caught!"
  else
    "Escaped!"
  end
end

array = Array["Carrom", "Cam", "Castwim", "Critcism", "Cram"]

array.each do|string|
  puts cat_mouse(string)
end
