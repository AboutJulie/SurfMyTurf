class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

# This is for testing Github