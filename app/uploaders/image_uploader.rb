class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  storage :file
  process :resize_to_limit => [200, 200]
  process :convert => 'jpg'
  def extension_white_list
    %w(jpg jpeg gif png)
  end
  def filename
    super.chomp(File.extname(super)) + '.jpg' if original_filename.present?
  end

end


