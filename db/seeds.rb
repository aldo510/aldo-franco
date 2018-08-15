
puts 'Residential --> 0'
residential = Kind.create(name: 'residential')
commercial = Kind.create(name: 'commercial')
office = Kind.create(name: 'office')
# health = Kind.create(name: 'health')
education = Kind.create(name: 'education')
cultural = Kind.create(name: 'cultural')
publics = Kind.create(name: 'publics')

residential.buildings << Building.create(name: 'ahuehuetes 2105',
                description: '',
                year: '2016',
                location: 'Mexico City',
                area: '435.00sqm' ,
                thumbnail: 'thumbnail/ahuehuetes.jpg',
                images: ['buildings/ahuehuetes-2105/ahuehuetes1.jpg',
                         'buildings/ahuehuetes-2105/ahuehuetes2.jpg',
                         'buildings/ahuehuetes-2105/ahuehuetes3.jpg',
                         'buildings/ahuehuetes-2105/ahuehuetes4.jpg',
                         'buildings/ahuehuetes-2105/ahuehuetes5.jpg',
                         'buildings/ahuehuetes-2105/ahuehuetes6.jpg'])
residential.buildings << Building.create(name: 'Sauces 902',
                description: '',
                year: '2016',
                location: 'Mexico City',
                area: '315.00sqm' ,
                thumbnail: 'buildings/sauces/sause.jpg',
                images: ['buildings/sauces/sauses1.jpg',
                         'buildings/sauces/sauses2.jpg',
                         'buildings/sauces/sauses3.jpg',
                         'buildings/sauces/sauses4.jpg'])
residential.buildings << Building.create(name: 'Carso AP',
                description: '',
                year: '2017',
                location: 'Mexico City',
                area: '350.00sqm' ,
                thumbnail: 'buildings/carso/carsom.jpg',
                images: ['buildings/carso/carsoap1.jpg',
                         'buildings/carso/carsoap2.jpg',
                         'buildings/carso/carsoap3.jpg',
                         'buildings/carso/carsoap4.jpg',
                         'buildings/carso/carsoap5.jpg',
                         'buildings/carso/carsoap6.jpg',
                         'buildings/carso/carsoap7.jpg',
                         'buildings/carso/carsoap8.jpg',
                         'buildings/carso/carsoap9.jpg',
                         'buildings/carso/carsoap10.jpg',
                         'buildings/carso/carsoap11.jpg',
                         'buildings/carso/carsoap12.jpg',
                         'buildings/carso/carsoap13.jpg',
                         'buildings/carso/carsoap14.jpg',
                         'buildings/carso/carsoap15.jpg'])

residential.buildings << Building.create(name: 'bosque de canelos',
                description: '',
                year: '2015',
                location: 'Mexico City',
                area: '320m²' ,
                thumbnail: 'thumbnail/residential/bosquedecanelos.jpg',
                images: ['buildings/bosque-de-canelos/canelos1.jpg',
                         'buildings/bosque-de-canelos/canelos2.jpg',
                         'buildings/bosque-de-canelos/canelos3.jpg',
                         'buildings/bosque-de-canelos/canelos4.jpg',
                         'buildings/bosque-de-canelos/canelos5.jpg',
                         'buildings/bosque-de-canelos/canelos6.jpg',
                         'buildings/bosque-de-canelos/canelos7.jpg',
                         'buildings/bosque-de-canelos/canelos8.jpg',
                         'buildings/bosque-de-canelos/canelos9.jpg',
                         'buildings/bosque-de-canelos/canelos10.jpg',
                         'buildings/bosque-de-canelos/canelos11.jpg',
                         'buildings/bosque-de-canelos/canelos12.jpg'])


residential.buildings << Building.create(name: 'departamento ppg',
                description: '',
                year: '2018',
                location: 'Mexico City',
                area: '430m²' ,
                thumbnail: 'thumbnail/ppg.jpg',
                images: ['buildings/departamento-ppg/departamentoppg1.jpg',
                         'buildings/departamento-ppg/departamentoppg2.jpg',
                         'buildings/departamento-ppg/departamentoppg3.jpg',
                         'buildings/departamento-ppg/departamentoppg4.jpg',
                         'buildings/departamento-ppg/departamentoppg5.jpg'])


