require_relative '../lib/track.rb'

describe Track do
  let(:stairway_to_heaven) { Track.new(title: 'Stairway to Heaven', artists: ['Led Zeppelin'], duration: 360, price: 5.00) }
  let(:its_so_hard)  { Track.new(title: 'Its so hard', artists: ['Big Pun','Donell Jones'], duration: 172, price: 4.00) }
  describe 'attributes' do
    it 'has a title, list of artists, duration, price' do



      expect(stairway_to_heaven.title).to eq 'Stairway to Heaven'
      expect(stairway_to_heaven.artists).to eq ['Led Zeppelin']
      expect(stairway_to_heaven.duration).to eq 360
      expect(stairway_to_heaven.price).to eq 5.00

      expect(its_so_hard.title).to eq 'Its so hard'
      expect(its_so_hard.artists).to eq ['Big Pun','Donell Jones']
      expect(its_so_hard.duration).to eq 172
      expect(its_so_hard.price).to eq 4.00
    end
  end

  describe '#set_discount' do
    it 'reduces the price by a given percentage' do
      stairway_to_heaven.set_discount(5)
      its_so_hard.set_discount(10)

      expect(stairway_to_heaven.price).to eq 4.75
      expect(its_so_hard.price).to eq 3.60
    end
  end

  describe '#reset_discount' do
    it 'restores the price to its original price' do
      stairway_to_heaven.set_discount(5)
      its_so_hard.set_discount(10)

      stairway_to_heaven.reset_discount
      its_so_hard.reset_discount

      expect(stairway_to_heaven.price).to eq 5
      expect(its_so_hard.price).to eq 4
    end
  end

end
