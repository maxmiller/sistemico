class Uf < ActiveRecord::Base
  has_many :cidades
  validates_presence_of :nome,:sigla , :message => "não pode ser nulo"
  validates_uniqueness_of :nome, :sigla,  :message => "tem de ser único"
end
