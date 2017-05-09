class Experience < ApplicationRecord
  def index
    render "index.json.jbuilder"
  end
end
