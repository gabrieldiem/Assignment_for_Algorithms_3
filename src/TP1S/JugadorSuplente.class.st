Class {
	#name : #JugadorSuplente,
	#superclass : #Jugador,
	#instVars : [
		'calidadDeSuplente'
	],
	#category : #TP1S
}

{ #category : #initialization }
JugadorSuplente class >> conNombre: nombreJugador conHabilidad: puntajeHabilidad conCalidadDeSuplente: puntajeSuplente conModificadores: unosModificadores [
	^ (self new conNombre: nombreJugador conHabilidad: puntajeHabilidad conCalidadDeSuplente: puntajeSuplente conModificadores: unosModificadores).
]

{ #category : #public }
JugadorSuplente >> calificacionParaPatear [
	| calificacion |
	calificacion := ValueHolder new contents: (habilidad raisedTo: (exponenteBaseHabilidad + calidadDeSuplente)).
	self aplicarModificadores: calificacion.
	^ calificacion contents.
]

{ #category : #private }
JugadorSuplente >> conNombre: nombreJugador conHabilidad: puntajeHabilidad conCalidadDeSuplente: puntajeSuplente conModificadores: unosModificadores [
	nombre := nombreJugador.
	habilidad := puntajeHabilidad.
	calidadDeSuplente := puntajeSuplente.
	modificadores := unosModificadores.
]
