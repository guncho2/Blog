class ArticlesController < ApplicationController

    def new


    end

    def  show

        
        @article = Article.find(params[:id])

        # find an article with an specific ID  where the ID number is incremented automatically for each
        #article 
    end
    
    def create

        # render plain: params.require(:article).inspect

        @article = Article.new(article_params)

        #creo un instanciade Article donde guardo el requerimento de permiso de title y text

            #rendering to the webpage/view article/new where article is the controller and the resources route
            #to know where submit the data on the form f from the web page article/new new plain means text

        @article.save
             #saving the input from view article

                # now we need to redirect to appropiate page
        redirect_to @article

        #this will show the articles just created on the Show page 
    end

    private
        def article_params
            params.require(:article).permit(:title, :text)

        end
        
    end






