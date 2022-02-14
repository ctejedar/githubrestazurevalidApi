# githubrestazurevalidApi
Validacion de servicios api
Crear la estructura integrada usando cucumber y rest assured que permita ejecutar los
test crear, obtener, actualizar y borrar una tarea/item en la página http://todo.ly/
1.1. Abrir MVNrepository.com y descargar las siguientes dependencias para la ejecución
del proyecto.
Rest Assured

testImplementation 'org.junit.jupiter:junit-jupiter-api:5.7.0'
testRuntimeOnly 'org.junit.jupiter:junit-jupiter-engine:5.7.0'
testImplementation 'io.rest-assured:rest-assured:4.4.0'
implementation 'io.rest-assured:json-path:4.4.0'
implementation 'io.rest-assured:json-schema-validator:4.4.0'
implementation 'io.rest-assured:rest-assured-common:4.4.0'
implementation 'io.rest-assured:rest-assured-all:4.4.0'
implementation 'org.json:json:20210307'
Cucumber

implementation 'io.cucumber:cucumber-java:7.1.0'
testImplementation 'io.cucumber:cucumber-junit:7.1.0'

Reporte Cucumber 
implementation 'net.masterthought:cucumber-reporting:5.6.1'


1.2.Agregar las dependencias en el archivo de configuración build.gradle
1.3. Se utilizará el patrón de diseño Abstract Factory, por lo cual se crea un paquete de
nombre factoryRequest, que contendrá las clases para la creación de todos los
request utilizando la lógica Rest Assured.
1.3.1. Creando la clase RequestInformation, la cual contendrá la información
general de todos los request.

1.3.2. Creando la clase IRequest, el cual será una interfaz padre de todas las
peticiones específicas (post,get,put,delete)
1.3.3. Creando las clases request POST, PUT, GET y DELETE, las cuales deben
implementar la interfaz padre IRequest.

1.3.4. Creando la clase FactoryRequest, la cual se encargará de la creación de un
tipo de objeto request

1.4. Se utilizará un paquete de configuraciones, el cual contendrá las configuraciones del
ambiente de pruebas y acceso a los endpoint correspondiente a los projects e ítems.
1.4.1. Se crea la Clase ConfigAPI
1.4.2. Se crea la Clase ConfigEnvironment
1.5. Creando el paquete helper, el cual contendrá la clase JsonHelper encargada de
comparar los resultados esperados versus los actuales o ignorarlos.
1.6. Creando en el paquete resources el archivo CRUDItem.feature, el cual contendrá la
lógica de cucumber para crear, obtener, actualizar y eliminar un Item.
1.7. En la clase MyStepClean se adicionó los valores para reemplazar las variables Item
1.8. La clase Runner contendrá la configuración de inicio y fin del test.
1.9. Se creó el archivo qa.properties, en el cualse ingresará los valores de configuraciones
para la ejecución del test.
1.10. Finalmente, al ejecutar el proyecto se observa por consola los resultados exitosos
de crear, actualizar, obtener y eliminar un Item, utilizando rest assured y cucumber
2. Generando reporte con librería cucumber.
2.1. Para realizar el reporte se agregaron configuraciones adicionales en el archivo
build.gradle
2.2. Se creó la clase LocalReport, el cual contendrá las configuraciones para generar el
reporte.
2.3. Se genera a través de comando el archivo “report.json”, el cual contiene la ejecución
del archivo CRUDItem.feature, puesto que, dicho archivo contiene la variable
2.4. Por último, con la creación del archivo del punto anterior, se ejecuta la clase
LocalReport, la cual generará el reporte en la ruta build\reports\cucumber\JBGROUP


