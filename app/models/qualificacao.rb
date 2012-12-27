class Qualificacao < ActiveRecord::Base
  attr_accessible :cliente_id, :nota, :restaurante_id, :valor_gasto
end
