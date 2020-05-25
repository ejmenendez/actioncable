class User < ApplicationRecord
  validates_uniqueness_of :username

  def self.generate
    adjectives = ['Antiguo', 'Roto', 'Creativo', 'Peligroso', 'Efectivo', 'Volador', 'Dorado']
    nouns = ['Ruta', 'Pasante', 'Maza', 'Leon', 'Capo']
    number = rand.to_s[2..4]
    username = "#{adjectives.sample}-#{nouns.sample}-#{number}"
    create(username: username)
  end

end
