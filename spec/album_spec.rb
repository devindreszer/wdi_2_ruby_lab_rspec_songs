require_relative '../lib/album'

describe Album do
  let(:stairway_to_heaven) { Track.new(title: 'Stairway to Heaven', artists: ['Led Zeppelin'], duration: 360, price: 5.00) }
  let(:led_zeppelin_iv) { Album.new(title: 'Led Zeppelin IV', tracks: [stairway_to_heaven]) }

  describe 'attributes' do
    it 'has a title and a list of Track objects' do

      expect(led_zeppelin_iv.title).to eq 'Led Zeppelin IV'
      expect(led_zeppelin_iv.tracks).to eq [stairway_to_heaven]
    end
  end

end
