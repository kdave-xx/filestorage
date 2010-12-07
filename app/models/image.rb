class Image < ActiveRecord::Base

  has_attached_file :image,
                    :storage => :s3,
                    :s3_credentials => "#{RAILS_ROOT}/config/amazon_s3.yml",
                    :bucket => BUCKET_NAME,
                    :styles => {
                      :large => "640x640>",
                      :medium => "320x320>",
                      :thumb => "100x100>"
                    },
                    :path => "/system/images/:id/:style/:id.:extension",
                    :url  => "/system/images/:id/:style/:id.:extension"

  validates_attachment_size :image, :less_than => 10.megabyte

  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/pjpeg', 'image/x-png', 'image/png', 'image/gif']
  validates_attachment_presence :image
  validates_presence_of :name
                    
end
