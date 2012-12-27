class Prato < ActiveRecord::Base
  attr_accessible :nome

  validates_presence_of :nome

  validates_uniqueness_of :nome

  has_and_belongs_to_many :restaurante
  has_one :receita

  validate :validate_presence_of_more_than_one_restaurante

  private
  validate :validate_presence_of_more_than_one_restaurante
  errors.add("restaurante", "deve haver ao menos um restaurante") if restaurantes.empty?
end
