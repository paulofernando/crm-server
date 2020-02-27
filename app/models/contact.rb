class Contact < ApplicationRecord  
  belongs_to :case  
  enum case_role: [ :ACCUSED, :JUDGE, :BARRISTER, :PROSECUTOR ]

  validates :case, presence: true
  validates :first_name, :last_name, :case_role, presence: true
  validates :email, presence: true, uniqueness: {message: "already subscribed"}
  validates :first_name, length: { in: 3..20 ,
    too_short: "%{count} characters is the minimun allowed",
    too_long: "%{count} characters is the maximum allowed" }  
  validates :last_name, length: { in: 3..20 ,
    too_short: "%{count} characters is the minimun allowed",
    too_long: "%{count} characters is the maximum allowed" }
  
end
