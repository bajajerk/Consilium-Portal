class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  belongs_to :mockstock
  belongs_to :bcase
  belongs_to :tradeverse
  belongs_to :kaizen
  belongs_to :shatranj
  belongs_to :casechallenge

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # devise :omniauthable, omniauth_providers: %i[facebook]
  devise :omniauthable, :omniauth_providers => [:facebook]



  def self.from_omniauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.email = auth.info.email
    user.password = Devise.friendly_token[0,20]
    user.name = auth.info.name   # assuming the user model has a name
    # user.image = auth.info.image # assuming the user model has an image
    # If you are using confirmable and the provider(s) you use validate emails, 
    # uncomment the line below to skip the confirmation emails.
    # user.skip_confirmation
  end
end

# def self.new_with_session(params, session)
#   super.tap do |user|
#     if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
#       user.email = data["email"] if user.email.blank?
#     end
#   end
# end

# def self.from_omniauth(auth)
#   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
#     user.email = auth.info.email
#     user.password = Devise.friendly_token[0,20]
#     user.name = auth.info.name   # assuming the user model has a name
#     # user.image = auth.info.image # assuming the user model has an image
#   end
# end



end
