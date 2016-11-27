def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end


def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  songs.each_with_index do |element, idx|
    if element.include?(input)
      puts "Playing #{element}"
    else
      puts "Invalid input, please try again"
    end
  end
end


def list(songs)
  songs.each_with_index do |element, idx|
      puts "#{idx + 1}. #{element}"
  end
end


def exit_jukebox
  puts "Goodbye"
end


def run(user_input)
  help
  puts "Please enter a command:"
  input = gets.chomp

  if input != "exit"
    puts "Please enter a command:"
      if input == "list"
        list
      elsif input == "play"
        play
      elsif input == "help"
        help
      else
        puts "Invalid command, please try again"
      end
    end
  else
  exit_jukebox
end
