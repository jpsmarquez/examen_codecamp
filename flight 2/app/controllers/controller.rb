class Controller 
  def initialize(args)
    @view = View.new
     frontpage(args)
  end

  def frontpage(args)
    number = args[1..args.length]
    option = args[0]
    case option
      when nil then @view.frontpage
      when "1" then  Reservaciones(number)
      when "2" then  Administrador(admin)
      when "3" then  Salir(number)

    end
  end

  def Reservaciones(number)
    array_of_answers = @view.Reservaciones
    answers_verification = Flight.where(from: array_of_answers[0],to: array_of_answers[1], date: array_of_answers[2],passengers:array_of_answers[3])
    @view.Reservaciones2(answers_verification)
  end

  def Administrador(admin)
    array_of_adminanswers = @view.AdministradorFrontPage
     admin = User.find_by(admin: admin)
  end

  def Salir(number)
    @view.Salir

  end
end
