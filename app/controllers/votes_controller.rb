class VotesController < ApplicationController
  before_action :set_vote, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /votes
  # GET /votes.json
  def index
    @votes = Vote.all

     if @votes.blank?
        @sum_cpp = 0
        @sum_ndp = 0
        @sum_ndc = 0
        @sum_ppp = 0
        @sum_npp = 0
        @sum_pnc = 0
        @sum_ind = 0
        
      else
        @sum_cpp = @votes.sum(:cpp)
        @sum_ndp = @votes.sum(:ndp)
        @sum_ndc = @votes.sum(:ndc)
        @sum_ppp = @votes.sum(:ppp)
        @sum_npp = @votes.sum(:npp)
        @sum_pnc = @votes.sum(:pnc)
        @sum_ind = @votes.sum(:ind)
      end
  end

  # GET /votes/1
  # GET /votes/1.json
  def show
    
  end

  # GET /votes/new
  def new
    @vote = Vote.new
  end

  # GET /votes/1/edit
  def edit
  end

  # POST /votes
  # POST /votes.json
  def create
    @vote = Vote.new(vote_params)

    respond_to do |format|
      if @vote.save
        format.html { redirect_to @vote, notice: 'Vote was successfully created.' }
        format.json { render :show, status: :created, location: @vote }
      else
        format.html { render :new }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /votes/1
  # PATCH/PUT /votes/1.json
  def update
    respond_to do |format|
      if @vote.update(vote_params)
        format.html { redirect_to @vote, notice: 'Vote was successfully updated.' }
        format.json { render :show, status: :ok, location: @vote }
      else
        format.html { render :edit }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /votes/1
  # DELETE /votes/1.json
  def destroy
    @vote.destroy
    respond_to do |format|
      format.html { redirect_to votes_url, notice: 'Vote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def import
    Vote.import(params[:file])
    redirect_to votes_path, notice: "Added votes file successfully"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vote
      @vote = Vote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vote_params
      params.require(:vote).permit(:region, :constituency_name, :cpp, :ndp, :ndc, :ppp, :npp, :pnc, :ind, :total_valid_votes, :rejected_votes, :total_votes_cast)
    end
end
