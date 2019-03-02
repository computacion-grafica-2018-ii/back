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
        properties: '{"columns":["Parameter_name","Equation/Value","Units"],"params":[{"name":"precioMadera20","units":"ul","formula":"MAD20"},{"name":"precioMadera30","units":"ul","formula":"MAD30"},{"name":"precioMinifixTuerca","units":"ul","formula":"MFIXTUERCA"},{"name":"precioVarillaAluminio","units":"ul","formula":"VARALUM"},{"name":"precioManija","units":"ul","formula":"MANIJA"},{"name":"precioBoton","units":"ul","formula":"BOTON"},{"name":"precioMinifix","units":"ul","formula":"MINIFIX"},{"name":"precioChazo","units":"ul","formula":"CHAZO"},{"name":"precioBisagra","units":"ul","formula":"BISAGRA"},{"name":"altoTotal","units":"mm","formula":""},{"name":"ancho","units":"mm","formula":""},{"name":"largo","units":"mm","formula":""},{"name":"ancho2","units":"mm","formula":""},{"name":"cantCajones","units":"ul","formula":""},{"name":"espacioEntre","units":"mm","formula":""},{"name":"altoCajon","units":"mm","formula":""},{"name":"espesorTablas","units":"mm","formula":""},{"name":"espesorPuertas","units":"mm","formula":""},{"name":"anchoRiel","units":"mm","formula":""},{"name":"diametroVarilla","units":"mm","formula":""},{"name":"anchoVisagra","units":"mm","formula":""},{"name":"largoBisagra","units":"mm","formula":""},{"name":"alto","units":"mm","formula":""},{"name":"anchoCajon","units":"mm","formula":""},{"name":"cantEntrepanos","units":"ul","formula":""},{"name":"largoPiso","units":"mm","formula":""},{"name":"anchoPiso","units":"mm","formula":""},{"name":"anchoPuerta","units":"mm","formula":""},{"name":"altoPuerta","units":"mm","formula":""},{"name":"anchoPuerta2","units":"mm","formula":""}]}',
        assemblyPath: 'C:/QuotationApp/Closet/closetV6',
		assemblyFile: '1.iam',
		excelFile: 'parametros.xls'
    },
    {
        name: 'Mueble de Linos',
        properties: '{"columns":["Parameter_Name","Equation/Value","Units"],"params":[{"name":"Height","units":"mm","formula":""},{"name":"Width","units":"mm","formula":""},{"name":"Depth","units":"mm","formula":""},{"name":"NumSpacesL","units":"ul","formula":""},{"name":"NumSpacesR","units":"ul","formula":""},{"name":"FurniType","units":"ul","formula":""},{"name":"PricePerArea20mm","units":"ul","formula":"MAD20"},{"name":"PricePerArea30mm","units":"ul","formula":"MAD30"},{"name":"PrecioMinifix","units":"ul","formula":"MINIFIX"},{"name":"PrecioBisagra","units":"ul","formula":"BISAGRA"},{"name":"PrecioTornilloB","units":"ul","formula":"TORNILLOB"},{"name":"PrecioTornilloM","units":"ul","formula":"TORNILLOM"},{"name":"PrecioManija","units":"ul","formula":"MANIJA"}]}',
        assemblyPath: 'C:/QuotationApp/Linos/30',
		assemblyFile: '30.iam',
		excelFile: 'parametros.xls'
    },
    {
        name: 'Mueble TV 3 Puertas',
        properties: '{"columns":["Parameter_Name","Equation/Value","Units"],"params":[{"name":"Alto","units":"mm","formula":""},{"name":"Ancho","units":"mm","formula":""},{"name":"Profundidad","units":"mm","formula":""},{"name":"Largo_TS","units":"mm","formula":""},{"name":"Profundidad_TS","units":"mm","formula":""},{"name":"Largo_Em","units":"mm","formula":""},{"name":"Alto_SV","units":"mm","formula":""},{"name":"Profundidad_SV","units":"mm","formula":""},{"name":"Alto_SVM","units":"mm","formula":""},{"name":"Profundidad_SVM","units":"mm","formula":""},{"name":"Alto_SH","units":"mm","formula":""},{"name":"Ancho_SH","units":"mm","formula":""},{"name":"Ancho_TI","units":"mm","formula":""},{"name":"Profundidad_TI","units":"mm","formula":""},{"name":"Ancho_EnI","units":"mm","formula":""},{"name":"Profundidad_EnI","units":"mm","formula":""},{"name":"Ancho_EnD","units":"mm","formula":""},{"name":"Profundidad_EnD","units":"mm","formula":""},{"name":"Alto_Pt","units":"mm","formula":""},{"name":"Ancho_Pt","units":"mm","formula":""},{"name":"Alto_SpI","units":"mm","formula":""},{"name":"Ancho_SpI","units":"mm","formula":""},{"name":"Alto_SpD","units":"mm","formula":""},{"name":"Ancho_SpD","units":"mm","formula":""},{"name":"Dp1_tmf_TS","units":"mm","formula":""},{"name":"Dp2_tmf_TS","units":"mm","formula":""},{"name":"Dp3_tmf_TS","units":"mm","formula":""},{"name":"Da1_tmf_TS","units":"mm","formula":""},{"name":"PrecioMadera","units":"","formula":"MADERA"},{"name":"PrecioAluminio","units":"","formula":"ALUMINIO"},{"name":"PrecioMinifix","units":"","formula":"MINIFIX"},{"name":"PrecioBisagra","units":"","formula":"BISAGRA"},{"name":"PrecioTornillo","units":"","formula":"TORNILLO"}]}',
        assemblyPath: 'C:/QuotationApp/Tv3/mueble_tv_3_puertas',
		assemblyFile: '4.iam',
		excelFile: 'parametros.xls'
    },
    {
        name: 'Mueble TV 4 Puertas',
        properties: '{"columns":["Parameter_Name","Equation/Value","Units"],"params":[{"name":"alto","units":"mm","formula":";"},{"name":"ancho","units":"mm","formula":";"},{"name":"profundidad","units":"mm","formula":";"},{"name":"Ancho_TS","units":"mm","formula":";"},{"name":"Profundidad_TS","units":"mm","formula":";"},{"name":"Ancho_Em","units":"mm","formula":";"},{"name":"Alto_SV","units":"mm","formula":";"},{"name":"Profundidad_SV","units":"mm","formula":";"},{"name":"Alto_SVM","units":"mm","formula":";"},{"name":"Profundidad_SVM","units":"mm","formula":";"},{"name":"Alto_SH","units":"mm","formula":";"},{"name":"Ancho_SH","units":"mm","formula":";"},{"name":"Ancho_TI","units":"mm","formula":";"},{"name":"Profundidad_TI","units":"mm","formula":";"},{"name":"Ancho_En","units":"mm","formula":";"},{"name":"Profundidad_En","units":"mm","formula":";"},{"name":"Alto_Pt","units":"mm","formula":";"},{"name":"Ancho_Pt","units":"mm","formula":";"},{"name":"Alto_Sp","units":"mm","formula":";"},{"name":"Ancho_Sp","units":"mm","formula":";"},{"name":"A_Lo_Largo","units":"mm","formula":";"},{"name":"A_Lo_Ancho","units":"mm","formula":";"},{"name":"Entrepanos","units":"mm","formula":";"},{"name":"precioMadera","units":"ul","formula":"MADERA"},{"name":"precioAluminio","units":"ul","formula":"ALUMINIO"},{"name":"precioBisagra","units":"ul","formula":"BISAGRA"},{"name":"precioTornillo","units":"ul","formula":"TORNILLO"},{"name":"precioMinifix","units":"ul","formula":"MINIFIX"}]}',
        assemblyPath: 'C:/QuotationApp/Tv4/MUEBLE_TV_4_puertas',
		assemblyFile: '4.iam',
		excelFile: 'parametros.xls'
    },
    {
        name: 'Mueble de Baño',
        properties: '{"columns":["Parameter_Name","Equation/Value","Units"],"params":[{"name":"Ancho","units":"mm","formula":";"},{"name":"Largo","units":"mm","formula":";"},{"name":"Alto","units":"mm","formula":";"},{"name":"Espesor","units":"mm","formula":";"},{"name":"Largo_PD","units":"mm","formula":";"},{"name":"Largo_PI","units":"mm","formula":";"},{"name":"Alto_Cajones","units":"mm","formula":";"},{"name":"Esp_Lam","units":"mm","formula":";"},{"name":"PrecioMadera20","units":"ul","formula":"MAD20"},{"name":"PrecioMadera2","units":"ul","formula":"MAD2"},{"name":"TornillosMinifix","units":"ul","formula":"MFIXTORNILLO"},{"name":"Minifix","units":"ul","formula":"MINIFIX"},{"name":"Puntillas10mm","units":"ul","formula":"PUNT10"},{"name":"Grifos","units":"ul","formula":"GRIFO"},{"name":"Lavamanos","units":"ul","formula":"LAVAMANOS"},{"name":"Cifon","units":"ul","formula":"CIFON"},{"name":"Botones","units":"ul","formula":"BOTON"},{"name":"Correderas","units":"ul","formula":"CORREDERA"},{"name":"Bisagras","units":"ul","formula":"BISAGRA"}]}',
        assemblyPath: 'C:/QuotationApp/Bannio/Baño3-planos-ilogic',
		assemblyFile: 'Ensamble_mueble_bano2.iam',
		excelFile: 'parametros.xls'
    }
    # {
    #     name: 'Mueble de Cocina',
    #     properties: '',
    #     assemblyPath: 'C:/QuotationApp/Cocina/Mueble_Cocina',
	# 	assemblyFile: '2.iam',
	# 	excelFile: 'parametros.xls'
    # }
])

