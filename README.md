
# Ejercicios Ruby

Los ejercicios consisten en un conjunto de test definidos con Rspec que inicialmente fallarán todos.

El alumno debe de implementar las clases necesarias y su comportamiento para conseguier que pasen todos los tests sin errores.

Se incluye Gemfile y Guardfile que permiten instalar las librerías necesarias.



## Entorno y desarrollo

Lo mejor para trabajar sobre github es tener cada alumno una cuenta gratuita.

Una vez tenemos nuestra propia cuenta haremos un "fork" del repositorio https://github.com/vquintans/ruby_exercices (se puede hacer desde la propia web), y trabajaremos sobre dicho proyecto, que nos bajaremos a nuestra máquina con el comando:

    git clone git@github.com:<nombre_usuario>/ruby_exercices.git

Para preparar el entorno es suficiente con ejecutar:
   
    bundle install
    
Una vez que tenemos el entorno preparado abrimos una consola y la dejamos corriendo con el comando:
   
    guard
   
Guard ejecutará constantemente los tests cada vez que se guarde alguno de los ficheros con los que estamos trabajando, e inmediatamente veremos el resultado de los tests afectados.

Para ejecutar todos los tests en un momento concreto es suficiente con pulsar intro sobre la consola del Guard.


## Subida de cambios a github

Comandos básicos git:

   * `git status`: ver el estado del repositorio local
   * `git add <nombrefichero>`: añadimos los ficheros que queremos subir
   * `git commit -m "mensaje de commit"`: hacemos un commit en local
   * `git push -u origin master`: subimos los cambios a github


## Actualizaciones desde el repositorio principal

    git remote add upstream https://github.com/vquintans/ruby_exercices.git
    git fetch upstream
    git merge upstream/master

## Envío de ejercicios resueltos

Una vez subidos los cambios a github vamos en un navegador a la web de github y pulsamos sobre "Pull Request". Esto iniciará automáticamente los tests en el entorno de integración continua http://travis-ci.org y podremos ver en https://travis-ci.org/#!/vquintans/ruby_exercices/pull_requests el resultado de la ejecución de los mismos.

Los ejercicios se consideran correctos cuando pasan todos los tests sin haber modificado ninguno de los ficheros de test.

## Ejercicios. 

Se recomienda comenzar implementando las clases StringGame y MathGames para familiarizarse con el sistema.

Despues podremos proceder a implementar la clase "Carta", para finalmente implementar la funcionalidad de la clase "Baraja".

En todo momento se puede hacer uso de cualquier funcionalidad de ruby.

Se habilitará pronto el espacio online en escuela.teimas.com donde poder preguntar dudas y donde se ofrecerán sugerencias.


