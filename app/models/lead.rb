require 'http'
class Lead < ApplicationRecord
    has_one_attached :attachment
    after_create :dropboxStorage

    def dropboxStorage
        Customer.all.each do |customer|
            if self.email == customer.email && self.attachment != nil
                attachmentpath = ActiveStorage::Blob.service.path_for(self.attachment.key)
                dropboxhash = {
                    "autorename": false,
                    "mode": "add",
                    "mute": false,
                    "path": attachmentpath,
                    "strict_conflict": false
                  }
                  puts "putting HTTP response"
                 h = HTTP.headers(:accept => "application/json").headers(:dropbox_API_arg => dropboxhash.to_json).headers(:content_type => "application/octet-stream").auth(ENV["DROPBOX_API_KEY"]).post('https://content.dropboxapi.com/2/files/upload')
                 puts h
                  self.attachment.purge
            end
        end
    end

end

# attachmentpath = ActiveStorage::Blob.service.path_for(attachment.key)