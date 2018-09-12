class AlbumInvsController < ApplicationController
  before_action :set_album_inv, only: [:show, :edit, :update, :destroy]

  # GET /album_invs
  # GET /album_invs.json
  def index
    @album_invs = AlbumInv.all
    @pubs =AlbumPub.all
    @artists = Artist.all
  end

  # GET /album_invs/1
  # GET /album_invs/1.json
  def show
    @pubs =AlbumPub.all
    @artists = Artist.all


  end

  # GET /album_invs/new
  def new
    @album_inv = AlbumInv.new
    @pubs =AlbumPub.all
    @artists = Artist.all



  end

  def album_invs_params
    params.require(:album_invs).permit(:name)
  end

  # GET /album_invs/1/edit
  def edit
    @pubs =AlbumPub.all
    @artists = Artist.all
      end

  # POST /album_invs
  # POST /album_invs.json
  def create
    @album_inv = AlbumInv.new(album_inv_params)
    @pubs =AlbumPub.all
    @artists = Artist.all


    respond_to do |format|
      if @album_inv.save
        format.html { redirect_to @album_inv, notice: 'Album inv was successfully created.' }
        format.json { render :show, status: :created, location: @album_inv }
      else
        format.html { render :new }
        format.json { render json: @album_inv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /album_invs/1
  # PATCH/PUT /album_invs/1.json
  def update
    respond_to do |format|
      if @album_inv.update(album_inv_params)
        format.html { redirect_to @album_inv, notice: 'Album inv was successfully updated.' }
        format.json { render :show, status: :ok, location: @album_inv }
      else
        format.html { render :edit }
        format.json { render json: @album_inv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /album_invs/1
  # DELETE /album_invs/1.json
  def destroy
    @album_inv.destroy
    respond_to do |format|
      format.html { redirect_to album_invs_url, notice: 'Album inv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album_inv
      @album_inv = AlbumInv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def album_inv_params
      params.require(:album_inv).permit(:Title, :Genre, :Year, :dAdded, :Plays, :Publisher)
    end

end
