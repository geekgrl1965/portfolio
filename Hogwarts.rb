puts <<END

                      _/\\____/\\_
                     / ___  ___ \\
                    / / @ \\/ @ \\ \\
                    \\ \\___/\\___/ /
                     \\____\\/____/
                     /     /\\\\\\\\\\
                    |      \\\\\\\\\\\\
                     \\      \\\\\\\\\\\\
                      \\______/\\\\\\\\
                       _||_||_



*********************************************************
*                                                       *
*   The Department of Magical Education welcomes you!   *
*                                                       *
*         As a fifth year student at Hogwart's          *
*          you are ready to take your OWLs!             *
*                                                       *
*          Ordinary Wizarding Levels, that is           *
*                                                       *
*                                                       *
*                 Let's get started!                    *
*                                                       *
*********************************************************
END

puts " "
puts " "
puts "Which house do you belong to: Slytherin, Hufflepuff, Ravenclaw or Gryffindor?"


house = gets.chomp.capitalize

until ["Slytherin", "Hufflepuff", "Ravenclaw", "Gryffindor"].include? house
  puts "Are you a Muggle? You need to enter Slytherin, Hufflepuff, Ravenclaw or Gryffindor"
  house = gets.chomp.capitalize
end

if house == "Hufflepuff"
  puts "Good luck, Hufflepuff - you'll need it! You can always apply to the Department of Magical Maintenance if you fail. Which you probably will."
elsif house == "Ravenclaw"
  puts "Welcome, Ravenclaw! I'm sure you'll have no trouble passing the exam. Wit beyond measure is within you."
elsif house == "Slytherin"
  puts "No cheating you sneaky, devious, stinking Slytherin!"
elsif house == "Gryffindor"
  puts "Do your best Gryffindor, but remember: there are more important things than books and cleverness"
end

wizard_score = 0
homework = []

puts " "
puts "*********************************************************"
puts " "
correct_answer_1 = "Expecto Patronum"
puts "Question one"
puts "If you wanted to produce a patronus, which spell would you cast: Imperio, Wingardium Leviosa, or Expecto Patronum?"
answer_1 = gets.chomp
until ["Imperio", "Wingardum Leviosa", "Expecto Patronum"].include? answer_1
  puts "Pay attention! You need to enter Imperio, Wingardium Leviosa, or Expecto Patronum"
  answer_1 = gets.chomp
end
if answer_1 == correct_answer_1
  wizard_score+=1
  puts "Correct! One point for #{house}!"
else
  puts "You are incorrect.  Perhaps you should read your Standard Book of Spells, Grade 1 again"
  homework << "Standard Book of Spells, Grade 1"
end
puts "Your score is now #{wizard_score} points"

puts " "
puts "*********************************************************"
puts " "
correct_answer_2 = "lightning bolt"
puts "Question two"
puts "What is the shape of Harry Potter's scar: lightning bolt, star, or crescent moon?"
answer_2 = gets.chomp
until ["lightning bolt", "star", "crescent moon"].include? answer_2
  puts "Neatness counts! You need to enter lightning bolt, star, or crescent moon"
  answer_2 = gets.chomp
end
if answer_2 == correct_answer_2
  wizard_score+=1
  puts "Correct! One point for #{house}!"
else
  puts "You are incorrect.  Sounds like you need to read 'Great Wizarding Events of the Twentieth Century' again"
  homework << "Great Wizarding Events of the Twentieth Century"
end
puts "Your score is now #{wizard_score} points"

puts " "
puts "*********************************************************"
puts " "
correct_answer_3 = "dementors"
puts "Question three"
puts "Who guards the wizard prison Azkaban: death eaters, dementors, or house elves?"
answer_3 = gets.chomp
until ["death eaters", "dementors", "house elves"].include? answer_3
  puts "You really must try harder! You need to enter death eaters, dementors, or house elves"
  answer_3 = gets.chomp
end
if answer_3 == correct_answer_3
  wizard_score+=1
  puts "Correct! One point for #{house}!"
else
  puts "You are incorrect.  Take a look at your 'Defense Against the Dark Arts' textbook again"
  homework << "Defense Against the Dark Arts"
end
puts "Your score is now #{wizard_score} points"

puts " "
puts "*********************************************************"
puts " "
correct_answer_4 = "liquid luck"
puts "Question four"
puts "What is another name for the potion 'Felix Felicis': living death, truth serum, or liquid luck?"
answer_4 = gets.chomp
until ["living death", "truth serum", "liquid luck"].include? answer_4
  puts "One more time! You need to enter living death, truth serum, or liquid luck"
  answer_4 = gets.chomp
end
if answer_4 == correct_answer_4
  wizard_score+=1
  puts "Correct! One point for #{house}!"
else
  puts "You are incorrect.  Someone needs to read 'Most Potent Potions' again"
  homework << "Most Potent Potions"
end
puts "Your score is now #{wizard_score} points"

puts " "
puts "*********************************************************"
puts " "
correct_answer_5 = "snitch"
puts "Question five"
puts "What must be caught to end a game of quidditch, the: quaffle, snitch, or bludger?"
answer_5 = gets.chomp
until ["snitch", "quaffle", "bludger"].include? answer_5
  puts "Did you take a bludger to the head? You need to enter snitch, quaffle, or bludger"
  answer_5 = gets.chomp
end
if answer_5 == correct_answer_5
  wizard_score+=1
  puts "Correct! One point for #{house}!"
else
  puts "You are incorrect.  Why not read 'Quidditch Through the Ages' again"
  homework << "Quidditch Through the Ages"
end


puts " "
puts "*********************************************************"
puts " "
puts "You've finished your OWL exam!"
puts " "
puts "Your final score is #{wizard_score} points"

if wizard_score <=2
  puts "You must be a Hufflepuff. Or possibly a troll."
  puts " "
  puts "You should study: #{homework.join(',and ')}, then take the exam again"
elsif wizard_score ==3
  puts "You've obviously been spending more time on quidditch than your schoolwork!"
  puts " "
  puts "You should study: #{homework.join(',and ')}, then take the exam again"
elsif wizard_score ==4
  puts "Very good! I'm sure you'll have no trouble finding a magical position!"
elsif wizard_score ==5
  puts "Excellent! The Ministry of Magic could use a talented witch or wizard like you!"
end
