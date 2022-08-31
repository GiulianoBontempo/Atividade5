extends Node2D

var teste = false
var valor = 0
var numero = 0
var nome = "" # faltou declarar a var nome
var lista = [] # faltou a palavra var antes

func _ready():
	var button = Button.new() #criando o botao 1
	button.text = "salvar"
	button.connect("pressed", self, "_button_pressed")
	add_child(button)
	button.set_margin(MARGIN_TOP, 10)
	button.set_margin(MARGIN_LEFT, 20)
	
	var button2 = Button.new() #criando botao 2
	button2.text = "botao 2"
	button2.connect("pressed", self, "_button2_pressed")
	add_child(button2)
	button2.set_margin(MARGIN_TOP, 40)
	button2.set_margin(MARGIN_LEFT, 20)
	
	var button3 = Button.new() # criando botao 3
	button3.text = "botao 3"
	button3.connect("pressed", self, "_button3_pressed")
	add_child(button3)
	button3.set_margin(MARGIN_TOP, 70)
	button3.set_margin(MARGIN_LEFT, 20)

func _button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit2.text) # Faltava o cifrão e precisava ser um line edit diferente para o nome e o numero
	nome = $LineEdit.text # Ao invés de receber um nome, a função estava declarando que o texto do line edit seria a variável nome


func _button2_pressed():
#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero+=i # Estava escrito Numero, mas a variável é numero
	lista.append(numero) # Estava escrito Numero, mas a variável é numero
	$Label.text = str(numero) # faltou declarar que era str pra funcionar


func _button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	for i in lista: # Achei mais eficiente fazer a função de outra forma. A solução inicial verificava se a lista tinha uma quantidade ímpar de números, não se havia algum número ímpar, como alega o comentário acima.
		if i%2 == 1:
			nome = nome+"baldo"
			break
	$Label2.text = nome
