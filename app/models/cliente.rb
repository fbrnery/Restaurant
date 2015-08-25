class Cliente < ActiveRecord::Base
  validates_presence_of :name, message: "Deve ser preenchido"

  validates_numericality_of :idade, greater_than: 0,
                                    less_than: 100,
                                    message: "Deve ser um número entre 0 e 100"
end


