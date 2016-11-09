# encoding: UTF-8
class Menu_comida
	attr_accessor :title, :porcentaje, :platos, :porcion, :gramos, :vct, :p_proteinas, :p_grasas, :p_hidratos 
	
	def initialize(title, porcentaje,platos,porcion,gramos,vct,p_proteinas,p_grasas,p_hidratos)
	@title=title
	@porcentaje = porcentaje
	@platos = platos
	@porcion=porcion
	@gramos = gramos
	@vct = vct
	@p_proteinas = p_proteinas
	@p_grasas = p_grasas
	@p_hidratos = p_hidratos
	end
	
	def get_platos
	@conjunto_platos = ""
	@platos.each do |p|
	@conjunto_platos<<"- "<<"#{p}"<<"\n"
	end

	"#{@conjunto_platos}"
	end

	def get_nombre_menu
	@title
	end
	
	def porcentaje
	@porcentaje
	end
	
	def get_plato(num_plato)
	"- #{@platos[num_plato]}"
	end

	def get_porcentaje
	@porcentaje
	end
	
	def get_vct
	@vct
	end
	
	def get_p_proteinas
	@p_proteinas
	end
	
	def get_p_grasas
	@p_grasas
	end

	def get_p_hidratos
	@p_hidratos
	end
	
	def to_s
	@platos_final = ""
	total = @platos.length
	cont = 0
	while cont < total do
	@platos_final<<"- "<<@platos[cont]<<", "<<@porcion[cont]<<", "<<@gramos[cont]<<"\n"
	cont += 1
	end
	
	"#{@title} (#{@porcentaje})\n#{@platos_final}"+
	"V.C.T. | %\t#{@vct} kcal | #{@p_proteinas}% - #{@p_grasas}"+
	"% - #{@p_hidratos}%"
	end
end