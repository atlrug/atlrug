require 'spec_helper'

describe User, type: :model do
  let(:uid)       { '12345' }
  let(:name)      { 'Mike Skalnik' }
  let(:login)     { 'skalnik' }
  let(:token)     { 'abcedf123456' }
  let(:auth_hash) do
    { 'uid' => uid, 'info' => { 'name' => name,
                                'nickname' => login },
      'credentials' => { 'token' => token } }
  end

  context 'validations' do
    it 'is invalid if it has a non-unique uid' do
      user1 = FactoryGirl.create(:user, uid: uid)
      user2 = FactoryGirl.build(:user, uid: uid)
      expect(user2).to be_invalid
    end
  end

  describe '.find_by_hash' do
    it 'finds a user by uid' do
      expect(User).to receive(:find_by_uid).with(uid)
      User.find_by_hash(auth_hash)
    end
  end

  describe '.create_from_hash' do
    it 'creates a new user with parameters given' do
      expect(User).to receive(:create).with(name: name, uid: uid,
                                            github_login: login, github_token: token)
      User.create_from_hash(auth_hash)
    end
  end

  describe '#octokit' do
    it 'creates an octokit client with the users GitHub credentials' do
      user = FactoryGirl.build(:user, github_login: login,
                                      github_token: token)
      expect(Octokit::Client).to receive(:new).with(login: login,
                                                    oauth_token: token)
      user.octokit
    end
  end

  describe '#atlrug_team_id' do
    it 'looks up the Owners team id' do
      user = FactoryGirl.build(:user)
      teams = [double(name: 'ATLRUGers'), double(name: 'Owners',
                                                 id: 1), double(name: 'Other')]
      octokit = double(org_teams: teams)
      allow(user).to receive_messages(octokit: octokit)
      expect(user.atlrug_team_id).to eq(1)
    end

    it "doesn't raise exception if user has no permission to ATLRUG org" do
      user = FactoryGirl.build(:user)
      octokit = double and allow(octokit).to receive(
        :org_teams).and_raise(Octokit::Forbidden)
      allow(user).to receive_messages(octokit: octokit)

      expect { user.atlrug_team_id }.to_not raise_error
    end
  end

  describe '#atlrug_organizer?' do
    let(:user) { FactoryGirl.build(:user, uid: uid) }

    it 'is true if the user is in the ATLRUG Owners team' do
      members = [double(id: uid + '1'), double(id: uid),
                 double(id: uid + '10')]
      octokit = double(team_members: members)
      allow(user).to receive_messages(octokit: octokit)
      allow(user).to receive_messages(atlrug_team_id: 1)

      expect(user.atlrug_organizer?).to be_truthy
    end

    it 'is false if the user is not in the ATLRUG Owners team' do
      members = [double(id: uid + '1'), double(id: uid + '10')]
      octokit = double(team_members: members)
      allow(user).to receive_messages(octokit: octokit)
      allow(user).to receive(:atlrug_team_id)

      expect(user.atlrug_organizer?).to be_falsey
    end
  end
end
