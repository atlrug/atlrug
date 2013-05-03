class User < ActiveRecord::Base
  validates :uid, :uniqueness => true

  def atlrug_organizer?
    if atlrug_team_id
      octokit.team_members(atlrug_team_id).detect { |member| member.id.to_i == uid.to_i }
    end
  end

  def atlrug_team_id
    octokit.org_teams('atlrug').detect { |org| org.name == "Owners" }.id
  rescue Octokit::Forbidden
    nil
  end

  def octokit
    @client ||= Octokit::Client.new(:login => github_login, :oauth_token => github_token)
  end

  class << self
    def find_by_hash(auth_hash)
      find_by_uid(auth_hash['uid'].to_s)
    end

    def create_from_hash(auth_hash)
      User.create(:name => auth_hash['info']['name'],
                  :uid  => auth_hash['uid'],
                  :github_login => auth_hash['info']['nickname'],
                  :github_token => auth_hash['credentials']['token'])
    end
  end
end
