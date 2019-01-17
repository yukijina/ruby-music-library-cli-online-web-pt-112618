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
      user_input = gets.chomp
      case user_input
      puts "To list all of your songs, enter 'list songs'."
      when "list songs"
      puts "To list all of the artists in your library, enter 'list artists'."
      when "list artists"
      puts "To list all of the songs by a particular artist, enter 'list artist'."
      when "list genres"
      puts "To list all of the songs of a particular genre, enter 'list genre'."
      when "list artist"
      puts "To play a song, enter 'play song'."
      when "list genre"
      puts "To quit, type 'exit'."
      when "exit"
      puts "What would you like to do?"
    
  
    
    
    end 
    
  end 
  
end 