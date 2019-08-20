class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    @page = MetaInspector.new('https://www.flightclub.com/wmns-air-jordan-1-retro-high-black-white-varsity-red-140740', :connection_timeout => 10, :read_timeout => 5, :retries => 4)


  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

end