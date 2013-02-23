class PartiesController < ApplicationController
  def index
    @parties = Party.all
  end

  def edit
    @party = Party.find(params[:id])
  end

  def update
    @party = Party.find(params[:id])
    if @party.update_attributes(params[:party])
      redirect_to parties_url, :notice  => "Successfully updated party."
    else
      render :action => 'edit'
    end
  end

  def new
    @party = Party.new
  end

  def create
    @party = Party.new(params[:party])
    if @party.save
      redirect_to parties_url, :notice => "Successfully created party."
    else
      render :action => 'new'
    end
  end

  def destroy
    @party = Party.find(params[:id])
    @party.destroy
    redirect_to parties_url, :notice => "Successfully destroyed party."
  end
end
