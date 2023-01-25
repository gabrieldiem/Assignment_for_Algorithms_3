Class {
	#name : #Jugador,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'habilidad',
		'exponenteBaseHabilidad',
		'modificadores'
	],
	#category : #TP1S
}

{ #category : #private }
Jugador >> aplicarModificadores: calificacion [
	modificadores do: [ :modificador | modificador aplicarModificador: calificacion ].
]

{ #category : #public }
Jugador >> calificacionParaPatear [
	self subclassResponsibility.
]

{ #category : #public }
Jugador >> esMejorQue: otroJugador [
	^ (self calificacionParaPatear > otroJugador calificacionParaPatear).
]

{ #category : #initialization }
Jugador >> initialize [
	exponenteBaseHabilidad := 2.
]

{ #category : #public }
Jugador >> nombre [
	^ nombre.
]
