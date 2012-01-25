class ServicesController < ApplicationController
  def new
  	@title = "Add New Service"
  	@service = Service.new

  	respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @service }
    end
  end

  def show
    @service = Service.find(params[:id])
    @title = @service.name
  end

  def create
    @service = Service.new(params[:service])

	respond_to do |format|
      if @service.save
        format.html { redirect_to @service, notice: 'Service was successfully created.' }
        format.json { render json: @service, status: :created, location: @service }
      else
        format.html { render action: "new" }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  	@service = Service.find(params[:id])
    @title = "Edit Service"
  end

  def update
    @service = Service.find(params[:id])
    if @service.update_attributes(params[:service])
      flash[:success] = "Service updated."
      redirect_to @service
    else
      @title = "Edit service"
      render 'edit'
    end
  end

  def index
    @title = "All services"
    @services = Service.all
  end

end
