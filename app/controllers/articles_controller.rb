class ArticlesController < ApplicationController

    def new


    end

    def create

        render plain: params.require(:article).inspect

#rendering to the webpage/view article/new where article is the controller and the resources route
#to know where submit the data on the form f from the web page article/new new plain means text
    
end


        
end


