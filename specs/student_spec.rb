 #Requirements...
 require('minitest/autorun')
 require('minitest/rg')

 require_relative('../student.rb')

class TestStudent < Minitest::Test



#Anything that happens in a setup function, happens before your other functions.If you want to make a variable available to all your other functions you can use an @ symbol to do this. 
def setup
  @michaela = Student.new("Michaela", 1)
end

  #Getters
  def test_student_get_name 
    assert_equal("Michaela", @michaela.name)
  end


  def test_student_cohort
    assert_equal(1, @michaela.cohort)
  end 

#Setters 
  def test_update_student_name
    @michaela.name = ('Michaela Strachan')

    assert_equal('Michaela Strachan', @michaela.name)
  end

  def test_update_cohort_number
    @michaela.cohort = (10)
    assert_equal(10, @michaela.cohort)
  end 

  def test_student_can_talk
    assert_equal("I can talk!",@michaela.student_talks)
  end

  def test_student_fav_lang
   # favourite = @michaela.student_fav_lang("Ruby") 
   # assert_equal("I love Ruby!", favourite)

    assert_equal("I love French!",@michaela.student_fav_lang("French"))
  end

end