residential.buildings << Building.create(name: 'tamarindos 902',
                description: '',
                year: '2016',
                location: 'Mexico City',
                area: '370.00sqm' ,
                thumbnail: 'thumbnail/residential/tamarindos.jpg',
                images: ['buildings/tamarindos-902/TAMARINDOS-902-1.jpg',
                         'buildings/tamarindos-902/TAMARINDOS-902-2.jpg',
                         'buildings/tamarindos-902/TAMARINDOS-902-3.jpg',
                         'buildings/tamarindos-902/TAMARINDOS-902-4.jpg',
                         'buildings/tamarindos-902/TAMARINDOS-902-5.jpg'])



residential.buildings << Building.create(name: 'u house',
                description: '',
                year: '2017',
                location: 'Valle de Bravo',
                area: '610m²' ,
                thumbnail: 'thumbnail/uh-house.jpg',
                images: ['buildings/u-house-bosque-de-canelos/uhouse1.jpg',
                         'buildings/u-house-bosque-de-canelos/uhouse2.jpg',
                         'buildings/u-house-bosque-de-canelos/uhouse3.jpg',
                         'buildings/u-house-bosque-de-canelos/uhouse4.jpg',
                         'buildings/u-house-bosque-de-canelos/uhouse5.jpg',
                         'buildings/u-house-bosque-de-canelos/uhouse6.jpg'])





# -----------------------------------------------------------------------------
puts 'Commercial --> 1'
commercial.buildings << Building.create(name: 'be concept store',
                description: '',
                year: '2016',
                location: 'Mexico City',
                area: '300m²' ,
                thumbnail: 'thumbnail/commercial/beconceptm.jpg',
                images: ['buildings/be-concept-store/beconceptstore1.jpg',
                         'buildings/be-concept-store/beconceptstore2.jpg',
                         'buildings/be-concept-store/beconceptstore3.jpg',
                         'buildings/be-concept-store/beconceptstore4.jpg',
                         'buildings/be-concept-store/beconceptstore5.jpg',
                         'buildings/be-concept-store/beconceptstore6.jpg',
                         'buildings/be-concept-store/beconceptstore7.jpg',
                         'buildings/be-concept-store/beconceptstore8.jpg',
                         'buildings/be-concept-store/beconceptstore9.jpg'])

commercial.buildings << Building.create(name: 'raw republic',
                description: '',
                year: '2017',
                location: 'Mexico City',
                area: '280m²' ,
                thumbnail: 'thumbnail/commercial/rawrepublicm.jpg',
                images: ['buildings/raw-republic/rawrepublic1.jpg',
                         'buildings/raw-republic/rawrepublic2.jpg',
                         'buildings/raw-republic/rawrepublic3.jpg',
                         'buildings/raw-republic/rawrepublic4.jpg',
                         'buildings/raw-republic/rawrepublic5.jpg',
                         'buildings/raw-republic/rawrepublic6.jpg',
                         'buildings/raw-republic/rawrepublic7.jpg',
                         'buildings/raw-republic/rawrepublic8.jpg',
                         'buildings/raw-republic/rawrepublic9.jpg',
                         'buildings/raw-republic/rawrepublic10.jpg',
                         'buildings/raw-republic/rawrepublic11.jpg',
                         'buildings/raw-republic/rawrepublic12.jpg',
                         'buildings/raw-republic/rawrepublic13.jpg',
                         'buildings/raw-republic/rawrepublic14.jpg'])


commercial.buildings << Building.create(name: 'ten tei',
                description: '',
                year: '2018',
                location: 'Mexico City',
                area: '70m²',
                thumbnail: 'thumbnail/commercial/tenteim.jpg',
                images: ['buildings/ten-tei/tentei1.jpg',
                         'buildings/ten-tei/tentei2.jpg',
                         'buildings/ten-tei/tentei3.jpg',
                         'buildings/ten-tei/tentei4.jpg',
                         'buildings/ten-tei/tentei5.jpg',
                         'buildings/ten-tei/tentei6.jpg',
                         'buildings/ten-tei/tentei7.jpg',
                         'buildings/ten-tei/tentei8.jpg',
                         'buildings/ten-tei/tentei9.jpg',
                         'buildings/ten-tei/tentei10.jpg',
                         'buildings/ten-tei/tentei11.jpg',
                         'buildings/ten-tei/tentei12.jpg'])

