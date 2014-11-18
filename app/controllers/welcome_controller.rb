class WelcomeController < ApplicationController
  def index
  end

  def json
    respond_to do |format|
      #format.json  { render :json => [2,23,['abc','bbc']] } # don't do msg.to_json
      format.json {
        render :json=> {:a=>'abc',:b=>'bbc'}
      }
    end
  end

  def runtime
    # http respone header里有一个值  X-Runtime来记录http请求的执行时间  这是middleware Rack::Runtime 的作用。
    respond_to do |format|
      format.json {
        render :json=> {:a=>'a',:b=>1}
      }
    end
  end

  def upload #get method
   
  end 

  def post_upload #post method
    uploaded_io = params[:picture]
    File.open(Rails.root.join('public', 'uploads','abc.jpg'), 'wb') do |file|
      file.write(uploaded_io.read)
    end
    respond_to do |format|
      format.json {
        render :json=> {:a=>'a'}
      }
    end
  end
  #def post_upload #post method
    #uploaded_io = params[:picture]
    #File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
      #file.write(uploaded_io.read)
    #end
    #respond_to do |format|
      #format.json {
        #render :json=> {:a=>'a'}
      #}
    #end
  #end
  #操作file 创建，修改，删除文件和文件夹
  def file
    #File.new("/Users/apple/Sites/rails_test_two/testfile", "w+")
    #File.delete("/Users/apple/Sites/rails_test_two/testfile")
    #basename,dirname,extname,rename,exist,new,delete,atime,ctime,chown,size,close,write
    #
    f = File.new('/Users/apple/Sites/rails_test_two/create_write_to_file','w')
    f.write('abc')
    f.close

    respond_to do |format|
      format.json {
        render :json=> {
                  :file_path=>file_path(),
                  :file_atime=>File.atime('/Users/apple/Sites/rails_test_two/README.rdoc'),
                  :create_file=>1,
                  :delete_file=>1,
                  :basename=>File.basename('/Users/apple/Sites/rails_test_two/README.rdoc'),
                  :dirname=>File.dirname('/Users/apple/Sites/rails_test_two/README.rdoc'),
                  :extnaem=>File.extname('abc.txt')
        }

      }
    end
  end

  def ac
    #p = Product.new
    #p.name = "Some Book"
    #p.save
    #Product.create(name:"pad")
    

    #all = Product.all
    
    #product = Product.first
    #product = Product.find_by(name:"pad")
    product = Product.where(name:"pad").order("created_at desc")
    #destroy,update
    
    respond_to do |format|
      format.json {
        render :json=> {:b=>123,:product=>product}
      }
    end
  end
  
  def redirect
    flash[:notice] = "You have successfully logged out."
    redirect_to root_url
  end
  
  def cookie
    if cookies[:renren]
      cookie = cookies[:renren]
    else
      cookie = 222
      cookies[:renren] = cookie
    end
    respond_to do |format|
      format.json {
        render :json=> {:b=>123,:cookie=>cookie}
      }
    end
  end

  def response_format
    products = Product.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: products}
      format.json { render json: products}
    end
  end
  

end
