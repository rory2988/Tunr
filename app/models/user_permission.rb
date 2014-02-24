class UserPermission < ActiveRecord::Base
  belongs_to :user
  belongs_to :playlist

  validates :playlist, :user, presence: true
  validate :playlist_can_only_be_accessed_by_permitted_users

  private

  #def playlist_can_only_be_accessed_by_permitted_users
    #return unless user && playlist
    #unless user == playlist.user
      #errors.add(:user, "The playlist can only be accessed by permitted users")
    #end
  #end

end