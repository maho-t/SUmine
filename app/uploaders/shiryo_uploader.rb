class ShiryoUploader < CarrierWave::Uploader::Base
  
  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  include CarrierWave::MiniMagick

    process resize_to_fit: [800, 800]

  version :thumb do
    process resize_to_fit: [200, 200]
  end

  def extension_allowlist
    %w(jpg jpeg gif png)
  end
end
