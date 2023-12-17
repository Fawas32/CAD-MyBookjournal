require "test_helper"

class JournalTest < ActiveSupport::TestCase
  setup do
    # Your setup logic here
  end

  test "should not save without user" do
    # Create a unique email for each test
    user_email = "fazzle#{SecureRandom.hex(4)}@example.com"
    
    # Create a user with the unique email
    user = User.new(email: user_email)
    
    assert_not user.save
  end
end


#require "test_helper"

#class JournalTest < ActiveSupport::TestCase
 # setup do
  #  ActiveRecord::Base.transaction do
      # Your setup logic here
   # end
 # end

  #test "should not save without user" do
    # Ensure that the email is unique for each test case
   # user = User.new(email: "fawasrichard@gmail.com")
    #assert_not user.save
  #end

  # Additional test cases can go here

  # test "the truth" do
  #   assert true
  # end
#end


#require "test_helper"

#class JournalTest < ActiveSupport::TestCase
 # setup do
 # Your setup logic here
#end
 # ActiveRecord::Base.transaction do
  #end

  #test "should not save without user" do
   # user = User.new
   # assert_not user.save
  #end

  # Additional test cases can go here

  # test "the truth" do
  #   assert true
  # end
#end


#require "test_helper"

#class JournalTest < ActiveSupport::TestCase
 # setup do
  #  ActiveRecord::Base.transaction do
      # Your setup logic here
    
   # test "should not save without user" do
    #  users = users.new
     # assert_not users.save
    #end
    
  #end
  # test "the truth" do
  #   assert true
  # end
#end
