describe Balldontlie::List do
  let(:mock_client) { double }
  let(:mock_data) do
    {
      'meta' => {
        'next_page' => 3,
        'previous_page' => 1,
      }
    }
  end
  let(:resource_url) { 'stats' }

  before do
    allow(Balldontlie).to receive(:client).and_return(mock_client)
  end

  subject { Balldontlie::List.new(resource_url, mock_data) }

  context "when calling next_page" do
    context "when no next page" do
      it "does not make a request and returns nil" do
        mock_data['meta']['next_page'] = nil

        expect(mock_client).not_to receive(:get)
        expect(subject.next_page).to be_nil
      end
    end

    it "makes a request for the next page" do
      expect(mock_client)
        .to receive(:get)
        .with(resource_url, { page: 3 })
        .and_return(double(body: '{}'))

      res = subject.next_page
      expect(res).to be_an_instance_of(Balldontlie::List)
      expect(res.data).to eq({})
    end
  end

  context "when calling previous_page" do
    context "when no previous page" do
      it "does not make a request and returns nil" do
        mock_data['meta']['previous_page'] = nil

        expect(mock_client).not_to receive(:get)
        expect(subject.previous_page).to be_nil
      end
    end

    it "makes a request for the previous page" do
      expect(mock_client)
        .to receive(:get)
        .with(resource_url, { page: 1 })
        .and_return(double(body: '{}'))

      res = subject.previous_page
      expect(res).to be_an_instance_of(Balldontlie::List)
      expect(res.data).to eq({})
    end
  end
end
