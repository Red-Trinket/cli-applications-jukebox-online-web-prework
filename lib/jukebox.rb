# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]



def help
  #this method should be the same as in jukebox.rb	  #this method should be the same as in jukebox.rb

  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end	




def list(my_songs)	def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 	  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name	  #list the songs by name
  my_songs.each { |song, location|
    puts song
    }
end	end



def play(my_songs)	def play(my_songs)
  #this method is slightly different!	  #this method is slightly different!
  #you should still ask the user for input and collect their song choice	  #you should still ask the user for input and collect their song choice
 #-33,13 +37,51  def play(my_songs)
  #if it isn't, tell them their choice is invalid	  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax	  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash	  #get the file path of the song by looking it up in the my_songs hash

  puts "Please enter a song name:"
  user_response = gets.chomp
  my_songs.each { |song, location|
    if user_response == song
      system 'open ' + location
    end
      }
  if user_response == "list"
    list(my_songs)
    play(my_songs)
  else
    puts "Invalid input, please try again:"
    play(my_songs)
  end
end	end


def exit_jukebox	def exit_jukebox
  #this method is the same as in jukebox.rb	  #this method is the same as in jukebox.rb
  puts "Goodbye"
end	


def run(my_songs)	def run(my_songs)
  #this method is the same as in jukebox.rb	  #this method is the same as in jukebox.rb
end	  help
  puts "Please enter a command:"
  user_response = gets.chomp
  while user_response != "exit"
    case user_response
      when "help"
        help
        puts "Please enter a command:"
        user_response = gets.chomp
      when "list"
        list(my_songs)
        puts "Please enter a command:"
        user_response = gets.chomp
      when "play"
        play(my_songs)
        puts "Please enter a command:"
        user_response = gets.chomp
      when "exit"
        exit_jukebox
      else
        puts "Invalid input, please try again:"
        user_response = gets.chomp
      end
    end
end 

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |song, index|
    puts (index + 1).to_s + ". " + song
    }
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  output = ""
  songs.each_with_index { |song, index|
    if user_response == (index + 1).to_s || user_response == song
      output = "Playing #{song}"
    end
  }
  if output.include?("Playing")
    puts output
  elsif user_response == "list"
    list(songs)
    play(songs)
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_response = gets.chomp
  while user_response != "exit"
    case user_response
      when "help"
        help
        puts "Please enter a command:"
        user_response = gets.chomp
      when "list"
        list(songs)
        puts "Please enter a command:"
        user_response = gets.chomp
      when "play"
        play(songs)
        puts "Please enter a command:"
        user_response = gets.chomp
      else
        puts "Invalid input, please try again"
        user_response = gets.chomp
    end
  end
  exit_jukebox
end 