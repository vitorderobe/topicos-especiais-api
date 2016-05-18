require "spec_helper"

# rake db:test:prepare
# rake db:seed RAILS_ENV=test

# rake db:drop db:create db:migrate RAILS_ENV=test --trace

# bundle exec rspec spec/controllers/api/v1/games_controller_spec.rb --format documentation

describe Api::V1::GamesController, :type => :controller do

  it "makes a GET request" do
    get :index

    expected = []
    expected << FactoryGirl.attributes_for(:first_game).except(:created_at, :updated_at)
    expected << FactoryGirl.attributes_for(:second_game).except(:created_at, :updated_at)

    expect(response).to be_success
    expect(response.body).to eq(expected.to_json)
  end

  it "makes a GET request by id" do
    get :show, { id: 1 }

    expected = FactoryGirl.attributes_for(:first_game).except(:created_at, :updated_at)

    expect(response).to be_success
    expect(response.body).to eq(expected.to_json)
  end

  it "makes a POST request" do
    get :create, { home: "Steelers", away: "Patriots", home_score: "0", away_score: "0",
      championship: "NFL", place: "Heinz Field", date: "13/05/16", time: "21:00" }

    expected = FactoryGirl.attributes_for(:third_game).except(:created_at, :updated_at)  

    expect(response.status).to eq(201)
    expect(response.body).to eq(expected.to_json)
  end  

end