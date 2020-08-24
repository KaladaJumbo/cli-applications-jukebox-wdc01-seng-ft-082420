def song_list

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

    return songs

end

def prompt 

    puts "Please enter a command: "
    input = gets.strip

    return input 

end

def prompt 

    puts "Please enter a song name or track number: "
    input = gets.strip

    return input 

end
  
def help

    puts    "I accept the following commands:"
    puts    "- help : display this help message"
    puts    "- list : display a list of sons you can play"
    puts    "- play : lets you chooce a song to play"
    puts    "- exit : exits this program"

end

def list(songs)

    counter = 1

    songs.each do |value| 

        puts ".#{counter} " + value
        counter += 1

    end

end

def play(songs) 

    user_responce = prompt_play

    if user_responce == "exit"
        return user_responce

    if  songs[user_responce.to_i].nil? != nil
        puts "Playing " + songs[user_responce.to_i]
    elsif songs.include?(user_responce) 
        puts "Playing " + user_responce
    else
        puts "Invalid input, please try again"
    end


end

def exit_jukebox

    puts "Goodbye"

end

def running(songs) 

    user_responce = "first run" 

    while user_responce != "exit" do 

        user_responce = prompt

        case user_responce
        when "play"
            user_responce = play(songs)
        when "exit"
            user_responce = "exit"
            exit_jukebox
        when "help"
            user_responce = "loop"
            help
        when "list"
            user_responce = "loop"
        else 
            user_responce = "loop"
            puts "Invalid input, please try again"
        end 


    end

end


