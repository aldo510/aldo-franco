
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
                area: '435.00 sqm' ,
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
                area: '315.00 sqm' ,
                thumbnail: 'buildings/sauces/SAUSE.jpg',
                images: ['buildings/sauces/SAUSES1.jpg',
                         'buildings/sauces/SAUSES2.jpg',
                         'buildings/sauces/SAUSES3.jpg',
                         'buildings/sauces/SAUSES4.jpg'])


residential.buildings << Building.create(name: 'Carso AP',
                description: '',
                year: '2017',
                location: 'Mexico City',
                area: '350.00 sqm' ,
                thumbnail: 'buildings/carso/carsom.jpg',
                images: ['buildings/carso/CARSOAP1.jpg',
                         'buildings/carso/CARSOAP2.jpg',
                         'buildings/carso/CARSOAP3.jpg',
                         'buildings/carso/CARSOAP4.jpg',
                         'buildings/carso/CARSOAP5.jpg',
                         'buildings/carso/CARSOAP6.jpg',
                         'buildings/carso/CARSOAP7.jpg',
                         'buildings/carso/CARSOAP8.jpg',
                         'buildings/carso/CARSOAP9.jpg',
                         'buildings/carso/CARSOAP10.jpg',
                         'buildings/carso/CARSOAP11.jpg',
                         'buildings/carso/CARSOAP12.jpg',
                         'buildings/carso/CARSOAP13.jpg',
                         'buildings/carso/CARSOAP14.jpg',
                         'buildings/carso/CARSOAP15.jpg'])

residential.buildings << Building.create(name: 'bosque de canelos',
                description: '',
                year: '2015',
                location: 'Mexico City',
                area: '320 sqm' ,
                thumbnail: 'thumbnail/residential/bosquedecanelos.jpg',
                images: ['buildings/bosque-de-canelos/CANELOS1.jpg',
                         'buildings/bosque-de-canelos/CANELOS2.jpg',
                         'buildings/bosque-de-canelos/CANELOS3.jpg',
                         'buildings/bosque-de-canelos/CANELOS4.jpg',
                         'buildings/bosque-de-canelos/CANELOS5.jpg',
                         'buildings/bosque-de-canelos/CANELOS6.jpg',
                         'buildings/bosque-de-canelos/CANELOS7.jpg',
                         'buildings/bosque-de-canelos/CANELOS8.jpg',
                         'buildings/bosque-de-canelos/CANELOS9.jpg',
                         'buildings/bosque-de-canelos/CANELOS10.jpg',
                         'buildings/bosque-de-canelos/CANELOS11.jpg',
                         'buildings/bosque-de-canelos/CANELOS12.jpg'])


residential.buildings << Building.create(name: 'departamento ppg',
                description: '',
                year: '2018',
                location: 'Mexico City',
                area: '430 sqm' ,
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
                area: '370.00 sqm' ,
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
                area: '610 sqm' ,
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
                area: '300 sqm' ,
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
                area: '280 sqm' ,
                thumbnail: 'thumbnail/commercial/rawrepublicm.jpg',
                images: ['buildings/raw-republic/RAWREPUBLIC1.jpg',
                         'buildings/raw-republic/RAWREPUBLIC2.jpg',
                         'buildings/raw-republic/RAWREPUBLIC3.jpg',
                         'buildings/raw-republic/RAWREPUBLIC4.jpg',
                         'buildings/raw-republic/RAWREPUBLIC5.jpg',
                         'buildings/raw-republic/RAWREPUBLIC6.jpg',
                         'buildings/raw-republic/RAWREPUBLIC7.jpg',
                         'buildings/raw-republic/RAWREPUBLIC8.jpg',
                         'buildings/raw-republic/RAWREPUBLIC9.jpg',
                         'buildings/raw-republic/RAWREPUBLIC10.jpg',
                         'buildings/raw-republic/RAWREPUBLIC11.jpg',
                         'buildings/raw-republic/RAWREPUBLIC12.jpg',
                         'buildings/raw-republic/RAWREPUBLIC13.jpg',
                         'buildings/raw-republic/RAWREPUBLIC14.jpg'])


