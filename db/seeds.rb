# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

########################################################################
# PRODUCTS
########################################################################
Product.create([
    {
        name: 'Closet',
        properties: '{\"columns\":[\"Parameter_name\",\"Equation/Value\",\"Units\"],\"params\":[{\"name\":\"precioMadera20\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"precioMadera30\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"precioMinifix\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"precioChazo\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"precioBisagra\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"cotizacion\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"altoTotal\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"ancho\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"largo\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"ancho2\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"cantCajones\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"espacioEntre\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"altoCajon\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"espesorTablas\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"espesorPuertas\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"anchoRiel\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"diametroVarilla\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"anchoBisagra\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"largoBisagra\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"alto\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"anchoCajon\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"cantEntrepanos\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"largoPiso\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"anchoPiso\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"anchoPuerta\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"altoPuerta\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"anchoPuerta2\",\"units\":\"\",\"formula\":\"\"}]}',
        assemblyPath: 'C:/QuotationApp/Closet',
		assemblyFile: '1.iam',
		excelFile: 'parameters.xls'
    },
    {
        name: 'Mueble de Linos',
        properties: '"{\"columns\":[\"Parameter_Name\",\"Equation/Value\",\"Units\"],\"params\":[{\"name\":\"Height\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Width\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Depth\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"NumSpacesL\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"NumSpacesR\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"FurniType\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"PricePerArea20mm\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"PricePerArea30mm\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"PrecioMinifix\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"PrecioBisagra\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"PrecioTornillo\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"Cotizacion\",\"units\":\"ul\",\"formula\":\"\"}]}"',
        assemblyPath: 'C:/QuotationApp/Linos',
		assemblyFile: '2.iam',
		excelFile: 'parameters.xls'
    },
    {
        name: 'Mueble TV 3 Puertas',
        properties: '"{\"columns\":[\"Parameter_Name\",\"Equation/Value\",\"Units\"],\"params\":[{\"name\":\"Alto\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Ancho\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Profundidad\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Largo_TS\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Profundidad_TS\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Largo_Em\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Alto_SV\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Profundidad_SV\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Alto_SVM\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Profundidad_SVM\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Alto_SH\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Ancho_SH\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Ancho_TI\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Profundidad_TI\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Ancho_EnI\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Profundidad_EnI\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Ancho_EnD\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Profundidad_EnD\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Alto_Pt\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Ancho_Pt\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Alto_SpI\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Ancho_SpI\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Alto_SpD\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Ancho_SpD\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Dp1_tmf_TS\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Dp2_tmf_TS\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Dp3_tmf_TS\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Da1_tmf_TS\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"PrecioMadera\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"PrecioAluminio\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"PrecioMinifix\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"PrecioBisagra\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"PrecioTornillo\",\"units\":\"\",\"formula\":\"\"},{\"name\":\"Cotización\",\"units\":\"\",\"formula\":\"\"}]}"',
        assemblyPath: 'C:/QuotationApp/TV3',
		assemblyFile: '3.iam',
		excelFile: 'parameters.xls'
    },
    {
        name: 'Mueble TV 4 Puertas',
        properties: '"{\"columns\":[\"Parameter_Name\",\"Equation/Value\",\"Units\"],\"params\":[{\"name\":\"alto\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"ancho\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"profundidad\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Ancho_TS\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Profundidad_TS\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Ancho_Em\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Alto_SV\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Profundidad_SV\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Alto_SVM\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Profundidad_SVM\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Alto_SH\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Ancho_SH\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Ancho_TI\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Profundidad_TI\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Ancho_En\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Profundidad_En\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Alto_Pt\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Ancho_Pt\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Alto_Sp\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Ancho_Sp\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"A_Lo_Largo\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"A_Lo_Ancho\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Entrepaños\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"cotizacion\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"precioMadera\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"precioAluminio\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"precioBisagra\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"precioTornillo\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"precioMinifix\",\"units\":\"ul\",\"formula\":\"\"}]}"',
        assemblyPath: 'C:/QuotationApp/TV4',
		assemblyFile: '4.iam',
		excelFile: 'parameters.xls'
    },
    {
        name: 'Mueble de Baño',
        properties: '"{\"columns\":[\"Parameter_Name\",\"Equation/Value\",\"Units\"],\"params\":[{\"name\":\"Ancho\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Largo\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Alto\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Espesor\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Alto_Puerta\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Largo_PD\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Largo_PI\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Alto_Cajones\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Esp_Lam\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"PrecioMadera20\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"PrecioMAdera2\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"TornillosMinifix\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"Minifix\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"Puntillas10mm\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"Grifos\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"Lavamanos\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"Cifon\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"Botones\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"Correderas\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"Bisagras\",\"units\":\"ul\",\"formula\":\"\"}]}"',
        assemblyPath: 'C:/QuotationApp/Bano',
		assemblyFile: '5.iam',
		excelFile: 'parameters.xls'
    },
    {
        name: 'Mueble de Cocina',
        properties: '"{\"columns\":[\"Parameter_Name\",\"Equation/Value\",\"Units\"],\"params\":[{\"name\":\"precioMadera1\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"precioMadera2\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"precioTornillos\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"precioVisagra\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"precioManija\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"cotizacion\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"Altura_Total\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Ancho_Total\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Largo_Total\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Cantidad_Compartimientos\",\"units\":\"ul\",\"formula\":\"\"},{\"name\":\"Altura_Soporte_H\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Largo_Soporte_H\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Ancho_Soporte_H\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Altura_Soporte_V\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Largo_Soporte_V\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Ancho_Soporte_V\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Altura_Soporte_V2\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Largo_Soporte_V2\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Ancho_Soporte_V2\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Altura_Entrepaño\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Largo_Entrepaño\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Ancho_Entrepaño\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Altura_Puerta\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Largo_Puerta\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Ancho_Puerta\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Altura_Refuerzo\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Largo_Refuerzo\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Ancho_Refuerzo\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Altura_Tapa\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Largo_Tapa\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Ancho_Tapa\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Separación_Topes_V\",\"units\":\"mm\",\"formula\":\"\"},{\"name\":\"Cantidad_Modulos\",\"units\":\"ul\",\"formula\":\"\"}]}"',
        assemblyPath: 'C:/QuotationApp/Cocina',
		assemblyFile: '6.iam',
		excelFile: 'parameters.xls'
    }
])

########################################################################
# STOCKS
########################################################################

Stock.create([
    {
        supplier: 'Madecentro',
        delivery_delay: 4,
        name: 'Madera de 20mm de grosor',
        code: 'MAD20MM',
        quantity: 20,
        price: '1000'
    },
    {
        supplier: 'Madecentro',
        delivery_delay: 4,
        name: 'Madera de 30mm de grosor',
        code: 'MAD30MM',
        quantity: 20,
        price: '2000'
    }
])

########################################################################
# USER
########################################################################

User.create([
    {
        name: 'Luis Gil',
		email: 'luegilca@unal.edu.co',
		password: '1234',
		role: 'Admin',
		address: 'Calle falsa #123',
		phone: '3204017867',
		organization: 'UNAL'
    }
])