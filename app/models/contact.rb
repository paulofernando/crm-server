class Contact < ApplicationRecord
  belongs_to :case
  enum case_role: [ :ACCUSED, :JUDGE, :BARRISTER, :PROSECUTOR ]
end