commercial.buildings << Building.create(name: 'in the mix',
                description: '',
                year: '2016',
                location: 'Mexico City',
                area: '110.00sqm',
                thumbnail: 'thumbnail/inthemix.jpg',
                images: ['buildings/in-the-mix/inthemix1.jpg',
                         'buildings/in-the-mix/inthemix2.jpg',
                         'buildings/in-the-mix/inthemix3.jpg',
                         'buildings/in-the-mix/inthemix4.jpg',
                         'buildings/in-the-mix/inthemix5.jpg',
                         'buildings/in-the-mix/inthemix6.jpg'])

commercial.buildings << Building.create(name: 'plaza polanquito',
                description: '',
                year: '2014',
                location: 'Mexico City',
                area: '870.00sqm',
                thumbnail: 'thumbnail/commercial/polanquitom.jpg',
                images: ['buildings/plaza-polanquito/polanquito1.jpg',
                         'buildings/plaza-polanquito/polanquito2.jpg',
                         'buildings/plaza-polanquito/polanquito3.jpg',
                         'buildings/plaza-polanquito/polanquito4.jpg'])




# -----------------------------------------------------------------------------
puts 'office --> 2'
office.buildings << Building.create(name: '​jz offices',
                description: '',
                year: '',
                location: '',
                area: '',
                thumbnail: 'thumbnail/jz.jpg',
                images: ['buildings/​jz-offices/jz1.jpg',
                         'buildings/​jz-offices/jz2.jpg',
                         'buildings/​jz-offices/jz3.jpg',
                         'buildings/​jz-offices/jz4.jpg',
                         'buildings/​jz-offices/jz5.jpg'])


building = Building.create(name: '​max mix',
                description: '',
                year: '2012',
                location: 'Mexico City',
                area: '14,500.00sqm',
                thumbnail: 'thumbnail/office/maxmixm.jpg',
                images: ['buildings/max-mix/maxmix2.jpg',
                         'buildings/max-mix/maxmix3.jpg',
                         'buildings/max-mix/maxmix4.jpg',
                         'buildings/max-mix/maxmix5.jpg',
                         'buildings/max-mix/maxmix1.jpg'])

office.buildings << building
commercial.buildings << building



# building = Building.create(name: 'reforma 341',
#                 description: '',
#                 year: '2008',
#                 location: 'Mexico City',
#                 area: '250,000.00sqm',
#                 thumbnail: 'thumbnail/office/reformam.jpg',
#                 images: ['buildings/reforma-341/REFORMA-341-1.jpg',
#                          'buildings/reforma-341/REFORMA-341-2.jpg',
#                          'buildings/reforma-341/REFORMA-341-3.jpg',
#                          'buildings/reforma-341/REFORMA-341-4.jpg'])

# commercial.buildings << building
# residential.buildings << building
# office.buildings << building




office.buildings << Building.create(name: 'winsor headquarters',
                description: '',
                year: '2017',
                location: 'Mexico City',
                area: '580m²',
                thumbnail: 'thumbnail/windsor.jpg',
                images: ['buildings/winsor-headquarters/winsor1.jpg',
                         'buildings/winsor-headquarters/winsor2.jpg',
                         'buildings/winsor-headquarters/winsor3.jpg',
                         'buildings/winsor-headquarters/winsor4.jpg',
                         'buildings/winsor-headquarters/winsor5.jpg',
                         'buildings/winsor-headquarters/winsor6.jpg',
                         'buildings/winsor-headquarters/winsor7.jpg',
                         'buildings/winsor-headquarters/winsor8.jpg',
                         'buildings/winsor-headquarters/winsor9.jpg',
                         'buildings/winsor-headquarters/winsor10.jpg',
                         'buildings/winsor-headquarters/winsor11.jpg',
                         'buildings/winsor-headquarters/winsor12.jpg'])



