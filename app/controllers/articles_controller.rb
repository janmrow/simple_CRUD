class ArticlesController < ApplicationController

  def new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      redirect :back
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end

end
