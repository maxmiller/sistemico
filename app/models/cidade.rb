class Cidade < ActiveRecord::Base
  belongs_to :uf
  validates_presence_of :nome, :uf, :message => "não pode ser nulo"
end
