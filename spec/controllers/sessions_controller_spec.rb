require 'spec_helper'

describe SessionsController, :type => :controller do
  let(:uid)       { '12345' }
  let(:name)      { 'Mike Skalnik' }
  let(:login)     { 'skalnik' }
  let(:token)     { 'abcedf123456' }
  let(:auth_hash) {
                    { 'uid' => uid, 'info' => { 'name' => name,
                      'nickname' => login },
                      'credentials' => { 'token' => token } }
                  }
  let(:user)      { FactoryGirl.create(:user) }

  describe '#create' do
    before { user.stub(:atlrug_organizer? => true) }

    it 'attempts to find a user by auth hash' do
      SessionsController.any_instance.stub(:auth_hash => auth_hash)
      expect(User).to receive(:find_by_hash).with(auth_hash).and_return(user)
      post :create, :provider => 'github'
    end

    it 'creates a user by auth hash if one is not found' do
      SessionsController.any_instance.stub(:auth_hash => auth_hash)
      User.stub(:find_by_hash => nil)
      expect(User).to receive(:create_from_hash).with(auth_hash
        ).and_return(user)
      post :create, :provider => 'github'
    end

    it "logs the user in if they're an organizer" do
      User.stub(:atlrug_organizer? => true)
      User.stub(:find_by_hash => user)
      post :create, :provider => 'github'
      expect(session[:user_id]).to eq(user.id)
    end

    it "doesn't log the user in if they're not an organizer" do
      user.stub(:atlrug_organizer? => false)
      User.stub(:find_by_hash => user)
      post :create, :provider => 'github'
      expect(session[:user_id]).to be_nil
    end

    it 'redirects to root' do
      User.stub(:find_by_hash => user)
      post :create, :provider => 'github'
      expect(response).to redirect_to root_url
    end
  end

  describe '#destroy' do
    it 'logs the existing user out' do
      session[:user_id] = 1
      delete :destroy
      expect(session[:user_id]).to be_nil
    end
  end
end
