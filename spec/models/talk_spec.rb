require 'spec_helper'

describe Talk, :type => :model do
  let(:talk) { FactoryGirl.build(:talk) }
  subject    { talk }

  context "validations" do
    it "validates presence of title" do
      talk.title = ""
      is_expected.to be_invalid
    end

    it "validates presence of description" do
      talk.description = ""
      is_expected.to be_invalid
    end

    it "validates presence of duration" do
      talk.duration = ""
      is_expected.to be_invalid
    end

    it "validates numericality of duration" do
      talk.duration = "NaN"
      is_expected.to be_invalid
    end

    it "validates postivity of duration" do
      talk.duration = -1
      is_expected.to be_invalid
    end

    it "validates duration is an integer" do
      talk.duration = 1.5
      is_expected.to be_invalid
    end

    it "validates presence of email" do
      talk.email = ""
      is_expected.to be_invalid
    end

    it "validates format of email" do
      talk.email = "invalid email!"
      is_expected.to be_invalid
    end

    it "validates format of email" do
      talk.email = "invalid email!"
      is_expected.to be_invalid
    end
  end

  describe '.pending' do
    it "returns only pending talks" do
      approved = [FactoryGirl.create(:talk, :approved => true),
                  FactoryGirl.create(:talk, :approved => true)]
      2.times { FactoryGirl.create(:talk) }

      expect(Talk.pending.size).to eq(2)
      approved.each do |talk|
        expect(Talk.pending).not_to include talk
      end
    end
  end

end
