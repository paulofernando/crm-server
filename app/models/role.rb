class Role < ActiveRecord::Base
    enum name: { accused: 0, judge: 1, barrister: 2, prosecutor: 3 }
end