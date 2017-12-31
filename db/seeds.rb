User.delete_all
Book.delete_all
Author.delete_all
Category.delete_all
UserBook.delete_all

fred = User.create(name:"Fred")
sam = User.create(name:"Sam")
dorothy = User.create(name:"Dorothy")


yeats = Author.create(name:"Bob Yeats")

scifi = Category.create(name:"Sci-Fi")
horror = Category.create(name:"horror")

fort = Book.create(title:"Fort")
cow = Book.create(title:"The Cow Book")
timer = Book.create(title: "The World Timer")

fort.category = scifi
cow.category = horror
fort.author = yeats
cow.author = yeats

fort.save
cow.save
yeats.save
scifi.save
horror.save



fred.check_out_book(fort)
fred.check_out_book(timer)
dorothy.check_out_book(cow)
