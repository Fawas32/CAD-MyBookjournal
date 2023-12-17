require "test_helper"

Rspec.describe User_id, type: :model do 
    subject do 
        described_class.new(
            user: "1"
        )
    end

    it "is valid " do
        #should be a valid user
        expect(subject).to be_valid
    end

    it "is not valid no user entered" do
        subject.user = nil
        #should fail
        expect(subject).not_to be_valid
end