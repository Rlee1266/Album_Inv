class AlbumPubsController < ApplicationController
  before_action :set_album_pub, only: [:show, :edit, :update, :destroy]

  # GET /album_pubs
  # GET /album_pubs.json
  def index
    @album_pubs = AlbumPub.all
  end

  # GET /album_pubs/1
  # GET /album_pubs/1.json
  def show
  end

  # GET /album_pubs/new
  def new
    @album_pub = AlbumPub.new
  end

  # GET /album_pubs/1/edit
  def edit
  end

  # POST /album_pubs
  # POST /album_pubs.json
  def create
    @album_pub = AlbumPub.new(album_pub_params)

    respond_to do |format|
      if @album_pub.save
        format.html { redirect_to @album_pub, notice: 'Album pub was successfully created.' }
        format.json { render :show, status: :created, location: @album_pub }
      else
        format.html { render :new }
        format.json { render json: @album_pub.errors, status: :unprocessable_entity }


      end
    end
  end

  # PATCH/PUT /album_pubs/1
  # PATCH/PUT /album_pubs/1.json
  def update
    respond_to do |format|
      if @album_pub.update(album_pub_params)
        format.html { redirect_to @album_pub, notice: 'Album pub was successfully updated.' }
        format.json { render :show, status: :ok, location: @album_pub }
      else
        format.html { render :edit }
        format.json { render json: @album_pub.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /album_pubs/1
  # DELETE /album_pubs/1.json
  def destroy
    @album_pub.destroy
    respond_to do |format|
      format.html { redirect_to album_pubs_url, notice: 'Album pub was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album_pub
      @album_pub = AlbumPub.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def album_pub_params
      params.require(:album_pub).permit(:name)
    end
end
