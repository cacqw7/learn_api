class Link < ActiveRecord::Base
  before_save :save_link_properties
  validates_presence_of :url
  validates :url, :url => true



private
  def save_link_properties
    link = LinkThumbnailer.generate(url)

    if link.images.blank?
      self.title = self.description = url
    else
      self.title = link.title if title.blank?
      self.description = link.description if description.blank?
      image_src = link.images.first.src
      return if image_src.blank?
      self.thumbnail_url = image_src if link_is_valid?(image_src)
    end
  rescue LinkThumbnailer::Exceptions => e
    puts "\e[0;31m LinkThumbnailer raised #{e} \e[0m\n"
  end

  def link_is_valid?(url)
    good_codes = [200, 304]
    response = HTTParty.get(url)
    good_codes.include?(response.code)
  end
end
