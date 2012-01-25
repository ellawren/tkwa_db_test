class ReimbursablesController < ApplicationController
  # GET /reimbursables
  # GET /reimbursables.json
  def index
    @reimbursables = Reimbursable.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reimbursables }
    end
  end

  # GET /reimbursables/1
  # GET /reimbursables/1.json
  def show
    @reimbursable = Reimbursable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reimbursable }
    end
  end

  # GET /reimbursables/new
  # GET /reimbursables/new.json
  def new
    @reimbursable = Reimbursable.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reimbursable }
    end
  end

  # GET /reimbursables/1/edit
  def edit
    @reimbursable = Reimbursable.find(params[:id])
  end

  # POST /reimbursables
  # POST /reimbursables.json
  def create
    @reimbursable = Reimbursable.new(params[:reimbursable])

    respond_to do |format|
      if @reimbursable.save
        format.html { redirect_to @reimbursable, notice: 'Reimbursable was successfully created.' }
        format.json { render json: @reimbursable, status: :created, location: @reimbursable }
      else
        format.html { render action: "new" }
        format.json { render json: @reimbursable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reimbursables/1
  # PUT /reimbursables/1.json
  def update
    @reimbursable = Reimbursable.find(params[:id])

    respond_to do |format|
      if @reimbursable.update_attributes(params[:reimbursable])
        format.html { redirect_to @reimbursable, notice: 'Reimbursable was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @reimbursable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reimbursables/1
  # DELETE /reimbursables/1.json
  def destroy
    @reimbursable = Reimbursable.find(params[:id])
    @reimbursable.destroy

    respond_to do |format|
      format.html { redirect_to reimbursables_url }
      format.json { head :ok }
    end
  end
end
