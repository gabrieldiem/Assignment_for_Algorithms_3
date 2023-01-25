Class {
	#name : #Equipo,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'jugadores',
		'moral'
	],
	#category : #TP1S
}

{ #category : #initialization }
Equipo class >> conNombre: nombreEquipo [
	^ (self new conNombre: nombreEquipo).
]

{ #category : #private }
Equipo >> conNombre: nombreEquipo [
	nombre := nombreEquipo.
]

{ #category : #public }
Equipo >> elegirPateador [
	| mejorJugador |
	jugadores ifEmpty: [ NoHayJugadoresRegistrados new signal ].
	mejorJugador  := jugadores first.
	jugadores do: [ :jugador | (mejorJugador esMejorQue: jugador) ifFalse: [ mejorJugador := jugador ] ].
	^ mejorJugador nombre.
]

{ #category : #public }
Equipo >> esNombre: unNombre [
	^ nombre = unNombre.
]

{ #category : #public }
Equipo >> estaGanando [
	moral subir.
]

{ #category : #public }
Equipo >> estaPerdiendo [
	moral bajar.
]

{ #category : #initialization }
Equipo >> initialize [
	jugadores := OrderedCollection new.
	moral := Moral new.
]

{ #category : #private }
Equipo >> modificadoresParaRegistrarJugadorConExperiencia: aniosExperiencia conMoral: unaMoral [
	|modificadores|
	modificadores := OrderedCollection new.
	modificadores add: (Experiencia conAnios: aniosExperiencia); add: unaMoral.
	^ modificadores.
]

{ #category : #public }
Equipo >> registrarJugadorSuplente: nombreJugador conHabilidad: puntajeHabilidad conCalidadDeSuplente: puntajeSuplente conExperiencia: puntajeExperiencia [
	|modificadores|
	modificadores := self modificadoresParaRegistrarJugadorConExperiencia: puntajeExperiencia conMoral: moral.
	jugadores add: (JugadorSuplente conNombre: nombreJugador conHabilidad: puntajeHabilidad conCalidadDeSuplente: puntajeSuplente conModificadores: modificadores).
]

{ #category : #public }
Equipo >> registrarJugadorTitular: nombreJugador conHabilidad: puntajeHabilidad conCansancio: puntajeCansancio conExperiencia: puntajeExperiencia [
	|modificadores|
	modificadores := self modificadoresParaRegistrarJugadorConExperiencia: puntajeExperiencia conMoral: moral.
	jugadores add: (JugadorTitular conNombre: nombreJugador conHabilidad: puntajeHabilidad conCansancio: puntajeCansancio conModificadores: modificadores).
]
