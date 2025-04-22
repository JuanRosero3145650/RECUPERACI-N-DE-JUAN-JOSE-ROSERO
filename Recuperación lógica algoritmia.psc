Algoritmo Sistema_de_calificaciones_de_un_curso
	
	Definir codigo, aprobados, reprobados, codigoMejorNota, codigoPeorNota Como Entero
	Definir nota, sumadeNotas, promedio, mejorNota, peorNota Como Real
	
		Escribir "Ingrese el código del estudiante (>0):"
		Leer codigo
		
		aprobados <- 0
		reprobados <- 0
		sumadeNotas <- 0
		mejorNota <- -1 
		peorNota <- 6 
		codigoMejorNota <- 0
		codigoPeorNota <- 0
		
		Mientras codigo <> 0 Hacer
			Escribir "Ingrese la nota del estudiante (entre 0.0 y 5.0):"
			Leer nota
			
			Si nota >= 3.0 Entonces
				aprobados <- aprobados + 1
			SiNo 
				reprobados <- reprobados + 1
			FinSi
			
			sumaNotas <- sumaNotas + nota
			
			Si nota > mejorNota Entonces
				mejorNota <- nota
				codigoMejorNota <- codigo
			FinSi
			
			Si nota < peorNota Entonces
				peorNota <- nota
				codigoPeorNota <- codigo
			FinSi
			
			Escribir "Ingrese el código del estudiante (0 para finalizar):"
			Leer codigo
		FinMientras
		
		Si aprobados + reprobados > 0 Entonces
			promedio <- sumaNotas / (aprobados + reprobados)
			
			Escribir "Estudiantes aprobados: ", aprobados
			Escribir "Estudiantes reprobados: ", reprobados 
			Escribir "Promedio global: ", promedio Con 2 Decimales 
			Escribir "Mejor nota: ", mejorNota, " (C1:", codigoMejorNota, ")" 
			Escribir "Peor nota: ", peorNota, " (C2: ", codigoPeorNota, ")"
		SiNo
			Escribir "No se ingresaron datos de estudiantes."
		FinSi
		
FinAlgoritmo
