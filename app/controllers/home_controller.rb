class HomeController < ApplicationController
  def index
  	@info = [
  		"The Founding Fathers of the United States wrote the Constitution in 1787. The Constitution is the “supreme law of the land.” 
  		The U.S. Constitution has lasted longer than any other country’s constitution. It establishes the basic principles of the 
  		United States government. The Constitution establishes a system of government called “representative democracy.” 
  		In a representative democracy, citizens choose representatives to make the laws. U.S. citizens also choose a president 
  		to lead the executive branch of government. The Constitution lists fundamental rights for all citizens and other people 
  		living in the United States. Laws made in the United States must follow the Constitution.",

  		"George Washington is called the Father of Our Country. He was the first American president. 
        Before that, he was a brave general who led the Continental Army to victory over Great Britain during 
        the American Revolutionary War. After his victory over the British Army, Washington retired to his 
        farm in Virginia named Mount Vernon. He left retirement to help create the new country’s system of 
        government. He presided over the Constitutional Convention in Philadelphia in 1787.",

  		"The Constitution of the United States divides government power between the national government and state governments. 
  		The name for this division of power is “federalism.” Federalism is an important idea in the Constitution. 
  		We call the Founding Fathers who wrote the Constitution the “Framers” of the Constitution. The Framers wanted to limit 
  		the powers of the government, so they separated the powers into three branches: executive, legislative, and judicial. 
  		The Constitution explains the power of each branch. The Constitution also includes changes and additions, called “amendments.” 
  		The first 10 amendments are called the “Bill of Rights.” The Bill of Rights established the individual rights and liberties 
  		of all Americans."
  	]

  	@pregunta = [
  		"What is the supreme law of the land? ",

  		"Why does the flag have 50 stars?",

  		"What does the Constitution do?"
  	]

    @respuestas = [
      "because there is one star for each state",
      "because each star represents a state",
      "because there are 50 states"
      ]
       
  end
end