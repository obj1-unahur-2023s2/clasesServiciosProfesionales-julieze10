class ProfesionalesAsociados{
	var property universidad
	
	method provinciasDondePuedeTrabajar() = #{"Entre Rios", "Corrientes"}
	method horariosPorHora() = 3000
		//method trabjarEnALoSumo3Pronvincias() = true
	
}

class PofesionalesVinculado{
	var property universidad
	method honorarioPorHora() = universidad.CuantosRecomendadosCobrarPorHora()
	
	method provinciasDondePuedeTrabajar() = universidad.provinciasDondeEsta()
	
	//method trabjarEnALoSumo3Pronvincias() = true
}

class ProfesionalesLibre{
	var property universidad 
	var property honorarios
	var property provinciasDondePuedeTrabajar
	
		//method trabjarEnALoSumo3Pronvincias() = provinciasDondePuedeTrabajar.size() <= 3
	
}

class Universidad{
	
	var cobroRecomendado = 5000
	var property provinciaDondeEsta
	
	method provinciaDondeEsta() 
	
	method iniciacion(porc) {
		cobroRecomendado *= + porc
	}
	
	
}


class Empresa{
	const profesionales = []
	var honorariosReferencia
	
	method contratar(p){
		profesionales.add(p)
		
		
	}
	
		
	
	method cuantosEstudiaronEn(uni) = profesionales.count{p=>p.universidad() == uni}
	
	method profesionalesCaros() = profesionales.filter{p=>p.honorariosPorHora() > honorariosReferencia}

	method universidadesFormadoras() = profesionales.map{p=>p.universidad()}.asSet()
	
	method profesionalesMasBaratos() = profesionales.min{p=>p.honorariosPorHora()}
	
	method esDeGenteAcotada() = profesionales.all{p=>p.provinciasDondePuedeTrabajar().size()<=3}
	//method esDeGenteAcotada() = profesionales.all{p=>p.provinciasDondePuedeTrabajar()}
	
}
