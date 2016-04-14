Proceso sin_titulo
	repetir 
		Escribir "cantidad de alumnos a evaluar: ";
		leer cantAlum;
		si cantAlum<1 || cantAlum>45 entonces
			escribir "cantidad de alumnos no valida, ingrese nuevamente";
		FinSi
	Hasta Que cantAlum<45;
	cont<-0
	suma<-0
	alumRepro<-0
	alumApro<-0
	notaMax<-0
	repetir 
		cont<-cont+1;
		Escribir "notas del alumno ",cont;  
		leer nota;
		suma<-suma+nota;
		si nota<1 || nota>7 Entonces
			Escribir "nota fuera de rango";
		Sino 
			si nota<4 Entonces
				alumRepro<-alumRepro+1;
			Sino
				alumApro<-alumApro+1;
			FinSi
		FinSi
		si nota>notaMax entonces
			notaMax<-nota;
		FinSi
	Hasta Que cont=cantAlum;
	promediocurso<-suma/cantAlum;
	
	Escribir "promedio del curso es: ",promediocurso;
	Escribir "mejor promedio ", notaMax;
	Escribir alumApro*100/cont,"% alumnos aprobados";
	Escribir alumRepro*100/cantAlum,"% alumnos reprobados";
FinProceso
