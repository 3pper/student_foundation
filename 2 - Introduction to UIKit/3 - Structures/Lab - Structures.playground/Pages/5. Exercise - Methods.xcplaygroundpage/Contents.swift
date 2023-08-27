/*:
## Exercise - Methods
 
 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
 */
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    
    func description() {
        print("This book '\(title)' has author \(author), has \(pages) pages and cost \(price)")
    }
    
}
var book = Book(title: "fsdf", author: "dsd", pages: 100, price: 250)
book.description()

//:  A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    
    mutating func like() {
        likes += 1
    }
    mutating func reset() {
        likes = 0
    }
    func descriptoin() {
        print("Post \(message) has \(likes) likes and \(numberOfComments) comments")
    }
}
var post = Post(message: "hey", likes: 100, numberOfComments: 20)
post.like()
post.like()
post.descriptoin()
post.reset()
post.descriptoin()
post.like()
post.descriptoin()


// добавил от себя mf reset  и описание поста f description
// в конце немного потестировал 

/*:
[Previous](@previous)  |  page 5 of 10  |  [Next: App Exercise - Workout Functions](@next)
 */
