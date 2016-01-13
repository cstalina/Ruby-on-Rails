class TodosController < ApplicationController
	
  def index 

  	@users = User.all


    if params[:user_id]
         @user = User.find(params[:user_id])
         @todos = @user.todos
    else
         @todos = Todo.all
    end
  
  	
   	#Aici luati toate todo-urile din baza de date si le asignati variabilei @todos
   	if params[:q]
   		@todos = Todo.where("title like ?", "%#{params[:q]}%")
   	#else
	#	@todos = Todo.all
	end
   

  end


   def new

   		@users = User.all
   
   end


	def create
		#cream un obiect de tip Todo si ii asignam datele din formular
		#momentan acest obiect exista doar in memorie
		todo=Todo.new(:title => params[:title], :assigned_to => params[:assigned_to])
		todo.user_id = params[:user_id]
		#Aici salvam todo-ul in baza de date
		if todo.save
			#mesajul de aici poate fi accesat in app/views/projects/index.html.erb
			flash[:notice]="Todo was saved successfully"
		else
			flash[:notice]="Todo was not saved"
		end

		redirect_to "/todos"
    end


   def delete 
 	
 		todo = Todo.find(params[:id])
 		todo.destroy
 		redirect_to "/todos"

   end

end