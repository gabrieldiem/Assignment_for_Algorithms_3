Class {
	#name : #AlgoPenales,
	#superclass : #Object,
	#instVars : [
		'equipos'
	],
	#category : #TP1S
}

{ #category : #initialization }
AlgoPenales class >> conPartido: unPartido [
	^ (self new conPartido: unPartido).
]

{ #category : #initialization }
AlgoPenales class >> conPartido: unPartido yGanando: nombreEquipo [
	^ (self new conPartido: unPartido yGanando: nombreEquipo).
]

{ #category : #initialization }
AlgoPenales class >> conPartido: unPartido yPerdiendo: nombreEquipo [
	^ (self new conPartido: unPartido yPerdiendo: nombreEquipo).
]

{ #category : #public }
AlgoPenales >> conPartido: unPartido [
	| unPartidoCortado |
	unPartidoCortado := unPartido splitOn: ' - '.
	(self partidoEsValido: unPartidoCortado) ifFalse: [ InputPartidoInvalido new signal ].
	equipos add: (Equipo conNombre: unPartidoCortado first).
	equipos add: (Equipo conNombre: unPartidoCortado last).
]

{ #category : #private }
AlgoPenales >> conPartido: unPartido yGanando: nombreEquipo [
	self conPartido: unPartido.
	(self equipoDeNombre: nombreEquipo) estaGanando.
]

{ #category : #private }
AlgoPenales >> conPartido: unPartido yPerdiendo: nombreEquipo [
	self conPartido: unPartido.
	(self equipoDeNombre: nombreEquipo) estaPerdiendo.
]

{ #category : #public }
AlgoPenales >> elegirPateadorDe: nombreEquipo [
	^ (self equipoDeNombre: nombreEquipo) elegirPateador.
]

{ #category : #private }
AlgoPenales >> equipoDeNombre: nombreEquipo [
	^ equipos detect: [ :equipo | equipo esNombre: nombreEquipo ] ifNone: [ EquipoNoExiste new signal ].
]

{ #category : #initialization }
AlgoPenales >> initialize [
	equipos := OrderedCollection new.
]

{ #category : #private }
AlgoPenales >> partidoEsValido: unPartidoCortado [
	^ (unPartidoCortado size = 2).
]

{ #category : #public }
AlgoPenales >> registrarJugadorSuplente: nombreJugador para: nombreEquipo conHabilidad: puntajeHabilidad conCalidadDeSuplente: puntajeSuplente conExperiencia: puntajeExperiencia [
	|equipoBuscado|
	equipoBuscado := self equipoDeNombre: nombreEquipo.
	equipoBuscado registrarJugadorSuplente: nombreJugador conHabilidad: puntajeHabilidad conCalidadDeSuplente: puntajeSuplente conExperiencia: puntajeExperiencia.
]

{ #category : #public }
AlgoPenales >> registrarJugadorTitular: nombreJugador para: nombreEquipo conHabilidad: puntajeHabilidad conCansancio: puntajeCansancio conExperiencia: puntajeExperiencia [
	|equipoBuscado|
	equipoBuscado := self equipoDeNombre: nombreEquipo.
	equipoBuscado registrarJugadorTitular: nombreJugador conHabilidad: puntajeHabilidad conCansancio: puntajeCansancio conExperiencia: puntajeExperiencia.
]
