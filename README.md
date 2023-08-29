Instrucciones de ejecución:

    1.- Colocarse en la raiz del proyecto, ejecutar el siguiente comando: 

        mvn clean install

        El proyecto se habra compilado y tendremos un jar listo para ejecutarse.

    2.- Mantenerse en la raiz del proyecto, ejecutar el siguiente comando: 

        java -jar target/TestMicroService.jar

        El servicio ya se esta ejecutando en la siguiente ruta: localhost:8080

        Importante no tener corriendo otro servicio en el mismo puerto para poder ejecutar.

    3.- En el navegador colocar la siguiente url: http://localhost:8080/

        Se desplegara el front para ejecutar las acciones CRUD.

    4.- Disponemos de una spa con dos secciones, una columna del lado izquierdo con los controles
        necesarios para las opeaciones CRUD y un panel del lado derecho con la tabla que muestra
        los resultados de consulta de las operaciones. 
        La tabla de actualiza automaticamente cada segundo mediante AJAX