require 'pry'
class MusicLibraryController  
  
  def initialize(path ="./db/mp3s") 
   importer = MusicImporter.new(path)
   importer.import
  end 
  
  def call 
    user_input = ""
    while user_input != "exit"
    
      puts "Welcome to your music library!"
      puts "To list all of your songs, enter 'list songs'."
      puts "To list all of the artists in your library, enter 'list artists'."
      puts "To list all of the genres in your library, enter 'list genres'."
      puts "To list all of the songs by a particular artist, enter 'list artist'."
      puts "To list all of the songs of a particular genre, enter 'list genre'."
      puts "To play a song, enter 'play song'."
      puts "To quit, type 'exit'."
      puts "What would you like to do?"
    
      user_input = gets.chomp
      case user_input
      when "list songs"
        list_songs
      when "list artists"
        
      when "list genres"
        
      when "list artist"
          
      when "list genre"
          
      when "play song"
  
      when "exit"
    
      end 
      
    end
    
    def list_songs
      lists = []
      Song.all.each do |song|
        lists += [song.name, song.artist.name, song.genre.name]
      end
      
      sorted_lists = lists.each_slice(3).map {|list| list}.sort
      sorted_lists.each.with_index(1) do |list, index|
        puts "#{index}. #{list[1]} - #{list[0]} - #{list[2]}"
      end
      
    end

    def list_artists
      sorted = Artist.all.map {|artist| artist.name}.sort
      sorted.each.with_index(1) {|artist, index| puts "#{index}. #{artist}"}  
    end 
      
    def list_genres
      
      
    end 
  end  #the end of call method    
  
end 