require './config/initializers/db_pg.rb'

class PgBase < ActiveRecord::Base
    self.abstract_class = true
    establish_connection DB_PG
end

# class  Somebody < PgBase
#     has_many : something
# end

# class Something < PgBase
#     belongs_to : somebody
# end