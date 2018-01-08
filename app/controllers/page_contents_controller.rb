class PageContentsController < ApplicationController
  before_action :set_page_content, only: [:show, :update, :destroy]

  # GET /page_contents
  def index
    @page_contents = PageContent.all

    render json: @page_contents
  end

  # GET /page_contents/1
  def show
    render json: @page_content
  end

  # DELETE /page_contents/1
  def destroy
    @page_content.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page_content
      @page_content = PageContent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def page_content_params
      params.require(:page_content).permit(:tag, :content, :page_id_id)
    end
end
