class PostsController < ApplicationController
  layout :choose_layout
  def choose_layout
    return 'dashboard' if action_name == 'chat_index'
    return 'dashboard' if action_name == 'index'
    return 'dashboard' if action_name == 'new'
    return 'dashboard' if action_name == 'show'
  end
  def index
    @posts =Post.order('created_at DESC')

  end

  def show
    if(params[:demo].present?)
      @post=Post.find(params[:id])
      logger.info("this is the text")
      @comment = @post.comments.new(:commenter=>params[:commenter],:message =>params[:message],:users_id=>session[:user_id])
      respond_to do |format|
        if @comment.save
          format.js
        else
          format.html{render :action => "show"}
        end
      end
    else
      @post=Post.find(params[:id])
    end
  end
  def new

    @post =Post.new

  end

  def create

    @post=Post.new(params[:post])
    if @post.save
      redirect_to   posts_path
    else
      render :action => "new"
    end
  end

  def comment

    @post=Post.find(params[:id])
    @comment = @post.comments.create(params[:comment])
    redirect_to  posts_path

  end

  def edit
    @post =Post.find(params[:id])
  end

  def update
    @post =Post.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to post_path(@post)
    else
      render :action => "edit"

    end
  end
  def delete
    #@post =Post.find(params[:id])
    @com=Comment.find(params[:id])
    if @com.destroy
      redirect_to  :action => "index"
    end
  end

  def chat_index
    @chats=Chat.all
    @chat=Chat.new(params[:chat])
    if request.post?
      @chat.save
    end
  end
  def add_wall_post
    #@post=Post.find(params[:post_id])
    #@comment = @post.comments.create(params[:comment])
    #redirect_to  post_path(@post)
    respond_to do |format|
      format.js
    end
  end


end