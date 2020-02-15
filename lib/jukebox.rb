require 'pry'

def help 
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end 

def list(songs)
  songs.each_with_index do |song,index| 
    puts "#{index+1}. #{song}"
  end 
end 

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip 
 
  songs.each_with_index do |song,index|
    if (song == user_input) || (index + 1 == user_input.to_i)
      puts "Playing #{song}"
      return 
    elsif (song != user_input) || (index + 1 != user_input.to_i)
      puts "Invalid input, please try again"
      return
    end
  end 

end  

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
puts "Please enter a command:"
user_input = gets.strip 

while true 
  if user_input == "list"
    list(songs)
  elsif user_input == "play"
    play(songs)
  elsif user_input == "help"
    help
  elsif user_input == "exit"
    exit_jukebox
    break 
  end 
end
end 

