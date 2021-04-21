require_relative 'carta.rb'

class Barajas
      attr_accessor :cartas
    def initialize(cartas = [])
    @cartas = cartas
    serie = [1,2,3,4,5,6,7,8,9,10,11,12,13]
    suits = ['C','D','E','T']
    suits.count.times do |i|
      serie.count.times do |card|
        (cartas.push(Carta.new(serie[card], suits[i])))
      end
    end
  end
  def barajar
    mezclar = cartas.shuffle
    return mezclar
  end
  def sacar
    first_card = cartas.pop(1)
    return first_card
  end
end

barajas = Barajas.new()
puts barajas.sacar