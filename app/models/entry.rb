class Entry < ActiveRecord::Base
  has_attached_file :avatar,
                    :styles => { medium: "280*280#", thumb: "100*100#"}
  validates_attachment_content_type :avatar,
                                    :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
