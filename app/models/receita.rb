class Receita < ActiveRecord::Base
  attr_accessible :prato_id, :conteudo
  validates_presence_of :conteudo
  validates_presence_of :prato_id
  validates_associated :prato

  belongs_to :prato
end
