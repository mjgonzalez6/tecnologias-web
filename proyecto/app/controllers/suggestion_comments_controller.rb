class SuggestionCommentsController < ApplicationController
  before_action :set_suggestion_comment, only: [:show, :edit, :update, :destroy]

  # GET /suggestion_comments
  # GET /suggestion_comments.json
  def index
    @suggestion_comments = SuggestionComment.all
  end

  # GET /suggestion_comments/1
  # GET /suggestion_comments/1.json
  def show
  end

  # GET /suggestion_comments/new
  def new
    @suggestion_comment = SuggestionComment.new
  end

  # GET /suggestion_comments/1/edit
  def edit
  end

  # POST /suggestion_comments
  # POST /suggestion_comments.json
  def create
    @suggestion_comment = SuggestionComment.new(suggestion_comment_params)

    respond_to do |format|
      if @suggestion_comment.save
        format.html { redirect_to @suggestion_comment, notice: 'Suggestion comment was successfully created.' }
        format.json { render :show, status: :created, location: @suggestion_comment }
      else
        format.html { render :new }
        format.json { render json: @suggestion_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suggestion_comments/1
  # PATCH/PUT /suggestion_comments/1.json
  def update
    respond_to do |format|
      if @suggestion_comment.update(suggestion_comment_params)
        format.html { redirect_to @suggestion_comment, notice: 'Suggestion comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @suggestion_comment }
      else
        format.html { render :edit }
        format.json { render json: @suggestion_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suggestion_comments/1
  # DELETE /suggestion_comments/1.json
  def destroy
    @suggestion_comment.destroy
    respond_to do |format|
      format.html { redirect_to suggestion_comments_url, notice: 'Suggestion comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suggestion_comment
      @suggestion_comment = SuggestionComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suggestion_comment_params
      params.require(:suggestion_comment).permit(:suggestion_id, :user_id, :text)
    end
end
