class View
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario
  # Los siguientes métodos son sólo un ejemplo:
  
	def frontpage
  puts "Bienvenido a Vuelos Codea"
  puts "--------------------------------------------------"
  puts "1) Reservaciones"
  puts "2) Administrador"
  puts "3) Salir"
  puts "Selecciona opción:" 
	end
 def Reservaciones
    puts "--------------------------------------------------"
    puts                "¡¡¡Bienvenido!!!"     
    puts "--------------------------------------------------"

    puts "1) Encuentra tu boleto de avión"
    puts "2) Salir"

    puts "Selecciona una opción:"
    if STDIN.gets.chomp == "1"
        puts "--------------------------------------------------"
        puts "**************¡¡¡Encuentra tu vuelo!!!************"
        puts "--------------------------------------------------"
        puts "From:"  
          from_answer = STDIN.gets.chomp 
        puts "To:"
          to_answer =STDIN.gets.chomp
        puts "Date:"
         date_answer =STDIN.gets.chomp 
        puts "Passengers"
        passengers_answer =STDIN.gets.chomp 
        array_of_answers = [from_answer,to_answer,date_answer,passengers_answer]
    else
      puts "¡GRACIAS HASTA LUEGO!"
    end
  end

   def Reservaciones2(answers_verification)
    puts "Vuelos disponibles From: #{answers_verification[0]} To: #{answers_verification[0]}"
    puts    "--------------------------------------------------------------------"


   end

  def AdministradorFrontPage
    puts "Bienvenido Administrador"
    puts  "--------------------------------------------------"
    puts  "Ingrese usuario:"
    admin_answer = STDIN.gets.chomp 
    puts  "Ingrese contraseña:"
    password_answer = STDIN.gets.chomp 
    array_of_adminanswers = [admin_answer,password_answer]
  end

 



  def Salir
    puts "¡GRACIAS HASTA LUEGO!"
  end

end
