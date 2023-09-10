Algoritmo LIQUIDACIONDESUELDOS
	// Se utilizara una tabla para simular el archivo de datos de los empleados, la liquidación sera de los conceptos básicos (Días trabajados, Horas Extras)
	// Se usará numero de legajo igual al indice de los vectores
	// EJECUTAR EN PANTALLA COMPLETA
	// Definición de Variables
	Definir AdminA, AdminB, VendeA, VendeB, Cajero Como Real
	Definir LegajoIndice Como Entero
	// Definicion de datos de personal
	Definir Nombre Como Cadena
	Dimensionar Nombre(5)
	Definir Categoria Como Entero
	// AdminA =1, AdminB =2, VendeA=3, VendeB=4, Cajero=5
	Dimensionar Categoria(5)
	Definir CategoriaTxt Como Cadena
	Dimensionar CategoriaTxt(5)
	Definir DiasT Como Entero
	Dimensionar DiasT(5)
	Definir Haber Como Real
	Dimensionar Haber(5)
	Definir ApJub Como Real
	Dimensionar ApJub(5)
	Definir ApOS Como Real
	Dimensionar ApOS(5)
	Definir ApGre Como Real
	Dimensionar ApGre(5)
	Nombre[1] <- 'Juan Paez'
	Categoria[1] <- 1
	CategoriaTxt[1] <- 'Administrativo A'
	Nombre[2] <- 'Lucas Juarez'
	Categoria[2] <- 3
	CategoriaTxt[2] <- 'vendedor A'
	Nombre[3] <- 'Norma Baez'
	Categoria[3] <- 5
	CategoriaTxt[3] <- 'Cajero'
	Nombre[4] <- 'Julia Suarez'
	Categoria[4] <- 1
	CategoriaTxt[4] <- 'Administrativo A'
	Nombre[5] <- 'Juan Paez'
	Categoria[5] <- 4
	CategoriaTxt[5] <- 'Vendedor B'
	Limpiar Pantalla
	Escribir '    ========================================================================================================================================================================================'
	Escribir '    # Mueblería Marina                                                                                                                                                                     #'
	Escribir '    # San Martín 10 - Salta Capital                                                                                                                                                        #'
	Escribir '    #                                                                                                                                                                                      #'
	Escribir '    #                                                                                   Sistema de Liquidación de Haberes                                                                  #'
	Escribir '    ========================================================================================================================================================================================'
	// carga de valores iniciales (valores basicos de componentes de sueldo)
	Escribir 'Por favor ingrese los valores de los sueldos según la categoria'
	Escribir 'Categoría Administrativo A: 'Sin Saltar
	Leer AdminA
	Escribir 'Categoría Administrativo B: 'Sin Saltar
	Leer AdminB
	Escribir 'Categoría Vendedor A: 'Sin Saltar
	Leer VendeA
	Escribir 'Categoría Vendedor B: 'Sin Saltar
	Leer VendeB
	Escribir 'Categoría Cajero: 'Sin Saltar
	Leer Cajero
	Limpiar Pantalla
	Escribir '    ========================================================================================================================================================================================'
	Escribir '    # Mueblería Marina                                                                                                                                                                     #'
	Escribir '    # San Martín 10 - Salta Capital                                                                                                                                                        #'
	Escribir '    #                                                                                                                                                                                      #'
	Escribir '    #                                                                                   Sistema de Liquidación de Haberes                                                                  #'
	Escribir '    ========================================================================================================================================================================================'
	Escribir 'Ingrese Número de Legajo a Liquidar:<Para finalizar ingrese 0> 'Sin Saltar
	Leer LegajoIndice
	Mientras LegajoIndice>0 Hacer
		Si LegajoIndice<=5 Entonces
			// esto es porque esta definido para cinco empleados -- Aqui se hacen los calculos
			Escribir 'Ingrese cantidad de días trabajados: 'Sin Saltar
			Leer DiasT[LegajoIndice]
			Según Categoria[LegajoIndice] Hacer
				1:
					Haber[LegajoIndice] <- DiasT[LegajoIndice]*(AdminA/30)
				2:
					Haber[LegajoIndice] <- DiasT[LegajoIndice]*(AdminB/30)
				3:
					Haber[LegajoIndice] <- DiasT[LegajoIndice]*(VendeA/30)
				4:
					Haber[LegajoIndice] <- DiasT[LegajoIndice]*(VendeB/30)
				5:
					Haber[LegajoIndice] <- DiasT[LegajoIndice]*(Cajero/30)
				De Otro Modo:
					// Ya estaría controlado al ingresar esta alternativa
			FinSegún
			ApJub[LegajoIndice] <- Haber[LegajoIndice]*0.11
			ApOS[LegajoIndice] <- Haber[LegajoIndice]*0.02
			ApGre[LegajoIndice] <- Haber[LegajoIndice]*0.02
			// impresion de recibo
			Limpiar Pantalla
			Escribir '    ========================================================================================================================================================================================'
			Escribir '    # Mueblería Marina                                                                                                                                                                     #'
			Escribir '    # San Martín 10 - Salta Capital                                                                                                                                                        #'
			Escribir '    #                                                                                                                                                                                      #'
			Escribir '    #                                                                                   Sistema de Liquidación de Haberes                                                                  #'
			Escribir '    ========================================================================================================================================================================================'
			Escribir 'Empleado : ', Nombre[LegajoIndice], '     Legajo: ', LegajoIndice
			Escribir 'Categoria: ', CategoriaTxt[LegajoIndice], '    Dias trabajados: ', DiasT[LegajoIndice]
			Escribir 'Sueldo Bruto: ', Haber[LegajoIndice]
			Escribir 'Aporte Jubilatorio: ', ApJub[LegajoIndice]
			Escribir 'Aporte Obra Social: ', ApOS[LegajoIndice]
			Escribir 'Aporte Gremial: ', ApGre[LegajoIndice]
			Escribir "Total a percibir: " Haber(LegajoIndice)-ApJub(LegajoIndice)-ApOS(LegajoIndice)-ApGre(LegajoIndice)
			Escribir '    ========================================================================================================================================================================================'
			Escribir 'Si desea liquidar otro sueldo ingrese Número de Legajo: <Para finalizar ingrese 0>'Sin Saltar
			Leer LegajoIndice
		SiNo
			Escribir 'Legajo Inexistente'
			Escribir 'Si desea liquidar otro sueldo ingrese Número de Legajo: <Para finalizar ingrese 0>'Sin Saltar
			Leer LegajoIndice
		FinSi
	FinMientras
FinAlgoritmo
