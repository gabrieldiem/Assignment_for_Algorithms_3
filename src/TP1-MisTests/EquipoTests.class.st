Class {
	#name : #EquipoTests,
	#superclass : #TestCase,
	#category : #'TP1-MisTests'
}

{ #category : #tests }
EquipoTests >> test01UnEquipoSeCreaConElNombreEsperado [
	| miEquipo nombreEsperado esNombreCorrecto |
	
	"Arrange"
	nombreEsperado := 'Argentina'.
	miEquipo := Equipo conNombre: nombreEsperado.
	
	"Act"
	esNombreCorrecto := miEquipo esNombre: nombreEsperado.
	
	"Assert"
	self assert: esNombreCorrecto.
]

{ #category : #tests }
EquipoTests >> test02OtroEquipoSeCreaConElNombreEsperado [
	| miEquipo nombreEsperado esNombreCorrecto |
	
	"Arrange"
	nombreEsperado := 'Chile'.
	miEquipo := Equipo conNombre: nombreEsperado.
	
	"Act"
	esNombreCorrecto := miEquipo esNombre: nombreEsperado.
	
	"Assert"
	self assert: esNombreCorrecto.
]

{ #category : #tests }
EquipoTests >> test03NoPuedoElegirPateadorDeUnEquipoSinJugadoresElevaExcepcionNohayJugadoresRegistrados [
	| miEquipo nombreEsperado |
	
	"Arrange"
	nombreEsperado := 'Argentina'.
	miEquipo := Equipo conNombre: nombreEsperado.
	
	"Act & Assert"
	self should: [ miEquipo elegirPateador ] raise: NoHayJugadoresRegistrados.
]

{ #category : #tests }
EquipoTests >> test04PateadorDeUnEquipoConUnUnicoJugadorTitularEsElEsperado [
	| miEquipo pateadorEsperado pateadorResultante |
	
	"Arrange"
	pateadorEsperado := 'Robinho'.
	miEquipo := Equipo conNombre: 'Venezuela'.
	
	miEquipo registrarJugadorTitular: pateadorEsperado conHabilidad: 100 conCansancio: 50 conExperiencia: 10.
	
	"Act"
	pateadorResultante := miEquipo elegirPateador.
	
	"Assert"
	self assert: pateadorResultante equals: pateadorEsperado.
]

{ #category : #tests }
EquipoTests >> test05PateadorDeUnEquipoConUnUnicoJugadorSuplenteEsElEsperado [
	| miEquipo pateadorEsperado pateadorResultante |
	
	"Arrange"
	pateadorEsperado := 'Robinho'.
	miEquipo := Equipo conNombre: 'Venezuela'.
	
	miEquipo registrarJugadorSuplente: pateadorEsperado conHabilidad: 100 conCalidadDeSuplente: 3.5 conExperiencia: 2.
	
	"Act"
	pateadorResultante := miEquipo elegirPateador.
	
	"Assert"
	self assert: pateadorResultante equals: pateadorEsperado.
]

{ #category : #tests }
EquipoTests >> test06PateadorDeUnEquipoConDosTitularesEsElEsperado [
	| miEquipo pateadorEsperado pateadorResultante |
	
	"Arrange"
	pateadorEsperado := 'Jorge'.
	miEquipo := Equipo conNombre: 'Paraguay'.
	
	miEquipo registrarJugadorTitular: pateadorEsperado conHabilidad: 100 conCansancio: 50 conExperiencia: 10.
	miEquipo registrarJugadorTitular: 'Dominguez' conHabilidad: 80 conCansancio: 50 conExperiencia: 10.
	
	"Act"
	pateadorResultante := miEquipo elegirPateador.
	
	"Assert"
	self assert: pateadorResultante equals: pateadorEsperado.
]

{ #category : #tests }
EquipoTests >> test07PateadorDeUnEquipoConDosSuplentesEsElEsperado [
	| miEquipo pateadorEsperado pateadorResultante |
	
	"Arrange"
	pateadorEsperado := 'Jorge'.
	miEquipo := Equipo conNombre: 'Paraguay'.
	
	miEquipo registrarJugadorSuplente: pateadorEsperado conHabilidad: 100 conCalidadDeSuplente: 3.5 conExperiencia: 10.
	miEquipo registrarJugadorSuplente: 'Dominguez' conHabilidad: 100 conCalidadDeSuplente: 3.4 conExperiencia: 10.
	
	"Act"
	pateadorResultante := miEquipo elegirPateador.
	
	"Assert"
	self assert: pateadorResultante equals: pateadorEsperado.
]

{ #category : #tests }
EquipoTests >> test08PateadorDeUnEquipoConUnTitularYUnSuplenteEsElEsperado [
	| miEquipo pateadorEsperado pateadorResultante |
	
	"Arrange"
	pateadorEsperado := 'Matias'.
	miEquipo := Equipo conNombre: 'Ecuador'.
	
	miEquipo registrarJugadorTitular: pateadorEsperado conHabilidad: 50 conCansancio: 12 conExperiencia: 3.
	miEquipo registrarJugadorSuplente: 'Perez' conHabilidad: 10 conCalidadDeSuplente: 0.2 conExperiencia: 10.
	
	"Act"
	pateadorResultante := miEquipo elegirPateador.
	
	"Assert"
	self assert: pateadorResultante equals: pateadorEsperado.
]

{ #category : #tests }
EquipoTests >> test09PateadorDeOtroEquipoConUnTitularYUnSuplenteEsElEsperado [
	| miEquipo pateadorEsperado pateadorResultante |
	
	"Arrange"
	pateadorEsperado := 'Matias'.
	miEquipo := Equipo conNombre: 'Ecuador'.
	
	miEquipo registrarJugadorSuplente: pateadorEsperado conHabilidad: 100 conCalidadDeSuplente: 3.2 conExperiencia: 10.
	miEquipo registrarJugadorTitular: 'Perez' conHabilidad: 50 conCansancio: 12 conExperiencia: 3.
	
	"Act"
	pateadorResultante := miEquipo elegirPateador.
	
	"Assert"
	self assert: pateadorResultante equals: pateadorEsperado.
]

{ #category : #tests }
EquipoTests >> test10PateadorDeUnEquipoGanandoConDosTitularesEsElEsperado [
	| miEquipo pateadorEsperado pateadorResultante |
	
	"Arrange"
	pateadorEsperado := 'Jorge'.
	miEquipo := Equipo conNombre: 'Paraguay'.
	miEquipo estaGanando.
	
	miEquipo registrarJugadorTitular: pateadorEsperado conHabilidad: 100 conCansancio: 50 conExperiencia: 10.
	miEquipo registrarJugadorTitular: 'Dominguez' conHabilidad: 80 conCansancio: 50 conExperiencia: 10.
	
	"Act"
	pateadorResultante := miEquipo elegirPateador.
	
	"Assert"
	self assert: pateadorResultante equals: pateadorEsperado.
]

{ #category : #tests }
EquipoTests >> test11PateadorDeUnEquipoGanandoConUnTitularYUnSuplenteEsElEsperado [
	| miEquipo pateadorEsperado pateadorResultante |
	
	"Arrange"
	pateadorEsperado := 'Matias'.
	miEquipo := Equipo conNombre: 'Ecuador'.
	miEquipo estaGanando.
	
	miEquipo registrarJugadorTitular: pateadorEsperado conHabilidad: 50 conCansancio: 12 conExperiencia: 3.
	miEquipo registrarJugadorSuplente: 'Perez' conHabilidad: 10 conCalidadDeSuplente: 0.2 conExperiencia: 10.
	
	"Act"
	pateadorResultante := miEquipo elegirPateador.
	
	"Assert"
	self assert: pateadorResultante equals: pateadorEsperado.
]

{ #category : #tests }
EquipoTests >> test12PateadorDeUnEquipoPerdiendoConDosTitularesEsElEsperado [
	| miEquipo pateadorEsperado pateadorResultante |
	
	"Arrange"
	pateadorEsperado := 'Jorge'.
	miEquipo := Equipo conNombre: 'Paraguay'.
	miEquipo estaPerdiendo.
	
	miEquipo registrarJugadorTitular: pateadorEsperado conHabilidad: 100 conCansancio: 50 conExperiencia: 10.
	miEquipo registrarJugadorTitular: 'Dominguez' conHabilidad: 80 conCansancio: 50 conExperiencia: 10.
	
	"Act"
	pateadorResultante := miEquipo elegirPateador.
	
	"Assert"
	self assert: pateadorResultante equals: pateadorEsperado.
]

{ #category : #tests }
EquipoTests >> test13PateadorDeUnEquipoPerdiendoConUnTitularYUnSuplenteEsElEsperado [
	| miEquipo pateadorEsperado pateadorResultante |
	
	"Arrange"
	pateadorEsperado := 'Matias'.
	miEquipo := Equipo conNombre: 'Ecuador'.
	miEquipo estaPerdiendo.
	
	miEquipo registrarJugadorTitular: pateadorEsperado conHabilidad: 50 conCansancio: 12 conExperiencia: 3.
	miEquipo registrarJugadorSuplente: 'Perez' conHabilidad: 10 conCalidadDeSuplente: 0.2 conExperiencia: 10.
	
	"Act"
	pateadorResultante := miEquipo elegirPateador.
	
	"Assert"
	self assert: pateadorResultante equals: pateadorEsperado.
]
