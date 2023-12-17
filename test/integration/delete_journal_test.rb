require "test_helper"

class DeleteJournalTest < ActionDispatch::IntegrationTest

    test "should delete a book" do
        journal = journals(:cat_task)

        get "/journals"
        assert_response :success
        assert_select "div div", 2

        delete "/journals/#{journal.id}"
        assert_select 'a', "redirected"
        assert_response :found


        get "/journals"
        assert_response :success
        assert_select "div div", 1

    end

    

end