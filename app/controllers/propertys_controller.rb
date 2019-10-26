class PropertysController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]


  def index
    @propertys = Property.all
  end

  def show
  end

  def new
    if params[:back]
      @property = Property.new(property_params)
    else
      @property = Property.new
    end
  end

  def edit
  end

  def create
    @property = Property.new(property_params)

    respond_to do |format|
      if @property.save
        format.html {redirect_to @property, notice: '物件情報を登録しました'}
        format.json { render :show, status: :created, location: @property}
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @property.save
        format.html {redirect_to @property, notice: '物件情報を更新しました'}
        format.json { render :show, status: :created, location: @property}
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: '物件情報を削除しました' }
      format.json { head :no_content }
    end
  end

  def confirm
    @property = Property.new(property_params)
    render :new if @property.invalid?
  end

  private

  def set_property
    @property = Property.find(params[:id])
  end

  def property_params
    params.require(:property).permit(:name, :rent, :address, :age, :remarks)
  end

end
