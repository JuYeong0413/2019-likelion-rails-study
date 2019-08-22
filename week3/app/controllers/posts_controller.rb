class PostsController < ApplicationController
  before_action :load_post, only: [:show, :edit, :update, :destroy]

  def index
    # byebug
    @posts = Post.all
  end

  def new
    @post = Post.new # 비어있는 post 객체를 new로 던져준다.
  end

  def create
    # post_infos = {
    #   title: params[:post][:title],
    #   content: params[:post][:content]
    # }
    # Post.create(post_infos)

    # Post.create!(post_info(params)) # 오류가 났을 때 콘솔에 보여줌

    Post.create!(post_params)

    # title = params[:post][:title]
    # content = params[:post][:content]
    # Post.create(title: title, content: content)

    redirect_to root_path
  end

  def show
  end

  def edit
    # load_post
  end

  def update
    # @post = Post.find params[:id]
    @post.update!(post_params)

    redirect_to root_path
  end

  def destroy
    # @post = Post.find(params[:id])
    @post.destroy

    redirect_to root_path
  end

  private
  # def post_info(params)
  #   post_infos = {
  #     title: params[:post][:title],
  #     content: params[:post][:content]
  #   }
  # end

  def post_params
    params.require(:post).permit(:title, :content)
  end

  def load_post
    @post = Post.find params[:id]
  end

end
