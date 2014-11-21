class AlbumController < ApplicationController
  def index
    @path = '/Volumes/roy HD/mi_albums/xiaomi_album-2/'
    render layout: false
  end
  def get_image
    path = '/Volumes/roy HD/mi_albums/xiaomi_album-2/'
    is_dir = File.directory?(path)

    files = []
    Dir.entries(path).each do |x|
      #puts File.extname(x)
      if File.extname(x) == '.jpg'
        files.push(x)
      elsif File.extname(x) == '.png'
        files.push(x)
      end
    end
    respond_to do |format|
      format.json {
        render :json=> {:files=>files,:is_dir=>is_dir}
      }
    end
  end

end
