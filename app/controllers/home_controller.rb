class HomeController < ApplicationController
  def index
  	
    #por ahora se deja por la funcion de luis
    @respuestas = [
      "1",
      "2",
      "3"
      ]


      @preguntas1 = [
      "What is the supreme law of the land? ",

      "Why does the flag have 50 stars?",

      "What does the Constitution do?"
    ]











   

    #vector de preguntas
    @preguntas = Array.new(3);

    #Primer pregunta
    @preguntas[0] = CivicQuestion.new(Numero: 1, Destacada: false)
    @preguntas[0].Descripcion = "What is the supreme law of the land?"
    @preguntas[0].Informacion = "The Founding Fathers of the United States wrote the Constitution in 1787. The Constitution is the “supreme law of the land.” 
    The U.S. Constitution has lasted longer than any other country’s constitution. It establishes the basic principles of the 
    United States government. The Constitution establishes a system of government called “representative democracy.” 
    In a representative democracy, citizens choose representatives to make the laws. U.S. citizens also choose a president 
    to lead the executive branch of government. The Constitution lists fundamental rights for all citizens and other people 
    living in the United States. Laws made in the United States must follow the Constitution."
    @preguntas[0].CivicAnswers = [CivicAnswer.new(Descripcion: "The Constitution", Correcta: true)]

    #Segunda pregunta
    @preguntas[1] = CivicQuestion.new(Numero: 2, Destacada: true)
    @preguntas[1].Descripcion = "Why does the flag have 50 stars?"
    @preguntas[1].Informacion = "Each star on the flag represents a state. This is why the number of stars has changed over the years from 13 to 50.
    The number of stars reached 50 in 1959, when Hawaii joined the United States as the 50th state.
    In 1777, the Second Continental Congress passed the first Flag Act, stating, “Resolved, That the flag of the United States be made of thirteen stripes, 
    alternate red and white; that the union be thirteen stars, white in a blue field, representing a new Constellation."
    @preguntas[1].CivicAnswers = [CivicAnswer.new(Descripcion: "because there is one star for each state", Correcta: true),
      CivicAnswer.new(Descripcion: "because each star represents a state", Correcta: true),
      CivicAnswer.new(Descripcion: "because there are 50 states", Correcta: true)]

    #Tercera pregunta
    @preguntas[2] = CivicQuestion.new(Numero: 3, Destacada: false)
    @preguntas[2].Descripcion = "What does the Constitution do?"
    @preguntas[2].Informacion = "The Constitution of the United States divides government power between the national government and state governments. 
    The name for this division of power is “federalism.” Federalism is an important idea in the Constitution. 
    We call the Founding Fathers who wrote the Constitution the “Framers” of the Constitution. The Framers wanted to limit 
    the powers of the government, so they separated the powers into three branches: executive, legislative, and judicial. 
    The Constitution explains the power of each branch. The Constitution also includes changes and additions, called “amendments.” 
    The first 10 amendments are called the “Bill of Rights.” The Bill of Rights established the individual rights and liberties 
    of all Americans."
    @preguntas[2].CivicAnswers = [CivicAnswer.new(Descripcion: "sets up the government", Correcta: true),
      CivicAnswer.new(Descripcion: "defines the government", Correcta: true),
      CivicAnswer.new(Descripcion: "protects basic rights of Americans", Correcta: true)]



    gon.preguntas_respuestas=[@preguntas1,@respuestas]
   
  end
end