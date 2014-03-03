class Profile
  include Mongoid::Document
  include Geocoder::Model::Mongoid
  belongs_to :user
  mount_uploader  :avatar, AvatarUploader
  field :first_name, type: String
  field :last_name, type: String
  field :address, type: String
  field :city, type: String
  field :province, type: String
  field :country, type: String
  field :postal_code, type: String
  field :coordinates, type: Array
  field :latitude, type: Float
  field :longitude, type: Float
  validates_presence_of :first_name
  validates_presence_of :last_name

  scope :recent, -> { where(:created_at.gte => (Time.now - 2.weeks)).order("created_at desc") }
  scope :current, -> { where(:created_at.lte => Date.today ).order("created_at desc") }
  geocoded_by :full_address
  after_validation :geocode

  def full_address
    "#{address},#{city},#{province},#{country},#{postal_code}"
  end

  before_save :set_latlng
  def set_latlng
    self.longitude = coordinates[0]
    self.latitude = coordinates[1]
  end

end