commercial.buildings << Building.create(name: 'ten tei',
                description: '',
                year: '2018',
                location: 'Mexico City',
                area: '70 sqm',
                thumbnail: 'thumbnail/commercial/tenteim.jpg',
                images: ['buildings/ten-tei/TENTEI1.jpg',
                         'buildings/ten-tei/TENTEI2.jpg',
                         'buildings/ten-tei/TENTEI3.jpg',
                         'buildings/ten-tei/TENTEI4.jpg',
                         'buildings/ten-tei/TENTEI5.jpg',
                         'buildings/ten-tei/TENTEI6.jpg',
                         'buildings/ten-tei/TENTEI7.jpg',
                         'buildings/ten-tei/TENTEI8.jpg',
                         'buildings/ten-tei/TENTEI9.jpg',
                         'buildings/ten-tei/TENTEI10.jpg',
                         'buildings/ten-tei/TENTEI11.jpg',
                         'buildings/ten-tei/TENTEI12.jpg'])

commercial.buildings << Building.create(name: 'in the mix',
                description: '',
                year: '2016',
                location: 'Mexico City',
                area: '110.00 sqm',
                thumbnail: 'thumbnail/inthemix.jpg',
                images: ['buildings/in-the-mix/INTHEMIX1.jpg',
                         'buildings/in-the-mix/INTHEMIX2.jpg',
                         'buildings/in-the-mix/INTHEMIX3.jpg',
                         'buildings/in-the-mix/INTHEMIX4.jpg',
                         'buildings/in-the-mix/INTHEMIX5.jpg',
                         'buildings/in-the-mix/INTHEMIX6.jpg'])

commercial.buildings << Building.create(name: 'plaza polanquito',
                description: '',
                year: '2014',
                location: 'Mexico City',
                area: '870.00 sqm',
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
                area: '14,500.00 sqm',
                thumbnail: 'thumbnail/office/maxmixm.jpg',
                images: ['buildings/max-mix/MAXMIX2.jpg',
                         'buildings/max-mix/MAXMIX3.jpg',
                         'buildings/max-mix/MAXMIX4.jpg',
                         'buildings/max-mix/MAXMIX5.jpg',
                         'buildings/max-mix/MAXMIX1.jpg'])

office.buildings << building
commercial.buildings << building



# building = Building.create(name: 'reforma 341',
#                 description: '',
#                 year: '2008',
#                 location: 'Mexico City',
#                 area: '250,000.00 sqm',
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
                area: '580 sqm',
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
                area: '410 sqm',
                thumbnail: 'thumbnail/eg.jpg',
                images: ['buildings/eg-headquarters/EGHEADQUARTERS1.jpg',
                         'buildings/eg-headquarters/EGHEADQUARTERS2.jpg',
                         'buildings/eg-headquarters/EGHEADQUARTERS3.jpg',
                         'buildings/eg-headquarters/EGHEADQUARTERS4.jpg',
                         'buildings/eg-headquarters/EGHEADQUARTERS5.jpg',
                         'buildings/eg-headquarters/EGHEADQUARTERS6.jpg',
                         'buildings/eg-headquarters/EGHEADQUARTERS7.jpg',
                         'buildings/eg-headquarters/EGHEADQUARTERS8.jpg',
                         'buildings/eg-headquarters/EGHEADQUARTERS9.jpg',
                         'buildings/eg-headquarters/EGHEADQUARTERS10.jpg',
                         'buildings/eg-headquarters/EGHEADQUARTERS11.jpg',
                         'buildings/eg-headquarters/EGHEADQUARTERS12.jpg',
                         'buildings/eg-headquarters/EGHEADQUARTERS13.jpg',
                         'buildings/eg-headquarters/EGHEADQUARTERS14.jpg',
                         'buildings/eg-headquarters/EGHEADQUARTERS15.jpg',
                         'buildings/eg-headquarters/EGHEADQUARTERS16.jpg'])



# -----------------------------------------------------------------------------
puts 'health --> 3'


# -----------------------------------------------------------------------------
puts 'education --> 4'
education.buildings << Building.create(name: 'cuajimalpa community center',
                description: '',
                year: '2011',
                location: 'Mexico City',
                area: '22,000.00 sqm',
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
                area: '13,000.00 sqm',
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
                area: '11,000.00 sqm',
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
                area: '160,000.00 sqm',
                thumbnail: 'thumbnail/tolucacc.jpg',
                images: ['buildings/toluca-convention-center/TOLUCACC1.jpg',
                         'buildings/toluca-convention-center/TOLUCACC2.jpg',
                         'buildings/toluca-convention-center/TOLUCACC3.jpg',
                         'buildings/toluca-convention-center/TOLUCACC4.jpg',
                         'buildings/toluca-convention-center/TOLUCACC5.jpg',
                         'buildings/toluca-convention-center/TOLUCACC6.jpg',
                         'buildings/toluca-convention-center/TOLUCACC7.jpg',
                         'buildings/toluca-convention-center/TOLUCACC8.jpg'])

publics.buildings << building
commercial.buildings << building