########################################################################
# STOCKS
########################################################################

Stock.create([
    {
        supplier: 'DEFAULT',
        delivery_delay: 10,
        name:'Madera de 20 mm de grosor',
        code: 'MAD20',
        quantity: 100,
        price: '128000'
    },
    {
        supplier: 'DEFAULT',
        delivery_delay: 10,
        name:'Madera de 30 mm de grosor',
        code: 'MAD30',
        quantity: 100,
        price: '200000'
    },
    {
        supplier: 'DEFAULT',
        delivery_delay: 10,
        name:'Tuerca Minifix',
        code: 'MFIXTUERCA',
        quantity: 100,
        price: '200'
    },
    {
        supplier: 'DEFAULT',
        delivery_delay: 10,
        name:'Varilla de Aluminio',
        code: 'VARALUM',
        quantity: 100,
        price: '10000'
    },
    {
        supplier: 'DEFAULT',
        delivery_delay: 10,
        name:'Manija',
        code: 'MANIJA',
        quantity: 100,
        price: '18000'
    },
    {
        supplier: 'DEFAULT',
        delivery_delay: 10,
        name:'Boton',
        code: 'BOTON',
        quantity: 100,
        price: '2000'
    },
    {
        supplier: 'DEFAULT',
        delivery_delay: 10,
        name:'Minifix',
        code: 'MINIFIX',
        quantity: 100,
        price: '100'
    },
    {
        supplier: 'DEFAULT',
        delivery_delay: 10,
        name:'Chazo',
        code: 'CHAZO',
        quantity: 100,
        price: '1000'
    },
    {
        supplier: 'DEFAULT',
        delivery_delay: 10,
        name:'Bisagra',
        code: 'BISAGRA',
        quantity: 100,
        price: '6000'
    },
    {
        supplier: 'DEFAULT',
        delivery_delay: 10,
        name:'Tornillo tipo B',
        code: 'TORNILLOB',
        quantity: 100,
        price: '1000'
    },
    {
        supplier: 'DEFAULT',
        delivery_delay: 10,
        name:'Tornillo tipo M',
        code: 'TORNILLOM',
        quantity: 100,
        price: '1000'
    },
    {
        supplier: 'DEFAULT',
        delivery_delay: 10,
        name:'Madera generica',
        code: 'MADERA',
        quantity: 100,
        price: '50000'
    },
    {
        supplier: 'DEFAULT',
        delivery_delay: 10,
        name:'Aluminio generico',
        code: 'ALUMINIO',
        quantity: 100,
        price: '10000'
    },
    {
        supplier: 'DEFAULT',
        delivery_delay: 10,
        name:'Tornillo generico',
        code: 'TORNILLO',
        quantity: 100,
        price: '300'
    },
    {
        supplier: 'DEFAULT',
        delivery_delay: 10,
        name:'Madera de 2 mm de grosor',
        code: 'MAD2',
        quantity: 100,
        price: '10000'
    },
    {
        supplier: 'DEFAULT',
        delivery_delay: 10,
        name:'Tornillo Minifix',
        code: 'MFIXTORNILLO',
        quantity: 100,
        price: '100'
    },
    {
        supplier: 'DEFAULT',
        delivery_delay: 10,
        name:'Puntilla de 10 mm',
        code: 'PUNT10',
        quantity: 100,
        price: '50'
    },
    {
        supplier: 'DEFAULT',
        delivery_delay: 10,
        name:'Grifo',
        code: 'GRIFO',
        quantity: 100,
        price: '20000'
    },
    {
        supplier: 'DEFAULT',
        delivery_delay: 10,
        name:'Lavamanos',
        code: 'LAVAMANOS',
        quantity: 100,
        price: '200000'
    },
    {
        supplier: 'DEFAULT',
        delivery_delay: 10,
        name:'Cifon',
        code: 'CIFON',
        quantity: 100,
        price: '10000'
    },
    {
        supplier: 'DEFAULT',
        delivery_delay: 10,
        name:'Corredera',
        code: 'CORREDERA',
        quantity: 100,
        price: '15000'
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