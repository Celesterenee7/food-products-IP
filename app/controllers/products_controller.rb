class ProductsController < ApplicationController
  # before_action :admin_access, only: [:new, :edit, :update, :create, :destroy]

  before_action :authenticate_user!
  before_action do 
    redirect_to new_user_session_path unless current_user && current_user.admin?
  end
 

  def admin?
    self.admin == true
  end

  def index
      @products = Product.all
      render :index
  end

  def show
    @product = Product.find(params[:id])
    render :show
  end
    
  def new
    @product = Product.new
    render :new
  end

  def edit
    @product = Product.find(params[:id])
    render :edit
  end
    
  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully added!"
      redirect_to products_path
    else
      render :new
    end
  end
    
  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end
    
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :cost, :country_of_origin)
  end

end