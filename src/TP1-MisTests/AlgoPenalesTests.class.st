Class {
	#name : #AlgoPenalesTests,
	#superclass : #TestCase,
	#category : #'TP1-MisTests'
}

{ #category : #tests }
AlgoPenalesTests >> test01UnAlgoPenalesCreadoConPartidoCorrectoNoElevaExcepcionInputPartidoInvalido [		
	| algoPenales partido |
	
	"Arrange"
	partido := 'Argentina - Mexico'.
	
	"Act & Assert"
	self shouldnt: [ algoPenales := AlgoPenales conPartido: partido. ] raise: InputPartidoInvalido.
]

{ #category : #tests }
AlgoPenalesTests >> test02NoPuedoCrearUnAlgoPenalesConPartidoInvalidoElevaExcepcionInputPartidoInvalido [		
	| algoPenales partido |
	
	"Arrange"
	partido := 'Argentina -Mexico'.
	
	"Act & Assert"
	self should: [ algoPenales := AlgoPenales conPartido: partido. ] raise: InputPartidoInvalido.
]

{ #category : #tests }
AlgoPenalesTests >> test03NoPuedoCrearOtroAlgoPenalesConPartidoInvalidoElevaExcepcionInputPartidoInvalido [		
	| algoPenales partido |
	
	"Arrange"
	partido := 'Argentina'.
	
	"Act & Assert"
	self should: [ algoPenales := AlgoPenales conPartido: partido. ] raise: InputPartidoInvalido.
]

{ #category : #tests }
AlgoPenalesTests >> test04PuedoCrearUnAlgoPenalesConPartidoCorrectoDeVariasPalabrasNoElevaExcepcionInputPartidoInvalido [		
	| algoPenales partido |
	
	"Arrange"
	partido := 'Irlanda del norte - Emiratos Árabes Unidos'.
	
	"Act & Assert"
	self shouldnt: [ algoPenales := AlgoPenales conPartido: partido. ] raise: InputPartidoInvalido.
]

{ #category : #tests }
AlgoPenalesTests >> test05PuedoCrearUnAlgoPenalesConPartidoCorrectoYEquipoExistenteGanandoNoElevaExcepcionEquipoNoExiste [
	| algoPenales partido |
	
	"Arrange"
	partido := 'Argentina - Brasil'.
	
	"Act & Assert"
	self shouldnt: [ algoPenales := AlgoPenales conPartido: partido yGanando: 'Argentina'. ] raise: EquipoNoExiste.
]

{ #category : #tests }
AlgoPenalesTests >> test06PuedoCrearUnAlgoPenalesConPartidoCorrectoYEquipoExistenteDeLaDerechaGanandoNoElevaExcepcionEquipoNoExiste [
	| algoPenales partido |
	
	"Arrange"
	partido := 'Argentina - Brasil'.
	
	"Act & Assert"
	self shouldnt: [ algoPenales := AlgoPenales conPartido: partido yGanando: 'Brasil'. ] raise: EquipoNoExiste.
]

{ #category : #tests }
AlgoPenalesTests >> test07NoPuedoCrearUnAlgoPenalesConPartidoCorrectoYEquipoInexistenteGanandoElevaExcepcionEquipoNoExiste [
	| algoPenales partido |
	
	"Arrange"
	partido := 'Argentina - Brasil'.
	
	"Act & Assert"
	self should: [ algoPenales := AlgoPenales conPartido: partido yGanando: 'Chile'. ] raise: EquipoNoExiste.
]

{ #category : #tests }
AlgoPenalesTests >> test08PuedoCrearUnAlgoPenalesConPartidoCorrectoYEquipoExistenteDeVariasPalabrasGanandoNoElevaExcepcionEquipoNoExiste [
	| algoPenales partido |
	
	"Arrange"
	partido := 'Irlanda del Norte - Brasil'.
	
	"Act & Assert"
	self shouldnt: [ algoPenales := AlgoPenales conPartido: partido yGanando: 'Irlanda del Norte'. ] raise: EquipoNoExiste.
]

{ #category : #tests }
AlgoPenalesTests >> test09PuedoCrearUnAlgoPenalesConPartidoCorrectoYEquipoExistentePerdiendoNoElevaExcepcionEquipoNoExiste [
	| algoPenales partido |
	
	"Arrange"
	partido := 'Argentina - Brasil'.
	
	"Act & Assert"
	self shouldnt: [ algoPenales := AlgoPenales conPartido: partido yPerdiendo: 'Argentina'. ] raise: EquipoNoExiste.
]

{ #category : #tests }
AlgoPenalesTests >> test10PuedoCrearUnAlgoPenalesConPartidoCorrectoYEquipoExistenteDeLaDerechaPerdiendoNoElevaExcepcionEquipoNoExiste [
	| algoPenales partido |
	
	"Arrange"
	partido := 'Argentina - Brasil'.
	
	"Act & Assert"
	self shouldnt: [ algoPenales := AlgoPenales conPartido: partido yPerdiendo: 'Brasil'. ] raise: EquipoNoExiste.
]

{ #category : #tests }
AlgoPenalesTests >> test11NoPuedoCrearUnAlgoPenalesConPartidoCorrectoYEquipoInexistentePerdiendoElevaExcepcionEquipoNoExiste [
	| algoPenales partido |
	
	"Arrange"
	partido := 'Argentina - Brasil'.
	
	"Act & Assert"
	self should: [ algoPenales := AlgoPenales conPartido: partido yPerdiendo: 'Chile'. ] raise: EquipoNoExiste.
]

{ #category : #tests }
AlgoPenalesTests >> test12PuedoCrearUnAlgoPenalesConPartidoCorrectoYEquipoExistenteDeVariasPalabrasPerdiendoNoElevaExcepcionEquipoNoExiste [
	| algoPenales partido |
	
	"Arrange"
	partido := 'Irlanda del Norte - Brasil'.
	
	"Act & Assert"
	self shouldnt: [ algoPenales := AlgoPenales conPartido: partido yPerdiendo: 'Irlanda del Norte'. ] raise: EquipoNoExiste.
]

{ #category : #tests }
AlgoPenalesTests >> test13NoPuedoCrearUnAlgoPenalesConPartidoIncorrectoYEquipoExistenteGanandoElevaExcepcionInputPartidoInvalido [
	| algoPenales partido |
	
	"Arrange"
	partido := 'Irlanda del Norte -Brasil'.
	
	"Act & Assert"
	self should: [ algoPenales := AlgoPenales conPartido: partido yGanando: 'Irlanda del Norte'. ] raise: InputPartidoInvalido.
]

{ #category : #tests }
AlgoPenalesTests >> test13NoPuedoCrearUnAlgoPenalesConPartidoIncorrectoYEquipoExistentePerdiendoElevaExcepcionInputPartidoInvalido [
	| algoPenales partido |
	
	"Arrange"
	partido := 'Irlanda del Norte -Brasil'.
	
	"Act & Assert"
	self should: [ algoPenales := AlgoPenales conPartido: partido yPerdiendo: 'Irlanda del Norte'. ] raise: InputPartidoInvalido.
]

{ #category : #tests }
AlgoPenalesTests >> test15NoPuedoElegirPateadorDeUnEquipoExistenteSinJugadoresElevaExcepcionNoHayJugadoresRegistrados [
	| algoPenales partido |
	
	"Arrange"
	partido := 'Argentina - Brasil'.
	algoPenales := AlgoPenales conPartido: partido.
	
	"Act & Assert"
	self should: [ algoPenales elegirPateadorDe: 'Argentina' ] raise: NoHayJugadoresRegistrados.
]

{ #category : #tests }
AlgoPenalesTests >> test16NoPuedoElegirPateadorDeUnEquipoExistenteDeLaDerechaSinJugadoresElevaExcepcionNoHayJugadoresRegistrados [
	| algoPenales partido |
	
	"Arrange"
	partido := 'Argentina - Brasil'.
	algoPenales := AlgoPenales conPartido: partido.
	
	"Act & Assert"
	self should: [ algoPenales elegirPateadorDe: 'Brasil' ] raise: NoHayJugadoresRegistrados.
]

{ #category : #tests }
AlgoPenalesTests >> test17NoPuedoElegirUnPateadorDeUnEquipoInexistenteElevaExcepcionEquipoNoExiste [
	| algoPenales partido |
	
	"Arrange"
	partido := 'Argentina - Brasil'.
	algoPenales := AlgoPenales conPartido: partido.
	
	"Act & Assert"
	self should: [ algoPenales elegirPateadorDe: 'Mexico' ] raise: EquipoNoExiste.
]

{ #category : #tests }
AlgoPenalesTests >> test18NoPuedoRegistrarUnJugadorTitularEnEquipoInexistenteElevaExcepcionEquipoNoExiste [
	| algoPenales partido |
	
	"Arrange"
	partido := 'Argentina - Brasil'.
	algoPenales := AlgoPenales conPartido: partido.
	
	"Act & Assert"
	self should: [ algoPenales registrarJugadorTitular: 'Messi' para: 'Mexico' conHabilidad: 1 conCansancio: 1 conExperiencia: 1 ] raise: EquipoNoExiste.
]

{ #category : #tests }
AlgoPenalesTests >> test19NoPuedoRegistrarUnJugadorSuplenteEnEquipoInexistenteElevaExcepcionEquipoNoExiste [
	| algoPenales partido |
	
	"Arrange"
	partido := 'Argentina - Brasil'.
	algoPenales := AlgoPenales conPartido: partido.
	
	"Act & Assert"
	self should: [ algoPenales registrarJugadorSuplente: 'Neymar' para: 'Mexico' conHabilidad: 1 conCalidadDeSuplente: 1 conExperiencia: 1 ] raise: EquipoNoExiste.
]

{ #category : #tests }
AlgoPenalesTests >> test20PateadorDeUnEquipoConUnUnicoJugadorTitularEsElEsperado [
	| algoPenales partido jugadorEsperado jugadorQuePatea |
	
	"Arrange"
	partido := 'Argentina - Brasil'.
	jugadorEsperado := 'Lio Messi'.
	algoPenales := AlgoPenales conPartido: partido.
	
	algoPenales registrarJugadorTitular: jugadorEsperado para: 'Argentina' conHabilidad: 50 conCansancio: 30 conExperiencia: 3.
	
	"Act"
	jugadorQuePatea := algoPenales elegirPateadorDe: 'Argentina'.
	
	"Assert"
	self assert: jugadorQuePatea equals: jugadorEsperado.
]

{ #category : #tests }
AlgoPenalesTests >> test21PateadorDeUnEquipoDeLaDerechaConUnUnicoJugadorTitularEsElEsperado [
	| algoPenales partido jugadorEsperado jugadorQuePatea |
	
	"Arrange"
	partido := 'Argentina - Brasil'.
	jugadorEsperado := 'Neymar Junior'.
	algoPenales := AlgoPenales conPartido: partido.
	
	algoPenales registrarJugadorTitular: jugadorEsperado para: 'Brasil' conHabilidad: 50 conCansancio: 30 conExperiencia: 3.
	
	"Act"
	jugadorQuePatea := algoPenales elegirPateadorDe: 'Brasil'.
	
	"Assert"
	self assert: jugadorQuePatea equals: jugadorEsperado.
]

{ #category : #tests }
AlgoPenalesTests >> test22PateadorDeUnEquipoConUnUnicoSuplenteTitularEsElEsperado [
	| algoPenales partido jugadorEsperado jugadorQuePatea |
	
	"Arrange"
	partido := 'Argentina - Brasil'.
	jugadorEsperado := 'Lio Messi'.
	algoPenales := AlgoPenales conPartido: partido.
	
	algoPenales registrarJugadorSuplente: jugadorEsperado para: 'Argentina' conHabilidad: 30 conCalidadDeSuplente: 0.8 conExperiencia: 6.
	
	"Act"
	jugadorQuePatea := algoPenales elegirPateadorDe: 'Argentina'.
	
	"Assert"
	self assert: jugadorQuePatea equals: jugadorEsperado.
]

{ #category : #tests }
AlgoPenalesTests >> test23PateadorDeUnEquipoDeLaDerechaConUnUnicoSuplenteTitularEsElEsperado [
	| algoPenales partido jugadorEsperado jugadorQuePatea |
	
	"Arrange"
	partido := 'Argentina - Brasil'.
	jugadorEsperado := 'Neymar Junior'.
	algoPenales := AlgoPenales conPartido: partido.
	
	algoPenales registrarJugadorSuplente: jugadorEsperado para: 'Brasil' conHabilidad: 100 conCalidadDeSuplente: 0.75 conExperiencia: 4.
	
	"Act"
	jugadorQuePatea := algoPenales elegirPateadorDe: 'Brasil'.
	
	"Assert"
	self assert: jugadorQuePatea equals: jugadorEsperado.
]

{ #category : #tests }
AlgoPenalesTests >> test24PateadorDeUnEquipoConDosJugadoresTitularesEsElEsperado [
	| algoPenales partido jugadorEsperado jugadorQuePatea |
	
	"Arrange"
	partido := 'Sudan - Chile'.
	jugadorEsperado := 'Jose Perez'.
	algoPenales := AlgoPenales conPartido: partido.
	
	algoPenales registrarJugadorTitular: jugadorEsperado para: 'Sudan' conHabilidad: 50 conCansancio: 80 conExperiencia: 5.
	algoPenales registrarJugadorTitular: 'Tito Gonzales' para: 'Sudan' conHabilidad: 50 conCansancio: 30 conExperiencia: 1.
		
	"Act"
	jugadorQuePatea := algoPenales elegirPateadorDe: 'Sudan'.
	
	"Assert"
	self assert: jugadorQuePatea equals: jugadorEsperado.
]

{ #category : #tests }
AlgoPenalesTests >> test25PateadorDeUnEquipoDeLaDerechaConDosJugadoresTitularesEsElEsperado [
	| algoPenales partido jugadorEsperado jugadorQuePatea |
	
	"Arrange"
	partido := 'Chile - Sudan'.
	jugadorEsperado := 'Jose Perez'.
	algoPenales := AlgoPenales conPartido: partido.
	
	algoPenales registrarJugadorTitular: jugadorEsperado para: 'Sudan' conHabilidad: 50 conCansancio: 80 conExperiencia: 5.
	algoPenales registrarJugadorTitular: 'Tito Gonzales' para: 'Sudan' conHabilidad: 50 conCansancio: 30 conExperiencia: 1.
		
	"Act"
	jugadorQuePatea := algoPenales elegirPateadorDe: 'Sudan'.
	
	"Assert"
	self assert: jugadorQuePatea equals: jugadorEsperado.
]

{ #category : #tests }
AlgoPenalesTests >> test26PateadorDeUnEquipoConDosJugadoresSuplentesEsElEsperado [
	| algoPenales partido jugadorEsperado jugadorQuePatea |
	
	"Arrange"
	partido := 'Canada - Korea'.
	jugadorEsperado := 'Von Newman'.
	algoPenales := AlgoPenales conPartido: partido.
	
	algoPenales registrarJugadorSuplente: jugadorEsperado para: 'Canada' conHabilidad: 80 conCalidadDeSuplente: 3 conExperiencia: 5.
	algoPenales registrarJugadorSuplente: 'Tito Junio' para: 'Canada' conHabilidad: 80 conCalidadDeSuplente: 2.3 conExperiencia: 5.
		
	"Act"
	jugadorQuePatea := algoPenales elegirPateadorDe: 'Canada'.
	
	"Assert"
	self assert: jugadorQuePatea equals: jugadorEsperado.
]

{ #category : #tests }
AlgoPenalesTests >> test27PateadorDeUnEquipoDeLaDerechaConDosJugadoresSuplentesEsElEsperado [
	| algoPenales partido jugadorEsperado jugadorQuePatea |
	
	"Arrange"
	partido := 'Korea - Canada'.
	jugadorEsperado := 'Von Newman'.
	algoPenales := AlgoPenales conPartido: partido.
	
	algoPenales registrarJugadorSuplente: jugadorEsperado para: 'Canada' conHabilidad: 80 conCalidadDeSuplente: 3 conExperiencia: 5.
	algoPenales registrarJugadorSuplente: 'Tito Junio' para: 'Canada' conHabilidad: 80 conCalidadDeSuplente: 2.3 conExperiencia: 5.
		
	"Act"
	jugadorQuePatea := algoPenales elegirPateadorDe: 'Canada'.
	
	"Assert"
	self assert: jugadorQuePatea equals: jugadorEsperado.
]

{ #category : #tests }
AlgoPenalesTests >> test28PateadorDeUnEquipoConUnTitularYUnSuplenteEsElEsperado [
	| algoPenales partido jugadorEsperado jugadorQuePatea |
	
	"Arrange"
	partido := 'China - Taiwan'.
	jugadorEsperado := 'Mendelino Sota'.
	algoPenales := AlgoPenales conPartido: partido.
	
	algoPenales registrarJugadorTitular: jugadorEsperado para: 'China' conHabilidad: 1000 conCansancio: 23 conExperiencia: 6.
	algoPenales registrarJugadorSuplente: 'Jon Travolta' para: 'China' conHabilidad: 80 conCalidadDeSuplente: 1.3 conExperiencia: 2.
		
	"Act"
	jugadorQuePatea := algoPenales elegirPateadorDe: 'China'.
	
	"Assert"
	self assert: jugadorQuePatea equals: jugadorEsperado.
]

{ #category : #tests }
AlgoPenalesTests >> test29PateadorDeUnEquipoDeLaDerechaConUnTitularYUnSuplenteEsElEsperado [
	| algoPenales partido jugadorEsperado jugadorQuePatea |
	
	"Arrange"
	partido := 'Taiwan - China'.
	jugadorEsperado := 'Mendelino Sota'.
	algoPenales := AlgoPenales conPartido: partido.
	
	algoPenales registrarJugadorTitular: jugadorEsperado para: 'China' conHabilidad: 1000 conCansancio: 23 conExperiencia: 6.
	algoPenales registrarJugadorSuplente: 'Jon Travolta' para: 'China' conHabilidad: 80 conCalidadDeSuplente: 1.3 conExperiencia: 2.
		
	"Act"
	jugadorQuePatea := algoPenales elegirPateadorDe: 'China'.
	
	"Assert"
	self assert: jugadorQuePatea equals: jugadorEsperado.
]

{ #category : #tests }
AlgoPenalesTests >> test30PateadorDeUnEquipoGanandoConDosJugadoresTitularesEsElEsperado [
	| algoPenales partido jugadorEsperado jugadorQuePatea |
	
	"Arrange"
	partido := 'Sudan - Chile'.
	jugadorEsperado := 'Jose Perez'.
	algoPenales := AlgoPenales conPartido: partido yGanando: 'Sudan'.
	
	algoPenales registrarJugadorTitular: jugadorEsperado para: 'Sudan' conHabilidad: 50 conCansancio: 80 conExperiencia: 5.
	algoPenales registrarJugadorTitular: 'Tito Gonzales' para: 'Sudan' conHabilidad: 50 conCansancio: 30 conExperiencia: 1.
		
	"Act"
	jugadorQuePatea := algoPenales elegirPateadorDe: 'Sudan'.
	
	"Assert"
	self assert: jugadorQuePatea equals: jugadorEsperado.
]

{ #category : #tests }
AlgoPenalesTests >> test31PateadorDeUnEquipoGanandoConDosJugadoresSuplentesEsElEsperado [
	| algoPenales partido jugadorEsperado jugadorQuePatea |
	
	"Arrange"
	partido := 'Canada - Korea'.
	jugadorEsperado := 'Von Newman'.
	algoPenales := AlgoPenales conPartido: partido yGanando: 'Canada'.
	
	algoPenales registrarJugadorSuplente: jugadorEsperado para: 'Canada' conHabilidad: 80 conCalidadDeSuplente: 3 conExperiencia: 5.
	algoPenales registrarJugadorSuplente: 'Tito Junio' para: 'Canada' conHabilidad: 80 conCalidadDeSuplente: 2.3 conExperiencia: 5.
		
	"Act"
	jugadorQuePatea := algoPenales elegirPateadorDe: 'Canada'.
	
	"Assert"
	self assert: jugadorQuePatea equals: jugadorEsperado.
]

{ #category : #tests }
AlgoPenalesTests >> test32PateadorDeUnEquipoGanandoConUnTitularYUnSuplenteEsElEsperado [
	| algoPenales partido jugadorEsperado jugadorQuePatea |
	
	"Arrange"
	partido := 'China - Taiwan'.
	jugadorEsperado := 'Mendelino Sota'.
	algoPenales := AlgoPenales conPartido: partido yGanando: 'China'.
	
	algoPenales registrarJugadorTitular: jugadorEsperado para: 'China' conHabilidad: 1000 conCansancio: 23 conExperiencia: 6.
	algoPenales registrarJugadorSuplente: 'Jon Travolta' para: 'China' conHabilidad: 80 conCalidadDeSuplente: 1.3 conExperiencia: 2.
		
	"Act"
	jugadorQuePatea := algoPenales elegirPateadorDe: 'China'.
	
	"Assert"
	self assert: jugadorQuePatea equals: jugadorEsperado.
]

{ #category : #tests }
AlgoPenalesTests >> test33PateadorDeUnEquipoPerdiendoConDosJugadoresTitularesEsElEsperado [
	| algoPenales partido jugadorEsperado jugadorQuePatea |
	
	"Arrange"
	partido := 'Sudan - Chile'.
	jugadorEsperado := 'Jose Perez'.
	algoPenales := AlgoPenales conPartido: partido yPerdiendo: 'Sudan'.
	
	algoPenales registrarJugadorTitular: jugadorEsperado para: 'Sudan' conHabilidad: 50 conCansancio: 80 conExperiencia: 5.
	algoPenales registrarJugadorTitular: 'Tito Gonzales' para: 'Sudan' conHabilidad: 50 conCansancio: 30 conExperiencia: 1.
		
	"Act"
	jugadorQuePatea := algoPenales elegirPateadorDe: 'Sudan'.
	
	"Assert"
	self assert: jugadorQuePatea equals: jugadorEsperado.
]

{ #category : #tests }
AlgoPenalesTests >> test34PateadorDeUnEquipoPerdiendoConDosJugadoresSuplentesEsElEsperado [
	| algoPenales partido jugadorEsperado jugadorQuePatea |
	
	"Arrange"
	partido := 'Canada - Korea'.
	jugadorEsperado := 'Von Newman'.
	algoPenales := AlgoPenales conPartido: partido yPerdiendo: 'Canada'.
	
	algoPenales registrarJugadorSuplente: jugadorEsperado para: 'Canada' conHabilidad: 80 conCalidadDeSuplente: 3 conExperiencia: 5.
	algoPenales registrarJugadorSuplente: 'Tito Junio' para: 'Canada' conHabilidad: 80 conCalidadDeSuplente: 2.3 conExperiencia: 5.
		
	"Act"
	jugadorQuePatea := algoPenales elegirPateadorDe: 'Canada'.
	
	"Assert"
	self assert: jugadorQuePatea equals: jugadorEsperado.
]

{ #category : #tests }
AlgoPenalesTests >> test35PateadorDeUnEquipoPerdiendoConUnTitularYUnSuplenteEsElEsperado [
	| algoPenales partido jugadorEsperado jugadorQuePatea |
	
	"Arrange"
	partido := 'China - Taiwan'.
	jugadorEsperado := 'Mendelino Sota'.
	algoPenales := AlgoPenales conPartido: partido yPerdiendo: 'China'.
	
	algoPenales registrarJugadorTitular: jugadorEsperado para: 'China' conHabilidad: 1000 conCansancio: 23 conExperiencia: 6.
	algoPenales registrarJugadorSuplente: 'Jon Travolta' para: 'China' conHabilidad: 80 conCalidadDeSuplente: 1.3 conExperiencia: 2.
		
	"Act"
	jugadorQuePatea := algoPenales elegirPateadorDe: 'China'.
	
	"Assert"
	self assert: jugadorQuePatea equals: jugadorEsperado.
]

{ #category : #tests }
AlgoPenalesTests >> test36PateadorDeUnEquipoConUnTitularYUnSuplenteNoSeVeAfectadoPorRegistrarJugadoresAlOtroEquipo [
	| algoPenales partido jugadorEsperado jugadorQuePatea |
	
	"Arrange"
	partido := 'Argentina - Peru'.
	jugadorEsperado := 'Gabriel Juarez'.
	algoPenales := AlgoPenales conPartido: partido.
	
	algoPenales registrarJugadorTitular: jugadorEsperado para: 'Argentina' conHabilidad: 1000 conCansancio: 23 conExperiencia: 6.
	algoPenales registrarJugadorSuplente: 'Messi' para: 'Argentina' conHabilidad: 80 conCalidadDeSuplente: 1.3 conExperiencia: 2.
	
	algoPenales registrarJugadorTitular: 'Suarez' para: 'Peru' conHabilidad: 100 conCansancio: 35 conExperiencia: 5.
	algoPenales registrarJugadorSuplente: 'Muslera' para: 'Peru' conHabilidad: 200 conCalidadDeSuplente: 1.75 conExperiencia: 2.
		
	"Act"
	jugadorQuePatea := algoPenales elegirPateadorDe: 'Argentina'.
	
	"Assert"
	self assert: jugadorQuePatea equals: jugadorEsperado.
]

{ #category : #tests }
AlgoPenalesTests >> test37PateadorDeUnEquipoConDosTitularesNoSeVeAfectadoPorRegistrarJugadoresAlOtroEquipo [
	| algoPenales partido jugadorEsperado jugadorQuePatea |
	
	"Arrange"
	partido := 'Argentina - Peru'.
	jugadorEsperado := 'Gabriel Juarez'.
	algoPenales := AlgoPenales conPartido: partido.
	
	algoPenales registrarJugadorTitular: jugadorEsperado para: 'Argentina' conHabilidad: 1000 conCansancio: 23 conExperiencia: 6.
	algoPenales registrarJugadorTitular: 'Messi' para: 'Argentina' conHabilidad: 80 conCansancio: 80 conExperiencia: 2.
	
	algoPenales registrarJugadorTitular: 'Suarez' para: 'Peru' conHabilidad: 100 conCansancio: 35 conExperiencia: 5.
	algoPenales registrarJugadorSuplente: 'Muslera' para: 'Peru' conHabilidad: 200 conCalidadDeSuplente: 1.75 conExperiencia: 2.
		
	"Act"
	jugadorQuePatea := algoPenales elegirPateadorDe: 'Argentina'.
	
	"Assert"
	self assert: jugadorQuePatea equals: jugadorEsperado.
]

{ #category : #tests }
AlgoPenalesTests >> test38PateadorDeUnEquipoCon30JugadoresEsElEsperado [
	| algoPenales partido jugadorEsperado jugadorQuePatea |
	
	"Arrange"
	partido := 'Argentina - Colombia'.
	jugadorEsperado := 'Lio Messi'.
	algoPenales := AlgoPenales conPartido: partido.
	
	1 to: 29 do: [ :i | algoPenales registrarJugadorTitular: (i asString) para: 'Argentina' conHabilidad: 10 conCansancio: 20 conExperiencia: 1. ].
	algoPenales registrarJugadorTitular: jugadorEsperado para: 'Argentina' conHabilidad: 1000 conCansancio: 23 conExperiencia: 6.
		
	"Act"
	jugadorQuePatea := algoPenales elegirPateadorDe: 'Argentina'.
	
	"Assert"
	self assert: jugadorQuePatea equals: jugadorEsperado.
]

{ #category : #tests }
AlgoPenalesTests >> test39PateadorDeUnEquipoDeLaDerechaCon30JugadoresEsElEsperado [
	| algoPenales partido jugadorEsperado jugadorQuePatea |
	
	"Arrange"
	partido := 'Colombia - Argentina'.
	jugadorEsperado := 'Lio Messi'.
	algoPenales := AlgoPenales conPartido: partido.
	
	algoPenales registrarJugadorTitular: jugadorEsperado para: 'Argentina' conHabilidad: 1000 conCansancio: 23 conExperiencia: 6.
	1 to: 29 do: [ :i | algoPenales registrarJugadorTitular: (i asString) para: 'Argentina' conHabilidad: 10 conCansancio: 20 conExperiencia: 1. ].
		
	"Act"
	jugadorQuePatea := algoPenales elegirPateadorDe: 'Argentina'.
	
	"Assert"
	self assert: jugadorQuePatea equals: jugadorEsperado.
]
