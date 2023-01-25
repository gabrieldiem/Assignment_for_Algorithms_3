Class {
	#name : #Experiencia,
	#superclass : #Object,
	#instVars : [
		'aniosDeExperiencia',
		'aniosParaSerExperimentado',
		'coeficientePorSerExperimentado'
	],
	#category : #TP1S
}

{ #category : #initialization }
Experiencia class >> conAnios: unosAnios [
	^ (self new conAnios: unosAnios).
]

{ #category : #public }
Experiencia >> aplicarModificador: puntaje [
	| aniosDondeEsNoExperimentado |
	aniosDondeEsNoExperimentado := OrderedCollection new.
	1 to: aniosParaSerExperimentado do: [ :i | aniosDondeEsNoExperimentado add: i ].
	
	aniosDondeEsNoExperimentado detect: [ :unAnio | unAnio = aniosDeExperiencia  ] ifFound: [ puntaje contents: (coeficientePorSerExperimentado * puntaje contents)].
]

{ #category : #private }
Experiencia >> conAnios: unosAnios [
	aniosDeExperiencia := unosAnios.
]

{ #category : #initialization }
Experiencia >> initialize [
	aniosParaSerExperimentado := 2.
	coeficientePorSerExperimentado := 0.5.
]
