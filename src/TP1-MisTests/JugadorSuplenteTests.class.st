Class {
	#name : #JugadorSuplenteTests,
	#superclass : #TestCase,
	#category : #'TP1-MisTests'
}

{ #category : #tests }
JugadorSuplenteTests >> test01UnJugadorSuplenteCreadoConUnNombreTieneElNombreEsperado [
	| miJugador misModificadores nombreEsperado nombreResultante |
	
	"Arrange"
	nombreEsperado := 'Lio Messi'.
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 5); add: (Moral new).
	
	miJugador := JugadorSuplente conNombre: nombreEsperado conHabilidad: 70  conCalidadDeSuplente: 0.8 conModificadores: misModificadores.
	
	"Act"
	nombreResultante := miJugador nombre.
	
	"Assert"
	self assert: nombreResultante equals: nombreEsperado.
]

{ #category : #tests }
JugadorSuplenteTests >> test02UnJugadorSuplenteCreadoConOtroNombreTieneElNombreEsperado [
	| miJugador misModificadores nombreEsperado nombreResultante |
	
	"Arrange"
	nombreEsperado := 'Di Maria'.
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 5); add: (Moral new).
	
	miJugador := JugadorSuplente conNombre: nombreEsperado conHabilidad: 70  conCalidadDeSuplente: 0.6 conModificadores: misModificadores.
	
	"Act"
	nombreResultante := miJugador nombre.
	
	"Assert"
	self assert: nombreResultante equals: nombreEsperado.
]

{ #category : #tests }
JugadorSuplenteTests >> test03UnJugadorSuplenteCreadoExperimentadoConMoralNeutralTieneLaCalificacionCorrecta [
	| miJugador misModificadores calificacionResultante calificacionEsperada |
	
	"Arrange"
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 5); add: (Moral new).
	calificacionEsperada := 70 raisedTo: (2 + 0.9).
	
	miJugador := JugadorSuplente conNombre: 'Lionel Messi' conHabilidad: 70  conCalidadDeSuplente: 0.9 conModificadores: misModificadores.
	
	"Act"
	calificacionResultante := miJugador calificacionParaPatear.
	
	"Assert"
	self assert: calificacionResultante equals: calificacionEsperada.
]

{ #category : #tests }
JugadorSuplenteTests >> test04OtroJugadorSuplenteCreadoExperimentadoConMoralNeutralTieneLaCalificacionCorrecta [
	| miJugador misModificadores calificacionResultante calificacionEsperada |
	
	"Arrange"
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 8); add: (Moral new).
	calificacionEsperada := 35 raisedTo: (2 + 0.98).
	
	miJugador := JugadorSuplente conNombre: 'Lionel Messi' conHabilidad: 35  conCalidadDeSuplente: 0.98 conModificadores: misModificadores.
	
	"Act"
	calificacionResultante := miJugador calificacionParaPatear.
	
	"Assert"
	self assert: calificacionResultante equals: calificacionEsperada.
]

{ #category : #tests }
JugadorSuplenteTests >> test05UnJugadorSuplenteCreadoNoExperimentadoConMoralNeutralTieneLaCalificacionCorrecta [
	| miJugador misModificadores calificacionResultante calificacionEsperada |
	
	"Arrange"
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 2); add: (Moral new).
	calificacionEsperada := (50 raisedTo: (2 + 1.23)) * 0.5.
	
	miJugador := JugadorSuplente conNombre: 'J Di Maria' conHabilidad: 50 conCalidadDeSuplente: 1.23 conModificadores: misModificadores.
	
	"Act"
	calificacionResultante := miJugador calificacionParaPatear.
	
	"Assert"
	self assert: calificacionResultante equals: calificacionEsperada.
]

{ #category : #tests }
JugadorSuplenteTests >> test06OtroJugadorSuplenteCreadoNoExperimentadoConMoralNeutralTieneLaCalificacionCorrecta [
	| miJugador misModificadores calificacionResultante calificacionEsperada |
	
	"Arrange"
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 1); add: (Moral new).
	calificacionEsperada := (10 raisedTo: (2 + 2)) * 0.5.
	
	miJugador := JugadorSuplente conNombre: 'Jorge Lopez' conHabilidad: 10 conCalidadDeSuplente: 2 conModificadores: misModificadores.
	
	"Act"
	calificacionResultante := miJugador calificacionParaPatear.
	
	"Assert"
	self assert: calificacionResultante equals: calificacionEsperada.
]

{ #category : #tests }
JugadorSuplenteTests >> test07UnJugadorSuplenteCreadoExperimentadoConMoralBajaTieneLaCalificacionCorrecta [
	| miJugador misModificadores calificacionResultante calificacionEsperada |
	
	"Arrange"
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 5); add: (Moral new bajar).
	calificacionEsperada := (70 raisedTo: (2 + 1)) - 1000.
	
	miJugador := JugadorSuplente conNombre: 'Lionel Messi' conHabilidad: 70  conCalidadDeSuplente: 1 conModificadores: misModificadores.
	
	"Act"
	calificacionResultante := miJugador calificacionParaPatear.
	
	"Assert"
	self assert: calificacionResultante equals: calificacionEsperada.
]

{ #category : #tests }
JugadorSuplenteTests >> test08UnJugadorSuplenteCreadoNoExperimentadoConMoralBajaTieneLaCalificacionCorrecta [
	| miJugador misModificadores calificacionResultante calificacionEsperada |
	
	"Arrange"
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 2); add: (Moral new bajar).
	calificacionEsperada := ((50 raisedTo: (2 + 2.3)) * 0.5) - 1000.
	
	miJugador := JugadorSuplente conNombre: 'J Di Maria' conHabilidad: 50  conCalidadDeSuplente: 2.3 conModificadores: misModificadores.
	
	"Act"
	calificacionResultante := miJugador calificacionParaPatear.
	
	"Assert"
	self assert: calificacionResultante equals: calificacionEsperada.
]

