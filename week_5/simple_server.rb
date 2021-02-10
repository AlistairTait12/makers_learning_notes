require 'socket'
server = TCPServer.new(2345)
socket = server.accept

class Note
  def initialize(title = "Untitled", content = "")
    @title = title
    @content = content
  end

  def title
    @title
  end

  def content
    @content
  end
end

class NoteList
  def initialize
    @notes = []
  end

  def add(title, content)
    @notes.push(Note.new(title, content))
  end

  def return_single(title_name)
    current = @notes.find {|note| note.title == title_name}
    "#{current.title}\n#{current.content}"
  end

  def return_all
    fail 'no notes' unless @notes

    @notes
  end
end

list = NoteList.new

while true
  socket.puts "Notes commands, `new note`, `find note`, `view all` or `quit`"
  choice = socket.gets.chomp
  
  case choice
  when "new note"
    socket.puts "title?"
    title = socket.gets.chomp
    socket.puts "content?"
    content = socket.gets.chomp
    list.add(title, content)
    socket.puts "#{title} added"
  when "find note"
    socket.puts "which note to find?"
    search = socket.gets.chomp
    socket.puts list.return_single(search)
  when "view all"
    socket.puts list.return_all
  when "quit"
    break
  else
    socket.puts "not a valid choice"
  end
end

socket.close