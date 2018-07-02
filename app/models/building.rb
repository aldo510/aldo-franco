class Building < ApplicationRecord

  enum kind: [:residential, :commercial, :office, :health, :education, :cultural, :publics]

end
