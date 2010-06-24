class CategoriesController < ApplicationController
  # GET /categories
  # GET /categories.xml
  def index
    @categories = Category.all
  end

  # GET /categories/1
  # GET /categories/1.xml
  def show
    @category = Category.find(params[:id])
  end

  # GET /categories/new
  # GET /categories/new.xml
  def new
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
    @category = Category.find(params[:id])
  end

  # POST /categories
  # POST /categories.xml
  def create
    @category = Category.new(params[:category])
    if @category.save
      redirect_to(categories_url, :notice => 'Category was successfully created.')
    else
      render :action => "new"
    end
  end

  # PUT /categories/1
  # PUT /categories/1.xml
  def update
    @category = Category.find(params[:id])

    if @category.update_attributes(params[:category])
      redirect_to(categories_url, :notice => 'Category was successfully updated.')
    else
      render :action => "edit"
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.xml
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to(categories_url)
  end
end
