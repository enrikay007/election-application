json.extract! vote, :id, :region, :constituency_name, :cpp, :ndp, :ndc, :ppp, :npp, :pnc, :ind, :total_valid_votes, :rejected_votes, :total_votes_cast, :created_at, :updated_at
json.url vote_url(vote, format: :json)
