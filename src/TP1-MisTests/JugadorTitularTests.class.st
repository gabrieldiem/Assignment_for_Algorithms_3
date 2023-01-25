Class {
	#name : #JugadorTitularTests,
	#superclass : #TestCase,
	#category : #'TP1-MisTests'
}

{ #category : #tests }
JugadorTitularTests >> test01UnJugadorTitularCreadoConUnNombreTieneElNombreEsperado [
	| miJugador misModificadores nombreEsperado nombreResultante |
	
	"Arrange"
	nombreEsperado := 'Lio Messi'.
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 5); add: (Moral new).
	
	miJugador := JugadorTitular conNombre: nombreEsperado conHabilidad: 70  conCansancio: 50 conModificadores: misModificadores.
	
	"Act"
	nombreResultante := miJugador nombre.
	
	"Assert"
	self assert: nombreResultante equals: nombreEsperado.
]

{ #category : #tests }
JugadorTitularTests >> test02UnJugadorTitularCreadoConOtroNombreTieneElNombreEsperado [
	| miJugador misModificadores nombreEsperado nombreResultante |
	
	"Arrange"
	nombreEsperado := 'Di Maria'.
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 5); add: (Moral new).
	
	miJugador := JugadorTitular conNombre: nombreEsperado conHabilidad: 70  conCansancio: 50 conModificadores: misModificadores.
	
	"Act"
	nombreResultante := miJugador nombre.
	
	"Assert"
	self assert: nombreResultante equals: nombreEsperado.
]

{ #category : #tests }
JugadorTitularTests >> test03UnJugadorTitularCreadoExperimentadoConMoralNeutralTieneLaCalificacionCorrecta [
	| miJugador misModificadores calificacionResultante calificacionEsperada |
	
	"Arrange"
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 5); add: (Moral new).
	calificacionEsperada := (70 raisedTo: 2) * 50.
	
	miJugador := JugadorTitular conNombre: 'Lionel Messi' conHabilidad: 70  conCansancio: 50 conModificadores: misModificadores.
	
	"Act"
	calificacionResultante := miJugador calificacionParaPatear.
	
	"Assert"
	self assert: calificacionResultante equals: calificacionEsperada.
]

{ #category : #tests }
JugadorTitularTests >> test04OtroJugadorTitularCreadoExperimentadoConMoralNeutralTieneLaCalificacionCorrecta [
	| miJugador misModificadores calificacionResultante calificacionEsperada |
	
	"Arrange"
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 8); add: (Moral new).
	calificacionEsperada := (35 raisedTo: 2) * 42.
	
	miJugador := JugadorTitular conNombre: 'Lionel Messi' conHabilidad: 35  conCansancio: 42 conModificadores: misModificadores.
	
	"Act"
	calificacionResultante := miJugador calificacionParaPatear.
	
	"Assert"
	self assert: calificacionResultante equals: calificacionEsperada.
]

{ #category : #tests }
JugadorTitularTests >> test05UnJugadorTitularCreadoNoExperimentadoConMoralNeutralTieneLaCalificacionCorrecta [
	| miJugador misModificadores calificacionResultante calificacionEsperada |
	
	"Arrange"
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 2); add: (Moral new).
	calificacionEsperada := (50 raisedTo: 2) * 36 * 0.5.
	
	miJugador := JugadorTitular conNombre: 'J Di Maria' conHabilidad: 50  conCansancio: 36 conModificadores: misModificadores.
	
	"Act"
	calificacionResultante := miJugador calificacionParaPatear.
	
	"Assert"
	self assert: calificacionResultante equals: calificacionEsperada.
]

{ #category : #tests }
JugadorTitularTests >> test06OtroJugadorTitularCreadoNoExperimentadoConMoralNeutralTieneLaCalificacionCorrecta [
	| miJugador misModificadores calificacionResultante calificacionEsperada |
	
	"Arrange"
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 1); add: (Moral new).
	calificacionEsperada := (10 raisedTo: 2) * 10 * 0.5.
	
	miJugador := JugadorTitular conNombre: 'Jorge Lopez' conHabilidad: 10  conCansancio: 10 conModificadores: misModificadores.
	
	"Act"
	calificacionResultante := miJugador calificacionParaPatear.
	
	"Assert"
	self assert: calificacionResultante equals: calificacionEsperada.
]

{ #category : #tests }
JugadorTitularTests >> test07UnJugadorTitularCreadoExperimentadoConMoralBajaTieneLaCalificacionCorrecta [
	| miJugador misModificadores calificacionResultante calificacionEsperada |
	
	"Arrange"
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 5); add: (Moral new bajar).
	calificacionEsperada := ((70 raisedTo: 2) * 50) - 1000.
	
	miJugador := JugadorTitular conNombre: 'Lionel Messi' conHabilidad: 70  conCansancio: 50 conModificadores: misModificadores.
	
	"Act"
	calificacionResultante := miJugador calificacionParaPatear.
	
	"Assert"
	self assert: calificacionResultante equals: calificacionEsperada.
]

{ #category : #tests }
JugadorTitularTests >> test08UnJugadorTitularCreadoNoExperimentadoConMoralBajaTieneLaCalificacionCorrecta [
	| miJugador misModificadores calificacionResultante calificacionEsperada |
	
	"Arrange"
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 2); add: (Moral new bajar).
	calificacionEsperada := ((50 raisedTo: 2) * 36 * 0.5) - 1000.
	
	miJugador := JugadorTitular conNombre: 'J Di Maria' conHabilidad: 50  conCansancio: 36 conModificadores: misModificadores.
	
	"Act"
	calificacionResultante := miJugador calificacionParaPatear.
	
	"Assert"
	self assert: calificacionResultante equals: calificacionEsperada.
]