office.buildings << Building.create(name: 'eg headquarters',
                description: '',
                year: '2014',
                location: 'Mexico City',
                area: '410m²',
                thumbnail: 'thumbnail/eg.jpg',
                images: ['buildings/eg-headquarters/egheadquarters1.jpg',
                         'buildings/eg-headquarters/egheadquarters2.jpg',
                         'buildings/eg-headquarters/egheadquarters3.jpg',
                         'buildings/eg-headquarters/egheadquarters4.jpg',
                         'buildings/eg-headquarters/egheadquarters5.jpg',
                         'buildings/eg-headquarters/egheadquarters6.jpg',
                         'buildings/eg-headquarters/egheadquarters7.jpg',
                         'buildings/eg-headquarters/egheadquarters8.jpg',
                         'buildings/eg-headquarters/egheadquarters9.jpg',
                         'buildings/eg-headquarters/egheadquarters10.jpg',
                         'buildings/eg-headquarters/egheadquarters11.jpg',
                         'buildings/eg-headquarters/egheadquarters12.jpg',
                         'buildings/eg-headquarters/egheadquarters13.jpg',
                         'buildings/eg-headquarters/egheadquarters14.jpg',
                         'buildings/eg-headquarters/egheadquarters15.jpg',
                         'buildings/eg-headquarters/egheadquarters16.jpg'])



# -----------------------------------------------------------------------------
puts 'health --> 3'


# -----------------------------------------------------------------------------
puts 'education --> 4'
education.buildings << Building.create(name: 'cuajimalpa community center',
                description: '',
                year: '2011',
                location: 'Mexico City',
                area: '22,000.00sqm',
                thumbnail: 'thumbnail/education/cuajimalpa.jpg',
                images: ['buildings/cuajimalpa-community-center/cuajimalpa1.jpg',
                         'buildings/cuajimalpa-community-center/cuajimalpa2.jpg',
                         'buildings/cuajimalpa-community-center/cuajimalpa3.jpg',
                         'buildings/cuajimalpa-community-center/cuajimalpa4.jpg',
                         'buildings/cuajimalpa-community-center/cuajimalpa5.jpg',
                         'buildings/cuajimalpa-community-center/cuajimalpa6.jpg'])



# -----------------------------------------------------------------------------
puts 'cultural --> 5'
building = Building.create(name: 'chapultepec library',
                description: '',
                year: '2010',
                location: 'Mexico City',
                area: '13,000.00sqm',
                thumbnail: 'thumbnail/cultural/chapultepecm.jpg',
                images: ['buildings/chapultepec-library/chapultepec1.jpg',
                         'buildings/chapultepec-library/chapultepec2.jpg',
                         'buildings/chapultepec-library/chapultepec3.jpg',
                         'buildings/chapultepec-library/chapultepec4.jpg',
                         'buildings/chapultepec-library/chapultepec5.jpg',
                         'buildings/chapultepec-library/chapultepec6.jpg'])

cultural.buildings << building
publics.buildings << building


building = Building.create(name: 'minm museum',
                description: '',
                year: '2009',
                location: 'Mexico City',
                area: '11,000.00sqm',
                thumbnail: 'thumbnail/minim.jpg',
                images: ['buildings/minm-museum/minim1.jpg',
                         'buildings/minm-museum/minim2.jpg',
                         'buildings/minm-museum/minim3.jpg',
                         'buildings/minm-museum/minim4.jpg'])

cultural.buildings << building
publics.buildings << building



# -----------------------------------------------------------------------------
puts 'publics --> 6'
building = Building.create(name: 'toluca convention center',
                description: '',
                year: '2012',
                location: 'Toluca, Estado de Mexico',
                area: '160,000.00sqm',
                thumbnail: 'thumbnail/tolucacc.jpg',
                images: ['buildings/toluca-convention-center/tolucacc1.JPG',
                         'buildings/toluca-convention-center/tolucacc2.jpg',
                         'buildings/toluca-convention-center/tolucacc3.jpg',
                         'buildings/toluca-convention-center/tolucacc4.jpg',
                         'buildings/toluca-convention-center/tolucacc5.jpg',
                         'buildings/toluca-convention-center/tolucacc6.jpg',
                         'buildings/toluca-convention-center/tolucacc7.jpg',
                         'buildings/toluca-convention-center/tolucacc8.jpg'])

publics.buildings << building
commercial.buildings << building