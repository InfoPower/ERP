class UnitOfMeasureConversionsController < ApplicationController
  # GET /unit_of_measure_conversions
  # GET /unit_of_measure_conversions.json
  def index
    @unit_of_measure_conversions = UnitOfMeasureConversion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @unit_of_measure_conversions }
    end
  end

  # GET /unit_of_measure_conversions/1
  # GET /unit_of_measure_conversions/1.json
  def show
    @unit_of_measure_conversion = UnitOfMeasureConversion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @unit_of_measure_conversion }
    end
  end

  # GET /unit_of_measure_conversions/new
  # GET /unit_of_measure_conversions/new.json
  def new
    @unit_of_measure_conversion = UnitOfMeasureConversion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @unit_of_measure_conversion }
    end
  end

  # GET /unit_of_measure_conversions/1/edit
  def edit
    @unit_of_measure_conversion = UnitOfMeasureConversion.find(params[:id])
  end

  # POST /unit_of_measure_conversions
  # POST /unit_of_measure_conversions.json
  def create
    @unit_of_measure_conversion = UnitOfMeasureConversion.new(params[:unit_of_measure_conversion])

    respond_to do |format|
      if @unit_of_measure_conversion.save
        format.html { redirect_to @unit_of_measure_conversion, notice: 'Unit of measure conversion was successfully created.' }
        format.json { render json: @unit_of_measure_conversion, status: :created, location: @unit_of_measure_conversion }
      else
        format.html { render action: "new" }
        format.json { render json: @unit_of_measure_conversion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /unit_of_measure_conversions/1
  # PUT /unit_of_measure_conversions/1.json
  def update
    @unit_of_measure_conversion = UnitOfMeasureConversion.find(params[:id])

    respond_to do |format|
      if @unit_of_measure_conversion.update_attributes(params[:unit_of_measure_conversion])
        format.html { redirect_to @unit_of_measure_conversion, notice: 'Unit of measure conversion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @unit_of_measure_conversion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unit_of_measure_conversions/1
  # DELETE /unit_of_measure_conversions/1.json
  def destroy
    @unit_of_measure_conversion = UnitOfMeasureConversion.find(params[:id])
    @unit_of_measure_conversion.destroy

    respond_to do |format|
      format.html { redirect_to unit_of_measure_conversions_url }
      format.json { head :no_content }
    end
  end

  def edit_individual
    @unit_of_measure_conversions = UnitOfMeasureConversion.find(params[:unit_of_measure_conversion_ids])
    if params[:delete]
      @unit_of_measure_conversions.each do |uom|
        UnitOfMeasureConversion.destroy(uom.id)
      end
      redirect_to unit_of_measure_conversions_url
    elsif params[:details]
      render :template => 'unit_of_measure_conversions/show_details.html.erb'
    else
      render :template => 'unit_of_measure_conversions/edit_individual.html.erb'
    end
  end

  def update_individual
    UnitOfMeasureConversion.update(params[:uom_convs].keys, params[:uom_convs].values)
    redirect_to unit_of_measure_conversions_url
  end

end