{ #category : #tests }
JugadorTitularTests >> test09UnJugadorTitularCreadoExperimentadoConMoralAltaTieneLaCalificacionCorrecta [
	| miJugador misModificadores calificacionResultante calificacionEsperada |
	
	"Arrange"
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 5); add: (Moral new subir).
	calificacionEsperada := ((70 raisedTo: 2) * 50) + 1000.
	
	miJugador := JugadorTitular conNombre: 'Lionel Messi' conHabilidad: 70  conCansancio: 50 conModificadores: misModificadores.
	
	"Act"
	calificacionResultante := miJugador calificacionParaPatear.
	
	"Assert"
	self assert: calificacionResultante equals: calificacionEsperada.
]

{ #category : #tests }
JugadorTitularTests >> test10UnJugadorTitularCreadoNoExperimentadoConMoralAltaTieneLaCalificacionCorrecta [
	| miJugador misModificadores calificacionResultante calificacionEsperada |
	
	"Arrange"
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 2); add: (Moral new subir).
	calificacionEsperada := ((50 raisedTo: 2) * 36 * 0.5) + 1000.
	
	miJugador := JugadorTitular conNombre: 'J Di Maria' conHabilidad: 50  conCansancio: 36 conModificadores: misModificadores.
	
	"Act"
	calificacionResultante := miJugador calificacionParaPatear.
	
	"Assert"
	self assert: calificacionResultante equals: calificacionEsperada.
]

{ #category : #tests }
JugadorTitularTests >> test11UnJugadorTitularDeCalificacion801000EsMejorQueUnJugadorTitularDeCalificacion45000 [
	| unJugador otroJugador misModificadores esUnJugadorElMejor |
	
	"Arrange"
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 5); add: (Moral new subir).
	unJugador := JugadorTitular conNombre: 'Lio Messi' conHabilidad: 100  conCansancio: 80 conModificadores: misModificadores.
	"unJugador tiene calificacion 801000"
	
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 2); add: (Moral new).
	otroJugador := JugadorTitular conNombre: 'J Di Maria' conHabilidad: 50  conCansancio: 36 conModificadores: misModificadores.
	"otroJugador tiene calificacion 45000"
	
	"Act"
	esUnJugadorElMejor := unJugador esMejorQue: otroJugador.
	
	"Assert"
	self assert: esUnJugadorElMejor.
]

{ #category : #tests }
JugadorTitularTests >> test12UnJugadorTitularDeCalificacion24000NoEsMejorQueUnJugadorTitularDeCalificacion27500 [
	| unJugador otroJugador misModificadores esUnJugadorElMejor |
	
	"Arrange"
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 5); add: (Moral new bajar).
	unJugador := JugadorTitular conNombre: 'Lopez' conHabilidad: 50  conCansancio: 10 conModificadores: misModificadores.
	"unJugador tiene calificacion 24000"
	
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 2); add: (Moral new).
	otroJugador := JugadorTitular conNombre: 'Muslera' conHabilidad: 50  conCansancio: 22 conModificadores: misModificadores.
	"otroJugador tiene calificacion 27500"
	
	"Act"
	esUnJugadorElMejor := unJugador esMejorQue: otroJugador.
	
	"Act & Assert"
	self deny: esUnJugadorElMejor.
]

{ #category : #tests }
JugadorTitularTests >> test13UnJugadorTitularDeCalificacion13250EsMejorQueUnJugadorSuplenteDeCalificacion748 [
	| unJugador otroJugador misModificadores esUnJugadorElMejor |
	
	"Arrange"
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 5); add: (Moral new subir).
	unJugador := JugadorTitular conNombre: 'Lio Messi' conHabilidad: 35  conCansancio: 10 conModificadores: misModificadores.
	"unJugador tiene calificacion 13250"
	
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 2); add: (Moral new).
	otroJugador := JugadorSuplente conNombre: 'J Di Maria' conHabilidad: 15  conCalidadDeSuplente: 0.7 conModificadores: misModificadores.
	"otroJugador tiene calificacion ~748"
	
	"Act"
	esUnJugadorElMejor := unJugador esMejorQue: otroJugador.
	
	"Assert"
	self assert: esUnJugadorElMejor.
]

{ #category : #tests }
JugadorTitularTests >> test14UnJugadorTitularDeCalificacion13250NoEsMejorQueUnJugadorSuplenteDeCalificacion18328 [
	| unJugador otroJugador misModificadores esUnJugadorElMejor |
	
	"Arrange"
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 5); add: (Moral new subir).
	unJugador := JugadorTitular conNombre: 'Lio Messi' conHabilidad: 35  conCansancio: 10 conModificadores: misModificadores.
	"unJugador tiene calificacion 13250"
	
	misModificadores := OrderedCollection new.
	misModificadores add: (Experiencia conAnios: 2); add: (Moral new bajar).
	otroJugador := JugadorSuplente conNombre: 'J Di Maria' conHabilidad: 50  conCalidadDeSuplente: 0.7 conModificadores: misModificadores.
	"otroJugador tiene calificacion ~18328"
	
	"Act"
	esUnJugadorElMejor := unJugador esMejorQue: otroJugador.
	
	"Assert"
	self deny: esUnJugadorElMejor.
]
