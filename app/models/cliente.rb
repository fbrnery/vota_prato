class Cliente < ActiveRecord::Base
  attr_accessible :nome, :idade

  validates_presence_of :nome

  validates_uniqueness_of :nome

  validates_numericality_of :idade, greater_than: 0, less_than: 100

  has_many :qualificacoes
end
