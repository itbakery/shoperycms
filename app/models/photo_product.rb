class PhotoProduct
  include Mongoid::Document
  field :name, type: String
  mount_uploader  :photo,  ImageProductUploader
  embedded_in :product_catalog
end
