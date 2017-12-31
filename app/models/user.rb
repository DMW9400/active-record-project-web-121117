class User < ActiveRecord::Base
  has_many :user_books
  has_many :books, through: :user_books

  def check_out_book(book)
    self.books << book
    self.save

  end
  def return_book(book)

    UserBook.all.each do |b|
      if b.book_id == book.id
        b.update(returned?:true)
      end
    end
    self.save

    # removes the book from the user's books collection, but breaks above code
    # book_to_delete_id = self.books.find{|b|b.title == book.title}.id
    # self.books.delete(book_to_delete_id)
    end

end
