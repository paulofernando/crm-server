class Role < ActiveRecord::Base
  enum name: { Accused: 0, Judge: 1, Barrister: 2, Prosecutor: 3 }
end