{ #category : #tests }
JugadorSuplenteTests >> test09UnJugadorSuplenteCreadoExperimentadoConMoralAltaTieneLaCalificacionCorrecta [
	| miJugador misModificadores calificacionResultante calificacionEsperada |
	
	"Arrange"
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 5); add: (Moral new subir).
	calificacionEsperada := (70 raisedTo: (2 + 0.77)) + 1000.
	
	miJugador := JugadorSuplente conNombre: 'Lionel Messi' conHabilidad: 70  conCalidadDeSuplente: 0.77 conModificadores: misModificadores.
	
	"Act"
	calificacionResultante := miJugador calificacionParaPatear.
	
	"Assert"
	self assert: calificacionResultante equals: calificacionEsperada.
]

{ #category : #tests }
JugadorSuplenteTests >> test10UnJugadorSuplenteCreadoNoExperimentadoConMoralAltaTieneLaCalificacionCorrecta [
	| miJugador misModificadores calificacionResultante calificacionEsperada |
	
	"Arrange"
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 2); add: (Moral new subir).
	calificacionEsperada := ((50 raisedTo: (2 + 1.66)) * 0.5) + 1000.
	
	miJugador := JugadorSuplente conNombre: 'J Di Maria' conHabilidad: 50  conCalidadDeSuplente: 1.66 conModificadores: misModificadores.
	
	"Act"
	calificacionResultante := miJugador calificacionParaPatear.
	
	"Assert"
	self assert: calificacionResultante equals: calificacionEsperada.
]

{ #category : #tests }
JugadorSuplenteTests >> test11UnJugadorSuplenteDeCalificacion274340EsMejorQueUnJugadorSuplenteDeCalificacion46276 [
	| unJugador otroJugador misModificadores esUnJugadorElMejor |
	
	"Arrange"
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 5); add: (Moral new subir).
	unJugador := JugadorSuplente conNombre: 'Lio Messi' conHabilidad: 50  conCalidadDeSuplente: 1.2 conModificadores: misModificadores.
	"unJugador tiene calificacion ~274340"
	
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 2); add: (Moral new).
	otroJugador := JugadorSuplente conNombre: 'J Di Maria' conHabilidad: 40  conCalidadDeSuplente: 1.1 conModificadores: misModificadores.
	"otroJugador tiene calificacion ~46276"
	
	"Act"
	esUnJugadorElMejor := unJugador esMejorQue: otroJugador.
	
	"Assert"
	self assert: esUnJugadorElMejor.
]

{ #category : #tests }
JugadorSuplenteTests >> test12UnJugadorSuplenteDeCalificacion26000NoEsMejorQueUnJugadorSuplenteDeCalificacion73942 [
| unJugador otroJugador misModificadores esUnJugadorElMejor |
	
	"Arrange"
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 5); add: (Moral new bajar).
	unJugador := JugadorSuplente conNombre: 'Lopez' conHabilidad: 30  conCalidadDeSuplente: 1.0 conModificadores: misModificadores.
	"unJugador tiene calificacion 26000"
	
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 2); add: (Moral new).
	otroJugador := JugadorSuplente conNombre: 'Muslera' conHabilidad: 30  conCalidadDeSuplente: 1.5  conModificadores: misModificadores.
	"otroJugador tiene calificacion ~73942"
	
	"Act"
	esUnJugadorElMejor := unJugador esMejorQue: otroJugador.
	
	"Act & Assert"
	self deny: esUnJugadorElMejor.
]

{ #category : #tests }
JugadorSuplenteTests >> test13UnJugadorSuplenteDeCalificacion19307EsMejorQueUnJugadorTitularDeCalificacion13250 [
	| unJugador otroJugador misModificadores esUnJugadorElMejor |
	
	"Arrange"
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 2); add: (Moral new).
	unJugador := JugadorSuplente conNombre: 'J Di Maria' conHabilidad: 15  conCalidadDeSuplente: 1.9 conModificadores: misModificadores.
	"unJugador tiene calificacion ~19307"
	
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 5); add: (Moral new subir).
	otroJugador := JugadorTitular conNombre: 'Lio Messi' conHabilidad: 35  conCansancio: 10 conModificadores: misModificadores.
	"otroJugador tiene calificacion 13250"
	
	"Act"
	esUnJugadorElMejor := unJugador esMejorQue: otroJugador.
	
	"Assert"
	self assert: esUnJugadorElMejor.
]

{ #category : #tests }
JugadorSuplenteTests >> test14UnJugadorSuplenteDeCalificacion748NoEsMejorQueUnJugadorTitularDeCalificacion13250 [
	| unJugador otroJugador misModificadores esUnJugadorElMejor |
	
	"Arrange"
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 2); add: (Moral new bajar).
	unJugador := JugadorSuplente conNombre: 'J Di Maria' conHabilidad: 15  conCalidadDeSuplente: 0.7 conModificadores: misModificadores.
	"unJugador tiene calificacion ~748"
	
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 5); add: (Moral new subir).
	otroJugador := JugadorTitular conNombre: 'Lio Messi' conHabilidad: 35  conCansancio: 10 conModificadores: misModificadores.
	"otroJugador tiene calificacion 13250"
	
	"Act"
	esUnJugadorElMejor := unJugador esMejorQue: otroJugador.
	
	"Assert"
	self deny: esUnJugadorElMejor.
]
