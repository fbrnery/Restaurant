class Restaurante < ActiveRecord::Base

validates_presence_of :name, message: "deve ser preenchido"

validates_presence_of :endereco, message: "deve ser preenchido"

validates_presence_of :especialidade, message: "deve ser preenchido"
end
