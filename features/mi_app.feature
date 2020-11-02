Feature: Ahorcado

Scenario: Bienvenido al Juego
When inicio la aplicacion
Then muestra "Bienvenido al juego Ahorcado"

Scenario: Pintar guiones
When inicio la aplicacion
Then imprime "_"

Scenario: envia letra
Given inicio la aplicacion con la letra "A"
When envia letra "A"
Then mostrar "Ganaste"

Scenario: errar letra
Given inicio la aplicacion con la letra "A"
When envia letra "B"
Then mostrar "Perdiste"

Scenario: mostrar guiones por palabra
When inicio la aplicacion con la palabra "CASA"
Then imprime "_ _ _ _"

Scenario: mostrar letra acertada en palabra
Given inicio la aplicacion con la palabra "CASA"
When envia letra "C"
Then imprime "C _ _ _"