class BlogItemsController < ApplicationController
  before_action :set_blog_item, only: [:show, :edit, :update, :destroy]

  # GET /blog_items
  # GET /blog_items.json
  def index
    @blog_items = BlogItem.all
  end

  # GET /blog_items/1
  # GET /blog_items/1.json
  def show
  end

  # GET /blog_items/new
  def new
    @blog_item = BlogItem.new
  end

  # GET /blog_items/1/edit
  def edit
  end

  # POST /blog_items
  # POST /blog_items.json
  def create
    @blog_item = BlogItem.new(blog_item_params)

    respond_to do |format|
      if @blog_item.save
        format.html { redirect_to @blog_item, notice: 'Blog item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @blog_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @blog_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_items/1
  # PATCH/PUT /blog_items/1.json
  def update
    respond_to do |format|
      if @blog_item.update(blog_item_params)
        format.html { redirect_to @blog_item, notice: 'Blog item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @blog_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_items/1
  # DELETE /blog_items/1.json
  def destroy
    @blog_item.destroy
    respond_to do |format|
      format.html { redirect_to blog_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_item
      @blog_item = BlogItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_item_params
      params.require(:blog_item).permit(:name, :content, :tags, :time)
    end
end
