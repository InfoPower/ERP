class UnitOfMeasuresController < ApplicationController
  # GET /unit_of_measures
  # GET /unit_of_measures.json
  def index
    @unit_of_measures = UnitOfMeasure.order(:uom).page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @unit_of_measures }
    end
  end

  # GET /unit_of_measures/1
  # GET /unit_of_measures/1.json
  def show
    @unit_of_measure = UnitOfMeasure.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @unit_of_measure }
    end
  end

  # GET /unit_of_measures/new
  # GET /unit_of_measures/new.json
  def new
    @unit_of_measure = UnitOfMeasure.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @unit_of_measure }
    end
  end

  # GET /unit_of_measures/1/edit
  def edit
    @unit_of_measure = UnitOfMeasure.find(params[:id])
  end

  # POST /unit_of_measures
  # POST /unit_of_measures.json
  def create
    @unit_of_measure = UnitOfMeasure.new(params[:unit_of_measure])

    respond_to do |format|
      if @unit_of_measure.save
        format.html { redirect_to @unit_of_measure, notice: 'Unit of measure was successfully created.' }
        format.json { render json: @unit_of_measure, status: :created, location: @unit_of_measure }
      else
        format.html { render action: "new" }
        format.json { render json: @unit_of_measure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /unit_of_measures/1
  # PUT /unit_of_measures/1.json
  def update
    @unit_of_measure = UnitOfMeasure.find(params[:id])

    respond_to do |format|
      if @unit_of_measure.update_attributes(params[:unit_of_measure])
        format.html { redirect_to @unit_of_measure, notice: 'Unit of measure was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @unit_of_measure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unit_of_measures/1
  # DELETE /unit_of_measures/1.json
  def destroy
    @unit_of_measure = UnitOfMeasure.find(params[:id])
    @unit_of_measure.destroy

    respond_to do |format|
      format.html { redirect_to unit_of_measures_url }
      format.json { head :no_content }
    end
  end

  def edit_individual
    @unit_of_measures = UnitOfMeasure.find(params[:unit_of_measure_ids])
    if params[:delete]
      @unit_of_measures.each do |uom|
        UnitOfMeasure.destroy(uom.id)
      end
      redirect_to unit_of_measures_url(:page => params[:cur_page])
    elsif params[:details]
      render :template => 'unit_of_measures/show_details.html.erb'
    else
      render :template => 'unit_of_measures/edit_individual.html.erb'
    end
  end

  def update_individual
    UnitOfMeasure.update(params[:uoms].keys, params[:uoms].values)
    redirect_to unit_of_measures_url(:page => params[:cur_page])
  end

end
