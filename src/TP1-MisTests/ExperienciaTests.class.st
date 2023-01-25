Class {
	#name : #ExperienciaTests,
	#superclass : #TestCase,
	#category : #'TP1-MisTests'
}

{ #category : #tests }
ExperienciaTests >> test01UnaExperienciaConCantidadDeAniosNoExperimentadosDejaElPuntajeEnLaMitad [
	| miExperiencia puntajeResultante puntajeBase |
	
	"Arrange"
	miExperiencia := Experiencia conAnios: 1.
	puntajeBase := 50.
	puntajeResultante := ValueHolder new contents: puntajeBase.
	
	"Act"
	miExperiencia aplicarModificador: puntajeResultante.
	
	"Assert"
	self assert: (puntajeResultante contents) equals: puntajeBase/2.
]

{ #category : #tests }
ExperienciaTests >> test02OtraExperienciaConCantidadDeAniosNoExperimentadosDejaElPuntajeEnLaMitad [
	| miExperiencia puntajeResultante puntajeBase |
	
	"Arrange"
	miExperiencia := Experiencia conAnios: 2.
	puntajeBase := 368.
	puntajeResultante := ValueHolder new contents: puntajeBase.
	
	"Act"
	miExperiencia aplicarModificador: puntajeResultante.
	
	"Assert"
	self assert: (puntajeResultante contents) equals: puntajeBase/2.
]

{ #category : #tests }
ExperienciaTests >> test03UnaExperienciaConCantidadDeAniosExperimentadosNoModificaElPuntaje [
	| miExperiencia puntajeResultante puntajeBase |
	
	"Arrange"
	miExperiencia := Experiencia conAnios: 3.
	puntajeBase := 500.
	puntajeResultante := ValueHolder new contents: puntajeBase.
	
	"Act"
	miExperiencia aplicarModificador: puntajeResultante.
	
	"Assert"
	self assert: (puntajeResultante contents) equals: puntajeBase.
]

{ #category : #tests }
ExperienciaTests >> test04OtraExperienciaConCantidadDeAniosExperimentadosNoModificaElPuntaje [
	| miExperiencia puntajeResultante puntajeBase |
	
	"Arrange"
	miExperiencia := Experiencia conAnios: 10.
	puntajeBase := 367.
	puntajeResultante := ValueHolder new contents: puntajeBase.
	
	"Act"
	miExperiencia aplicarModificador: puntajeResultante.
	
	"Assert"
	self assert: (puntajeResultante contents) equals: puntajeBase.
]

{ #category : #tests }
ExperienciaTests >> test05UnaExperienciaConCantidadDeAniosNoExperimentadosImparDejaElPuntajeEnLaMitad [
	| miExperiencia puntajeResultante puntajeBase |
	
	"Arrange"
	miExperiencia := Experiencia conAnios: 2.
	puntajeBase := 999.
	puntajeResultante := ValueHolder new contents: puntajeBase.
	
	"Act"
	miExperiencia aplicarModificador: puntajeResultante.
	
	"Assert"
	self assert: (puntajeResultante contents) equals: puntajeBase/2.
]
