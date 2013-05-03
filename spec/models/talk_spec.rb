require 'spec_helper'

describe Talk do
  let(:talk) { FactoryGirl.build(:talk) }
  subject    { talk }

  context "validations" do
    it "validates presence of title" do
      talk.title = ""
      should be_invalid
    end

    it "validates presence of description" do
      talk.description = ""
      should be_invalid
    end

    it "validates presence of duration" do
      talk.duration = ""
      should be_invalid
    end

    it "validates numericality of duration" do
      talk.duration = "NaN"
      should be_invalid
    end

    it "validates postivity of duration" do
      talk.duration = -1
      should be_invalid
    end

    it "validates duration is an integer" do
      talk.duration = 1.5
      should be_invalid
    end

    it "validates presence of email" do
      talk.email = ""
      should be_invalid
    end

    it "validates format of email" do
      talk.email = "invalid email!"
      should be_invalid
    end

    it "validates format of email" do
      talk.email = "invalid email!"
      should be_invalid
    end
  end

  describe '.pending' do
    it "returns only pending talks" do
      approved = [FactoryGirl.create(:talk, :approved => true),
                  FactoryGirl.create(:talk, :approved => true)]
      2.times { FactoryGirl.create(:talk) }

      Talk.pending.size.should == 2
      approved.each do |talk|
        Talk.pending.should_not include talk
      end
    end
  end

end
