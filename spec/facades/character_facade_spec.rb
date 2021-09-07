require 'rails_helper'

RSpec.describe MovieFacade do
  before :each do
    
  end

  it 'can create a movie' do
    movie = MovieFacade.create_movie('550')

    expect(movie).to be_an_instance_of(Movie)
    expect(movie.title).to eq("Fight Club")
  end

  it 'can return a hash of a given movie cast' do
    expected = [{name: "Edward Norton", character: "The Narrator"}, {name: "Brad Pitt", character: "Tyler Durden"}]

    expect(MovieFacade.cast_information('550')).to eq(expected)
  end

  it 'can return a hash of just review information for a given movie' do
    expected = [{author: "Goddard", review: "Pretty awesome movie.  It shows what one crazy person can convince other crazy people to do.  Everyone needs something to believe in.  I recommend Jesus Christ, but they want Tyler Durden."}, {author: "Brett Pascoe", review: "In my top 5 of all time favourite movies. Great story line and a movie you can watch over and over again."}]

    expect(MovieFacade.movie_review_info('550')).to eq(expected)
  end

  it 'can create a movie information hash' do
    expected = {original_title: 'Fight Club',
                overview: "A ticking-time-bomb insomniac and a slippery soap salesman channel primal male aggression into a shocking new form of therapy. Their concept catches on, with underground \"fight clubs\" forming in every town, until an eccentric gets in the way and ignites an out-of-control spiral toward oblivion.",
                vote_average: '8.4',
                genres: ["Drama"],
                cast: [{name: "Edward Norton", character: "The Narrator"}, {name: "Brad Pitt", character: "Tyler Durden"}],
                reviews: [{author: "Goddard", review: "Pretty awesome movie.  It shows what one crazy person can convince other crazy people to do.  Everyone needs something to believe in.  I recommend Jesus Christ, but they want Tyler Durden."}, {author: "Brett Pascoe", review: "In my top 5 of all time favourite movies. Great story line and a movie you can watch over and over again."}],
                id: '550',
                genres: ['Drama'],
                runtime: '139',
                image_url: 'https://image.tmdb.org/t/p/w500/pB8BM7pdSp6B6Ih7QZ4DrQ3PmJK.jpg'}

    expect(MovieFacade.movie_information('550')).to eq(expected)
  end

  it 'can create the top 40 movies' do
    json_response1 = File.read('spec/fixtures/popular_movies1.json')
    json_response2 = File.read('spec/fixtures/popular_movies2.json')

    stub_request(:get, "https://api.themoviedb.org/3/movie/popular?api_key=#{ENV['movie_key']}&page=1").
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'User-Agent'=>'Faraday v1.7.0'
           }).
         to_return(status: 200, body: json_response1, headers: {})

    stub_request(:get, "https://api.themoviedb.org/3/movie/popular?api_key=#{ENV['movie_key']}&page=2").
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'User-Agent'=>'Faraday v1.7.0'
           }).
         to_return(status: 200, body: json_response2, headers: {})

    movie = MovieFacade.create_top_movies[0]

    expect(movie).to be_an_instance_of(Movie)
    expect(MovieFacade.create_top_movies.size).to eq(40)
  end

  it 'can create searched movies' do
    json_response = File.read('spec/fixtures/search_movie.json')

        stub_request(:get, "https://api.themoviedb.org/3/search/movie?api_key=#{ENV['movie_key']}&include_adult=false&page=1&query=fight%20club").
          with(
            headers: {
        	  'Accept'=>'*/*',
        	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        	  'User-Agent'=>'Faraday v1.7.0'
            }).
          to_return(status: 200, body: json_response, headers: {})

    movie = MovieFacade.create_searched_movies('fight club')[0]

    expect(movie).to be_an_instance_of(Movie)
  end
end
