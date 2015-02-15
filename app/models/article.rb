class Article < ActiveRecord::Base
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment :photo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  validates :url, {
    :allow_blank => true,
    :format => URI::regexp(%w(http https)),
  }
end
