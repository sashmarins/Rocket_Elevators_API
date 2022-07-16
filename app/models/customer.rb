class Customer < ApplicationRecord
    belongs_to :user, optional: true
    # geocoded_by :address
    # after_validation :geocode
    #if customer email == lead.email
    #create dropbox directory
    #if there is an attachment associated with this lead
    # store it in dropbox and delete it from active storage


end
