Class {
	#name : #Moral,
	#superclass : #Object,
	#instVars : [
		'modificadorMoral',
		'moralAlta',
		'moralBaja'
	],
	#category : #TP1S
}

{ #category : #public }
Moral >> aplicarModificador: puntaje [
	puntaje contents: (modificadorMoral + puntaje contents).
]

{ #category : #public }
Moral >> bajar [
	modificadorMoral := moralBaja.
]

{ #category : #initialization }
Moral >> initialize [
	modificadorMoral := 0.
	moralAlta := 1000.
	moralBaja := -1000.
]

{ #category : #public }
Moral >> subir [
	modificadorMoral := moralAlta.
]
