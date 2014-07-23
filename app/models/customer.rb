class Customer
  include MongoMapper::Document
  key :company, String
  key :street, String
  key :plz, Integer
  key :city, String
  key :state, String

end
