require 'date'
require 'securerandom'

# Library ---------------
class Book
  attr_reader :title, :author, :isbn, :available
  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn
    @available = true
  end

  def checkout
    @available = false
  end

  def checkin
    @available = true
  end

  def book_info
    "Book info: #{title} created by #{author} - #{available ? 'In Stock' : 'Out of Stock'}"
  end
end

module Searchable
  def search_by_title(title)
    return @books.select { |book| book.title.downcase.include?(title.downcase()) }
  end

  def search_by_author(author)
    return @books.select { |book| book.author.downcase.include?(author.downcase()) }
  end

  def search_by_isbn(isbn)
    return @books.select { |book| book.isbn == isbn }
  end
end

class Library
  include Searchable
  attr_reader :library_name, :library_id
  @@total_books = 0

  def initialize(library_name)
    @library_name = library_name
    @books = []
    @@total_books += @books.length
    uuid = SecureRandom.uuid
    @library_id = uuid
    @created_at = DateTime.now.strftime('%Y-%m-%d %H:%M')
  end

  def add_book(book)
    @books << book
    return @@total_books += 1
  end

  def available_books
    return @books.select { |book| book.available() }
  end

  def unavailable_books
    return @books.select { |book| !book.available() }
  end

  def list_books
    return @books.each { |book| puts book.book_info() }
  end

  def search(query)
    result = search_by_title(query) + search_by_author(query) + search_by_isbn(query)
    if result.length > 0 then return result end
    puts "No books found"
    return []
  end
  def get_library_id
    return @library_id
  end

  def check_out_book(isbn)
    begin
      @books.find { |book| book.isbn == isbn }.checkout()
    rescue
      puts "\nBook #{isbn} not found"
    end
  end

  def get_total_books()
    return @@total_books
  end
end
lib = Library.new("My library")

Array(0..9).each { |i| lib.add_book(Book.new("Book #{i}", "Author #{i}", "1111#{i}")) }

puts "Available Books before change:"
lib.available_books.each { |book| puts book.book_info() }

lib.check_out_book("11112")
lib.check_out_book("11115")
lib.check_out_book("21112")

puts "\nAvailable Books after change:"
lib.available_books.each { |book| puts book.book_info() }
puts "\nUnavailable Books:"
lib.unavailable_books.each { |book| puts book.book_info() }

puts "\nSearch Author 1 Result:"
lib.search("Author 1").each { |book| puts book.book_info() }

puts "\nSearch Author 100 Result:"
lib.search("Author 100").each { |book| puts book.book_info() }


puts "\nBooks in Library:"
puts lib.get_total_books()

# Library ---------------

