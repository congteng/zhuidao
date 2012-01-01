#encoding: utf-8

class HopesController < ApplicationController
  # GET /hopes
  # GET /hopes.json
  def index
    @hopes = Hope.order("created_at DESC").limit(3)
    @hope = Hope.new
    @count = Hope.count
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  def all
    @hopes = Hope.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /hopes/1
  # GET /hopes/1.json
  def show
    @hope = Hope.find(params[:id])

    respond_to do |format|
      format.html 
    end
  end

  # POST /hopes
  # POST /hopes.json
  def create
    @hope = Hope.new(params[:hope])

    respond_to do |format|
      if @hope.save
        format.html { redirect_to hopes_url }
      else
        format.html { redirect_to hopes_url, notice: "以下两项都是必填项" }
      end
    end
  end

    def manage
    @hopes = Hope.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
    respond_to do |format|
      format.html # index.html.erb
    end
  end


  # DELETE /hopes/1
  # DELETE /hopes/1.json
  def destroy
    @hope = Hope.find(params[:id])
    @hope.destroy
    respond_to do |format|
      format.html { redirect_to :action => "manage" }
    end
  end

end
