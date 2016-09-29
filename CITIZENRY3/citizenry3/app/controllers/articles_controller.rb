class ArticlesController < ApplicationController
  # http_basic_authenticate_with name: "Rich", password: "password", except: [:index, :show]

  def index
    root_url = "https://api.whitehouse.gov/v1/petitions.json?"
    if (params[:search_term])
       @petitions = HTTParty.get("#{root_url}title=#{params[:search_term]}")
       @articles = Article.all
    else
      @articles = Article.all
      @petitions = HTTParty.get(root_url)
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
   @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)

    if @article.save
    redirect_to @article
    else
      render 'new'
    end
  end

  def update
  @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end

