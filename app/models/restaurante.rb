# encoding: utf-8
class Restaurante < ActiveRecord::Base
  attr_accessible :nome, :endereco, :especialidade

  validates_presence_of :nome
  validates_presence_of :endereco
  validates_presence_of :especialidade

  validates_uniqueness_of :nome
  validates_uniqueness_of :endereco

  validate :primeira_letra_deve_ser_maiuscula

  has_many :qualificacoes
  has_and_belongs_to_many :pratos

  private
  def primeira_letra_deve_ser_maiuscula
   errors.add(:nome, "primeira letra de ser maiúscula") unless nome =~ /[A-Z].*/
  end
end
