class Image < ApplicationRecord
  validates_format_of :url, :with => %r{\.(png|jpg|jpeg|CAU)$}i, :message => "must have a valid filetype", multiline: true  
  

  belongs_to :product
  
end
