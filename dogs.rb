require_relative "testing_library"

dogs = ["Fido", "Harleigh", "Mali", "Trixie", "Snow", "Victory"]

def how_many_dogs(dogs)
  dogs.length
end

def name_lengths(dogs)
  dog_name_lengths = []
    # loop through each dog and
  dogs.each do |dog_name|
    # count how long the name is
  dog_name_lengths.push (dog_name.length)
    # return a new array with the length of each name
  end
  dog_name_lengths
end


def reverse_dog_names(dogs)
 dog_names_reverse = []
 dogs.each do |dog_length|
   dog_names_reverse.push (dog_length.reverse)
 end
  dog_names_reverse
end


def first_three_dogs_with_each(dogs)

  first_three_dogs = []
  counter = 0
  dogs.each do |dog|
    if counter == 3
      break
    end
  first_three_dogs.push(dog)
  counter = counter + 1
end
  first_three_dogs
end


def first_three_dogs_without_each(dogs)
  dogs[0..2]
end


def reverse_case_dog_names(dogs)
  dog_names_reverse_case = []
  dogs.each do |dog_length|
    dog_names_reverse_case.push (dog_length.swapcase)
  end
  dog_names_reverse_case

  # other way: dogs.map {|dog| dog.swapcase}
end


# I really don't understand this yet
# this is called reduce
def sum_of_all_dog_name_lengths(dogs)
  total_length  = 0

  dogs.each do |dog_name|
    total_length = total_length + dog_name.length
  end
  total_length
end


def dogs_with_long_names(dogs)
  long_names = []

  dogs.each do |dog_name|
   long_names.push(dog_name.length > 4)
    end
 long_names
end

# can also be:
# dogs.map {|dog| dog_name.length > 4 }

puts "*"*80
puts "Make each method return the correct value"
puts "The check method will run and tell you if the answer is correct"
puts "*"*80

check("how_many_dogs", how_many_dogs(dogs) == 6)
check("name_lengths", name_lengths(dogs) == [4, 8, 4, 6, 4, 7])
check("reverse_dog_names", reverse_dog_names(dogs) == ["odiF", "hgielraH", "ilaM", "eixirT", "wonS", "yrotciV"])
check("first_three_dogs_with_each", first_three_dogs_with_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("first_three_dogs_without_each", first_three_dogs_without_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("reverse_case_dog_names", reverse_case_dog_names(dogs) == ["fIDO", "hARLEIGH", "mALI", "tRIXIE", "sNOW", "vICTORY"])
check("sum_of_all_dog_name_lengths", sum_of_all_dog_name_lengths(dogs) == 33)
check("dogs_with_long_names", dogs_with_long_names(dogs) == [false, true, false, true, false, true])

