class Task < ActiveRecord::Base
  validate :name, presence :true
end
