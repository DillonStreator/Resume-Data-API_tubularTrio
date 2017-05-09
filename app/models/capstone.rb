class Capstone < ApplicationRecord
  def index
    render "index.json.jbuilder"
  end
end
