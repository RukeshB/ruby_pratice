#  Create a method/function which converts dash/underscore delimited words into camel casing.
# The first word within the output should be capitalized only if the original word was capitalized
# (known as Pascal case).

def convert(string)
  index=0
  new_string = ""

  string.scan(/[a-zA-Z]+/)do |s|
    if(index>0)
      s.capitalize!
    end
    new_string += s
    index += 1
  end

   puts new_string
end

convert("the-stealth-warrior_abc-abc")
convert("The_Stealth_Warrior")
convert("truemark_devs")
convert("Today_is-friday")

# Test following words to check if function is working or not:
#
# ""the-stealth-warrior"" -> ""theStealthWarrior""
# ""The_Stealth_Warrior"" -> ""TheStealthWarrior""
# ""truemark_devs"" -> ""truemarkDevs""
# ""Today_is-friday"" -> ""TodayIsFriday"""
