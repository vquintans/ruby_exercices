
# Ejercicios Ruby

Los ejercicios consisten en un conjunto de test definidos con Rspec que inicialmente fallarán todos.

El alumno debe de implementar las clases necesarias y su comportamiento para conseguier que pasen todos los tests sin errores.

Se incluye Gemfile y Guardfile que permiten instalar las librerías necesarias.



## Entorno y desarrollo

Lo mejor para trabajar sobre github es tener cada alumno una cuenta gratuita.

Una vez tenemos nuestra propia cuenta haremos un "fork" del repositorio https://github.com/vquintans/ruby_exercices (se puede hacer desde la propia web), y trabajaremos sobre dicho proyecto, que nos bajaremos a nuestra máquina con el comando:

    `git clone git@github.com:<nombre_usuario>/ruby_exercices.git`

Para preparar el entorno es suficiente con ejecutar:
   
   `bundle install`
    
Una vez que tenemos el entorno preparado abrimos una consola y la dejamos corriendo con el comando:
   
   `guard`
   
Guard ejecutará constantemente los tests cada vez que se guarde alguno de los ficheros con los que estamos trabajando, e inmediatamente veremos el resultado de los tests afectados.

Para ejecutar todos los tests en un momento concreto es suficiente con pulsar intro sobre la consola del Guard.


## Subida de cambios a github

Comandos básicos git:

   * ver el estado del repositorio local con `git status`
   * añadimos los ficheros que queremos subir con `git add <nombrefichero>`
   * hacemos un commit en local con `git commit -m "mensaje de commit"`
   * subimos los cambios al servidor con `git push -u origin master`


## Ejercicios. 

Se recomienda comenzar implementando las clases StringGame y MathGames para familiarizarse con el sistema.

Despues podremos proceder a implementar la clase "Carta", para finalmente implementar la funcionalidad de la clase "Baraja".

En todo momento se puede hacer uso de cualquier funcionalidad de ruby.

Se habilitará pronto el espacio online en escuela.teimas.com donde poder preguntar dudas y donde se ofrecerán sugerencias.


