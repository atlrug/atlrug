require 'spec_helper'

describe PagesController do
  %w(home).each do |page|
    describe "#{page} page" do
      subject { get :show, :id => page }

      it { should be_successful }
      it { should render_template page }
    end
  end
end
