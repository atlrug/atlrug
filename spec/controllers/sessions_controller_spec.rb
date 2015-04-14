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
    before { allow(user).to receive_messages(:atlrug_organizer? => true) }

    it 'attempts to find a user by auth hash' do
      allow_any_instance_of(SessionsController).to receive_messages(
        :auth_hash => auth_hash)
      expect(User).to receive(:find_by_hash).with(auth_hash).and_return(user)
      post :create, :provider => 'github'
    end

    it 'creates a user by auth hash if one is not found' do
      allow_any_instance_of(SessionsController).to receive_messages(
        :auth_hash => auth_hash)
      allow(User).to receive_messages(:find_by_hash => nil)
      expect(User).to receive(:create_from_hash).with(auth_hash
        ).and_return(user)
      post :create, :provider => 'github'
    end

    it "logs the user in if they're an organizer" do
      allow(User).to receive_messages(:atlrug_organizer? => true)
      allow(User).to receive_messages(:find_by_hash => user)
      post :create, :provider => 'github'
      expect(session[:user_id]).to eq(user.id)
    end

    it "doesn't log the user in if they're not an organizer" do
      allow(user).to receive_messages(:atlrug_organizer? => false)
      allow(User).to receive_messages(:find_by_hash => user)
      post :create, :provider => 'github'
      expect(session[:user_id]).to be_nil
    end

    it 'redirects to root' do
      allow(User).to receive_messages(:find_by_hash => user)
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
