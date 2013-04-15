class Request < ActiveRecord::Base
  attr_accessible :title,:budget, :date, :deliverable, :department, :description, :email, :name, :priority, :quantity, :time, :approved, :comments, :status

  validate :date_is_less_than_one_week_from_today


  def date_is_less_than_one_week_from_today
  	if date<(Date.today+7)
  		errors.add(:date,"-- the Request Date is invalid.")
    end
  end
 

def self.search(search)
  if search
    where('name LIKE ?', "%#{search}%")
  else
    scoped
  end
end


end
