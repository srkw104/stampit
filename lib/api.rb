class API < Grape::API
  # APIアクセスに接頭辞を付加
  # ex) http://localhost:3000/api
  prefix "api"

  # APIアクセスにバージョン情報を付加
  # ex) http://localhost:3000/api/v1
  version 'v1', :using => :path
  format :json
  content_type :json, "application/json;charset=UTF-8"

  resource "tournaments" do
    # ex) http://localhost:3000/api/v1/users
    desc "returns all tournaments"
    get do
      Tournament.publishing(Time.now)
    end
  end
  resource "stamps" do
    # ex) http://localhost:3000/api/v1/users
    desc "returns all tournaments"
    get do
      Stamp.publishing(Time.now)
    end
  end
  #resource "users" do
  #  # ex) http://localhost:3000/api/v1/users
  #  desc "returns all users"
  #  get do
  #    User.all
  #  end

  #  # ex) OK: http://localhost:3000/api/v1/users/1
  #  # ex) NG: http://localhost:3000/api/v1/users/a
  #  desc "return a user"
  #  params do
  #    requires :id, type: Integer
  #    optional :name, type: String
  #  end
  #  get ':id' do
  #    User.find(params[:id])
  #  end
  #end
end
