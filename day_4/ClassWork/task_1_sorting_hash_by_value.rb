#  You are given the following array of hashes:
#
#  [{id: 1, name: 'Prabin', position: 'CEO'},
#   {id: 2, name: 'Prakash', position: 'CTO'},
#   {id: 3, name: 'Sushil', position: 'Frontend Developer'},
#   {id: 4, name: 'Kiran', position: 'Content Writer'},
#   {id: 5, name: 'Bijay', position: 'Associate Software Engineer'}]
#
# Sort these hashes by name in ascending order.

staff = [
          {id: 1, name: 'Prabin', position: 'CEO'},
          {id: 2, name: 'Prakash', position: 'CTO'},
          {id: 3, name: 'AAA', position: 'Frontend Developer'},
          {id: 4, name: 'aaa', position: 'Content Writer'},
          {id: 5, name: 'Bijay', position: 'Associate Software Engineer'}
         ]

0.upto(staff.length-1) do|index_1|

  0.upto(staff.length-1) do|index_2|
    if(staff[index_1][:name]< staff[index_2][:name])
      staff[index_1], staff[index_2] = staff[index_2], staff[index_1]
    end
  end
end

puts staff