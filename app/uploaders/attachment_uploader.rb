class AttachmentUploader < CarrierWave::Uploader::Base
  
  # # Choose what kind of storage to use for this uploader:
  # storage :file
  # # storage :fog

  # # Override the directory where uploaded files will be stored.
  # # This is a sensible default for uploaders that are meant to be mounted:
  # def store_dir
  #   "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  # end


  # # Add an allowlist of extensions which are allowed to be uploaded.
  # # For images you might use something like this:
  # def extension_allowlist
  #   %w(zip pdf jpg jpeg gif png)
  # end
end
