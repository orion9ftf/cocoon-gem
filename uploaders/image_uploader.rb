class ImageUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  include CarrierWave::MiniMagick
  include CarrierWave::ImageOptimizer
 
  process :optimize
  process :quality => 100
  # Choose what kind of storage to use for this Uploader:
  storage :file
  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/images"
  end

  process :resize_to_fill => [200, 200]
  process :convert => 'png'

  version :thumb do
    process :resize_to_fit => [100, 100]
    process :convert => 'jpg'
  end
  
  version :cover   do
    process :resize_to_fit => [240, 180]
    process :convert => 'jpg'
  end
  
  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    %w(jpg jpeg png gif webp)
  end
end
