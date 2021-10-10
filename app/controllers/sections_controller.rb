class SectionsController < ApplicationController
  before_action :set_section, only: %i[ show edit update destroy ]

  # GET /sections or /sections.json
  def index
    @books = Book.order(:title)
    @sections = Section.all
    @tree = create_tree

  end

  # GET /sections/1 or /sections/1.json
  def show
  end

  # GET /sections/new
  def new
    @section = Section.new
  end

  # GET /sections/1/edit
  def edit
  end

  # POST /sections or /sections.json
  def create
    @section = Section.new(section_params)

    respond_to do |format|
      if @section.save
        format.html { redirect_to @section, notice: "Section was successfully created." }
        format.json { render :show, status: :created, location: @section }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sections/1 or /sections/1.json
  def update
    respond_to do |format|
      if @section.update(section_params)
        format.html { redirect_to @section, notice: "Section was successfully updated." }
        format.json { render :show, status: :ok, location: @section }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sections/1 or /sections/1.json
  def destroy
    @section.destroy
    respond_to do |format|
      format.html { redirect_to sections_url, notice: "Section was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def create_tree()
	sections = Section.all
	return create_branch(sections, nil, 1)
  end

  def create_branch(sections, parent_id, offset)
	b2 = Hash.new
	sections.each do |section|
		if section.Parent_ID == parent_id
			tmp = Hash.new
			tmp["section"] = section
			tmp["offset"] = offset
			b2[section.id] = tmp
			b2 = b2.merge create_branch(sections, section.id, offset+1)
		end
	end
	return b2
  end


  def create_branch_tree(sections, parent_id)
	branch = Hash.new
	sections.each do |section|
		if section.Parent_ID == parent_id
			tmp = Hash.new
			tmp["section"] = section
			tmp["childrens"] = create_branch_tree(sections, section.id)
			branch[section.id] = tmp
		end
	end
	return branch
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section
      @section = Section.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def section_params
      params.require(:section).permit(:Name, :Parent_ID)
    end
end
