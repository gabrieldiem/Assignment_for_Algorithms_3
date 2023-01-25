Class {
	#name : #MoralTests,
	#superclass : #TestCase,
	#category : #'TP1-MisTests'
}

{ #category : #tests }
MoralTests >> test01UnaMoralRecienCreadaNoModificaElPuntajeParametro [
	| miMoral puntajeResultante puntajeBase|
	
	"Arrange"
	miMoral := Moral new.
	puntajeBase := 50.
	puntajeResultante := ValueHolder new contents: puntajeBase.
	
	"Act"
	miMoral aplicarModificador: puntajeResultante.
	
	"Assert"
	self assert: (puntajeResultante contents) equals: puntajeBase.
]

{ #category : #tests }
MoralTests >> test02UnaMoralSubidaAumentaElPuntajeParametroEnMil [
	| miMoral puntajeResultante puntajeBase |
	
	"Arrange"
	miMoral := Moral new.
	puntajeBase := 10.
	puntajeResultante := ValueHolder new contents: puntajeBase.
	
	miMoral subir.
	
	"Act"
	miMoral aplicarModificador: puntajeResultante.
	
	"Assert"
	self assert: (puntajeResultante contents) equals: (puntajeBase + 1000).
]

{ #category : #tests }
MoralTests >> test03UnaMoralBajadaDisminuyeElPuntajeParametroEnMil [
	| miMoral puntajeResultante puntajeBase |
	
	"Arrange"
	miMoral := Moral new.
	puntajeBase := 250.
	puntajeResultante := ValueHolder new contents: puntajeBase.
	
	miMoral bajar.
	
	"Act"
	miMoral aplicarModificador: puntajeResultante.
	
	"Assert"
	self assert: (puntajeResultante contents) equals: (puntajeBase - 1000).
]

{ #category : #tests }
MoralTests >> test04OtraMoralRecienCreadaNoModificaElPuntajeParametro [
	| miMoral puntajeResultante puntajeBase |
	
	"Arrange"
	miMoral := Moral new.
	puntajeBase := 8000.
	puntajeResultante := ValueHolder new contents: puntajeBase.
	
	"Act"
	miMoral aplicarModificador: puntajeResultante.
	
	"Assert"
	self assert: (puntajeResultante contents) equals: puntajeBase.
]

{ #category : #tests }
MoralTests >> test05OtraMoralSubidaAumentaElPuntajeParametroEnMil [
	| miMoral puntajeResultante puntajeBase |
	
	"Arrange"
	miMoral := Moral new.
	puntajeBase := 3185.
	puntajeResultante := ValueHolder new contents: puntajeBase.
	
	miMoral subir.
	
	"Act"
	miMoral aplicarModificador: puntajeResultante.
	
	"Assert"
	self assert: (puntajeResultante contents) equals: (puntajeBase + 1000).
]

{ #category : #tests }
MoralTests >> test06OtraMoralBajadaDisminuyeElPuntajeParametroEnMil [
	| miMoral puntajeResultante puntajeBase |
	
	"Arrange"
	miMoral := Moral new.
	puntajeBase := 777.
	puntajeResultante := ValueHolder new contents: puntajeBase.
	
	miMoral bajar.
	
	"Act"
	miMoral aplicarModificador: puntajeResultante.
	
	"Assert"
	self assert: (puntajeResultante contents) equals: (puntajeBase - 1000).
]
