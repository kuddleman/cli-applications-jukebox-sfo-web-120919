def help
  puts  "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do | song, index |
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.strip  # choice will be a string

  if choice.length > 2
    if songs.include?(choice)
      puts "Playing #{choice}"
    else
      puts "Invalid input, please try again"
    end
  end

  if choice.length <= 2
    choice = choice.to_i
    if songs.include?(songs[choice - 1])
      puts "Playing #{songs[choice - 1]}"
    else
      puts "Invalid input, please try again"
    end
  end
end



def exit_jukebox
  puts "Goodbye"
end


def run
  puts "Please enter a command:"
  command = gets.strip
    if command == "help"
      help
    elsif command == "list"
      list
    elsif command == "play"
      play
    elsif command == "exit"
      exit_jukebox
      return
    end

end
