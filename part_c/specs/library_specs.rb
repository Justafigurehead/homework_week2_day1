require('minitest/autorun' )
require('minitest/rg')
require_relative('../library.rb')

class Test_library < Minitest::Test

  def setup 

    @library = [
      books: {
        {title: "Lord of the Rings",
          rental_details: { 
            student_name: "Jeff", 
            date: "01/12/16"
          }
          }, 
          {title: "Empire of the Sun",
            rental_details: {
              student_name: "Michaela",
              date: "22/04/2016"
            }
          }
        }
    ]
  end

  def test_list_books
    all_books = print @library
    assert_equal([:books], all_books)
  end
end
