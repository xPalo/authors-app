class AuthorsController < ApplicationController
  before_action :set_author, only: %i[ show edit update destroy ]
  #before_action :authenticate_user!, except: [:show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /authors or /authors.json
  def index
    @authors = Author.all
  end

  # GET /authors/1 or /authors/1.json
  def show
    # @current_author_id = @author.id
    # puts("\n \nCURRENT AUTHOR ID: " + @current_author_id.to_s + "\n \n")
  end

  # GET /authors/new
  def new
    # @author = Author.new
    @author = current_user.authors.build
  end

  # GET /authors/1/edit
  def edit
  end

  # POST /authors or /authors.json
  def create
    # @author = Author.new(author_params)
    @author = current_user.authors.build(author_params)

    respond_to do |format|
      if @author.save
        format.html { redirect_to author_url(@author), notice: "Author was successfully created." }
        format.json { render :show, status: :created, location: @author }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @author.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authors/1 or /authors/1.json
  def update
    respond_to do |format|
      if @author.update(author_params)
        format.html { redirect_to author_url(@author), notice: "Author was successfully updated." }
        format.json { render :show, status: :ok, location: @author }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @author.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authors/1 or /authors/1.json
  def destroy
    @author.destroy

    respond_to do |format|
      format.html { redirect_to authors_url, notice: "Author was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @author = current_user.authors.find_by(id: params[:id])
    redirect_to books_path, notice: "Not authorized to manipulate" if @author.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_author
      @author = Author.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def author_params
      params.require(:author).permit(:first_name, :last_name, :country, :user_id)
    end
end
