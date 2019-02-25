describe 'MockResource with List and Retrieve' do
  let(:klass) do
    Class.new do
      extend Balldontlie::Operations::List
      extend Balldontlie::Operations::Retrieve
      extend Balldontlie::Request

      def self.resource_url
        '/dummy_resource'
      end
    end
  end

  let(:params) { { page: 3 } }
  let(:response) { double(body: '{}') }

  before do
    mock_client = double

    expect(mock_client)
      .to receive(:get)
      .with(expected_url, params)
      .and_return(response)

    expect(Balldontlie).to receive(:client).and_return(mock_client)
  end

  describe '#list' do
    let(:expected_url) { '/dummy_resource' }

    it 'performs the correct request' do
      expect(klass.list(params)).to eq({})
    end
  end

  describe '#get' do
    let(:resource_id) { 1 }
    let(:expected_url) { "/dummy_resource/#{resource_id}" }

    it 'performs the correct request' do
      expect(klass.retrieve(resource_id, params)).to eq({})
    end
  end
end
