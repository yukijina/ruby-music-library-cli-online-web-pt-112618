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
     #binding.pry
      tests = []
      lists = Song.all.each do |song|
        tests += [song.name, song.artist.name, song.genre.name]
      end
      
      sorted = tests.each_slice(3).map {|list| list}.sort
      sorted.each.with_index(1) do |list, index|
        puts "#{index}. #{list[1]} - #{list[0]} - #{list[2]}"
      end
      
      #sorted = Song.all.map {|song| song.name}.sort
      #songs.each.with_index(1) do |list, index|
       #    "#{index}. #{song.artist} - #{song.name} - #{song.genre}"
      
      #(1..10).each_slice(3) { |a| p a }
    end
      
      
  
end 