class LikelionController < ApplicationController

    def ideathon
        @ideas=Idea.all
    end
    def writeidea
    end

    def like
      @idea=Idea.find(params[:id])
      request.remote_ip
      @idea.user_ip = request.env["HTTP_X_FORWARDED_FOR"]
      
      exist=0
      for i in 0..@idea.addresses.size()
      if @idea.user_ip == @idea.addresses[i, @idea.user_ip.length()]
            for j in i..i+@idea.user_ip.length()-1
                @idea.addresses[j]='-'
            end 
            exist=1
            break
        end
      end
      if exist==1
          @idea.likeincrement = @idea.likeincrement-1
      elsif exist==0
          @idea.addresses << @idea.user_ip
          @idea.likeincrement = @idea.likeincrement+1
          end
      @idea.save
     redirect_to :back
    end
    
    def doWriteIdea
        idea=Idea.new(title: params[:title], author: params[:author], idea: params[:idea], id: params[:id], likeincrement:0)
        idea.addresses=Array.new()
        idea.save
        redirect_to "/ideathon"
    end
    
    def commentidea
        comment=Ideacomment.new(idea_id: params[:idea_id], author: params[:author], comment: params[:comment])
        comment.save
        redirect_to :back
    end
    
    def viewidea
    
        @id = params[:id]
        @searchStr= params[:searchStr]
        # Idea.increment_counter(:hits, @id ) # hits increase
        @rowData = Idea.find(params[:id])
    end
    
    def about
        
    end
    
    def home
        
    end
    def recinfo
        
    end
    def debugging
        @questions = Question.all
    end
    
    def writequestion
    end
    
    def doWriteQuestion
        question = Question.new(title: params[:title], author: params[:author], question: params[:question],  id: params[:id])
        question.addresses=Array.new()
        question.save
        redirect_to "/debugging"
    end
    
    def commentquestion
        comment=Questioncomment.new(question_id: params[:question_id], author: params[:author], comment: params[:comment])
        comment.save
        redirect_to :back
    end
    
    def viewquestion
        @id = params[:id]
        @searchStr= params[:searchStr]
        @rowData = Question.find(params[:id])
    end
    
    
    def sendemail
    
    end
end
