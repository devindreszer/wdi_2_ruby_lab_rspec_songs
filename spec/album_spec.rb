require_relative '../lib/album'

describe Album do
  let(:stairway_to_heaven) { Track.new(title: 'Stairway to Heaven', artists: ['Led Zeppelin'], duration: 360, price: 5.00) }
  let(:black_dog) { Track.new(title: 'Black Dog', artists: ['Led Zeppelin'], duration: 360, price: 5.00) }
  let(:its_so_hard)  { Track.new(title: 'Its so hard', artists: ['Big Pun','Donell Jones'], duration: 172, price: 4.00) }
  let(:led_zeppelin_iv) { Album.new(title: 'Led Zeppelin IV', tracks: [stairway_to_heaven, black_dog, its_so_hard]) }
  let(:bad_single) { Album.new(title: 'Bad Album', tracks: [its_so_hard])}


  describe 'attributes' do
    it 'has a title and a list of Track objects' do

      expect(led_zeppelin_iv.title).to eq 'Led Zeppelin IV'
      expect(led_zeppelin_iv.tracks).to eq [stairway_to_heaven, black_dog, its_so_hard]
      expect(led_zeppelin_iv.duration).to eq 892
      expect(led_zeppelin_iv.price).to eq 14.0
      expect(led_zeppelin_iv.artists).to match_array ['Led Zeppelin', 'Big Pun', 'Donell Jones']

    end
  end

  describe '#determine_is_single?' do
    it 'determines if an album is a single' do
      expect(led_zeppelin_iv.determine_is_single?).to eq false
      expect(bad_single.determine_is_single?).to eq true
    end
  end


end
