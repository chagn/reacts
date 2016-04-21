class CommentsController < HomeController

  def index
    respond_to do |format|
      format.html {

      }
      format.json {
        @data = [
          {id: 1, author: "Pete Hunt", content: "This is one comment"},
          {id: 2, author: "Jordan Walke", content: "This is *another* comment"}
        ]
        render json: @data.to_json
      }
    end
  end

end
