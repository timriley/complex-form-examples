class CategoriesProjectsController < ApplicationController
  # GET /categories_projects
  # GET /categories_projects.xml
  def index
    @categories_projects = CategoriesProject.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @categories_projects }
    end
  end

  # GET /categories_projects/1
  # GET /categories_projects/1.xml
  def show
    @categories_project = CategoriesProject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @categories_project }
    end
  end

  # GET /categories_projects/new
  # GET /categories_projects/new.xml
  def new
    @categories_project = CategoriesProject.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @categories_project }
    end
  end

  # GET /categories_projects/1/edit
  def edit
    @categories_project = CategoriesProject.find(params[:id])
  end

  # POST /categories_projects
  # POST /categories_projects.xml
  def create
    @categories_project = CategoriesProject.new(params[:categories_project])

    respond_to do |format|
      if @categories_project.save
        format.html { redirect_to(@categories_project, :notice => 'Categories project was successfully created.') }
        format.xml  { render :xml => @categories_project, :status => :created, :location => @categories_project }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @categories_project.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /categories_projects/1
  # PUT /categories_projects/1.xml
  def update
    @categories_project = CategoriesProject.find(params[:id])

    respond_to do |format|
      if @categories_project.update_attributes(params[:categories_project])
        format.html { redirect_to(@categories_project, :notice => 'Categories project was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @categories_project.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /categories_projects/1
  # DELETE /categories_projects/1.xml
  def destroy
    @categories_project = CategoriesProject.find(params[:id])
    @categories_project.destroy

    respond_to do |format|
      format.html { redirect_to(categories_projects_url) }
      format.xml  { head :ok }
    end
  end
end
