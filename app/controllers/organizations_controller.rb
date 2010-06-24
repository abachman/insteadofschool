class OrganizationsController < ApplicationController
  # GET /organizations
  # GET /organizations.xml
  def index
    @organizations = Organization.all
  end

  # GET /organizations/1
  # GET /organizations/1.xml
  def show
    @organization = Organization.find(params[:id])
  end

  # GET /organizations/new
  # GET /organizations/new.xml
  def new
    @organization = Organization.new
  end

  # GET /organizations/1/edit
  def edit
    @organization = Organization.find(params[:id])
  end

  # POST /organizations
  # POST /organizations.xml
  def create
    @organization = Organization.new(params[:organization])
    if @organization.save
      redirect_to(params[:return_to] || organizations_url, :notice => 'Organization was successfully created.')
    else
      render :action => "new"
    end
  end

  # PUT /organizations/1
  # PUT /organizations/1.xml
  def update
    @organization = Organization.find(params[:id])
    if @organization.update_attributes(params[:organization])
      redirect_to(organizations_url, :notice => 'Organization was successfully updated.')
    else
      render :action => "edit"
    end
  end

  # DELETE /organizations/1
  # DELETE /organizations/1.xml
  def destroy
    @organization = Organization.find(params[:id])
    @organization.destroy
    redirect_to(organizations_url)
  end
end
