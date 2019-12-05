class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :name

  # Created serliazer
  # belongs_to :hometown,  seralizer: HometownSerializer


  attribute :hometown_json do |user|
    {
      city: user.hometown.city,
      state: user.hometown.state,
      country: user.hometown.country
    }
  end


end
