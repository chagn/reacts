class CommentsController < HomeController

  skip_before_action :verify_authenticity_token


  def index
    respond_to do |format|
      format.html {

      }
      format.json {
        @comments = Comment.all
        # @data = [
        #   {id: 1, author: "Pete Hunt", content: "This is one comment"},
        #   {id: 2, author: "Jordan Walke", content: "This is *another* comment"}
        # ]
        render json: @comments.to_json
      }
    end
  end

  def create
    @comment = Comment.create(comment_permit_params)
    respond_to do |format|
      format.html {
        redirect_to :back
      }
      format.json {
        @comments = Comment.all
        render json: @comments.to_json
      }
    end    
  end

  private
  def comment_permit_params
    params.require(:comment).permit(
        :author,
        :content,
      )
  end

end
