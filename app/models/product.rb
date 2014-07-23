class Product
  include MongoMapper::Document

  key :name, String
  key :part_number, Integer
  key :production_number, String
  key :committee, String
  key :drawing_number, String

end
