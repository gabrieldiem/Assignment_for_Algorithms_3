Class {
	#name : #JugadorTitular,
	#superclass : #Jugador,
	#instVars : [
		'cansancio'
	],
	#category : #TP1S
}

{ #category : #initialization }
JugadorTitular class >> conNombre: nombreJugador conHabilidad: puntajeHabilidad conCansancio: puntajeCansancio conModificadores: unosModificadores [
	^ (self new conNombre: nombreJugador conHabilidad: puntajeHabilidad conCansancio: puntajeCansancio conModificadores: unosModificadores).
]

{ #category : #public }
JugadorTitular >> calificacionParaPatear [
	| calificacion |
	calificacion := ValueHolder new contents: (cansancio * (habilidad raisedTo: exponenteBaseHabilidad)).
	self aplicarModificadores: calificacion.
	^ calificacion contents.
]

{ #category : #private }
JugadorTitular >> conNombre: nombreJugador conHabilidad: puntajeHabilidad conCansancio: puntajeCansancio conModificadores: unosModificadores [
	nombre := nombreJugador.
	habilidad := puntajeHabilidad.
	cansancio := puntajeCansancio.
	modificadores := unosModificadores.
]
