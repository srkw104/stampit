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

    desc "returns a tournament"
    params do
      requires :id, type:Integer
    end
    route_param :id do
      get do
        Tournament.find(params[:id])
      end
    end
  end

  resource "stamps" do
    # ex) http://localhost:3000/api/v1/users
    desc "returns all stamps"
    get do
      Stamp.publishing(Time.now)
    end

    desc "returns same tournaments on stamps"
    params do
      requires :id, type:Integer
    end
    route_param :id do
      get do
        Stamp.where("tournament_id = ? ", params[:id])
      end
    end
  end

  resource "stamp_image" do
    desc "returns same tournaments on stamps image"
    params do
      requires :id, type:Integer
    end
    route_param :id do
      get do
        stamp = Stamp.find(params[:id])

        content_type "application/octet-stream"
        header['Content-Disposition'] = "attachement; filename=%d_%s" % [stamp.id, stamp.photo.original_filename]
        env['api.format'] = :binary
	File.open(stamp.photo.path()).read
      end
    end
  end

  resource "version" do
    # ex) http://localhost:3000/api/v1/users
    desc "returns all tournaments"
    get do
      max_t = Tournament.maximum('updated_at')
      max_s = Stamp.maximum('updated_at')

      [max_t.strftime("%Y%m%d%H%M%S") + max_s.strftime("%Y%m%d%H%M%S")]
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
