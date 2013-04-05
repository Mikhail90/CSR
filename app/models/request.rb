class Request < ActiveRecord::Base
  attr_accessible :budget, :date, :deliverable, :department, :description, :email, :name, :priority, :quantity, :time, :approved, :comments

def self.search(search)
  if search
    where('name LIKE ?', "%#{search}%")
  else
    scoped
  end
end


end
