# 1. Given a 2D array to represent your garden, you must find and collect all of the dog cr@p - represented by '@'.
#
# You will also be given the number of bags you have access to (bags), and the capactity of a bag (cap).
#
# You need to find out if you have enough capacity to collect all the cr@p and make your garden clean again.
#
# If you do, return 'Clean', else return 'Cr@p'.
#
# If your dog is out there ('D'), return 'Dog!!'.
#

def crap(garden,bags,cap)
  garden.flatten!
  total_crap = garden.count('@')
  total_cap = bags * cap

  if(garden.include?('D'))
    return "Dog!!"

  elsif(total_crap>total_cap)
    return "Cr@p"

  else
    return "Clean"
  end
end

garden =  [['_','_','_','_'], ['_','_','_','@'], ['_','_','@', '_']]
garden2 = [['_','_','_','_'], ['_','_','_','@'], ['_','_','@', '_']]
garden3 = [['_','_'], ['_','@'], ['D','_']]
garden4 = [['@','@'], ['@','@'], ['@','@']]

puts crap(garden, 1,1)
puts crap(garden2,2,2)
puts crap(garden3, 2,2)
puts crap(garden4,3,2)