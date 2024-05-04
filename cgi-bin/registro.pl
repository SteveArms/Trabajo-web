<<<<<<< HEAD
#!/usr/bin/perl
=======
#!"C:/xampp/perl/bin/perl.exe"
>>>>>>> 214a0f41823137d78e2d5abb29f7cd7bb279d957
use strict;
use CGI;
use DBI;

<<<<<<< HEAD
# Crear un objeto CGI para manejar las solicitudes HTTP
my $cgi = CGI->new;

# Configurar la conexión a la base de datos
=======
my $cgi = CGI->new;
>>>>>>> 214a0f41823137d78e2d5abb29f7cd7bb279d957
my $db_host = 'localhost';
my $db_name = 'proyecto';
my $db_user = 'root';
my $db_pass = '';
<<<<<<< HEAD

# Conectar a la base de datos
my $db = DBI->connect("DBI:mysql:database=$db_name;host=$db_host",$db_user,$db_pass) or die "Couldn't connect to the database";

# Establecer la URL a la que se redirigirá después de insertar un nuevo usuario
my $redirect_url = 'http://localhost/login.html';

# Obtener los valores del formulario de registro
=======
my $table = 'login';
my $db = DBI->connect("DBI:mysql:database=$db_name;host=$db_host",$db_user,$db_pass) or die "Couldn't connect to the database";
my $redirect_url = 'http://localhost/login.html';

>>>>>>> 214a0f41823137d78e2d5abb29f7cd7bb279d957
my $usuario = $cgi->param('usuario');
my $passw = $cgi->param('password');
my $correo = $cgi->param('correo');
my $edad = $cgi->param('edad');
my $numero = $cgi->param('celular');

<<<<<<< HEAD
# Insertar el nuevo usuario en la tabla "usuarios" de la base de datos
my $query = $db->prepare("INSERT INTO usuarios(usuario, password, correo, edad, celular) VALUES (?, ?, ?, ?, ?)");
$query->execute($usuario, $passw, $correo, $edad, $numero);

# Redirigir al usuario a la página de inicio de sesión
print $cgi->redirect($redirect_url);

# Cerrar la conexión a la base de datos
=======
my $query = $db->prepare("INSERT INTO usuarios(usuario, password, correo, edad, celular) VALUES (?, ?, ?, ?, ?)");
$query->execute($usuario, $passw, $correo, $edad, $numero);
print $cgi->redirect($redirect_url);
>>>>>>> 214a0f41823137d78e2d5abb29f7cd7bb279d957
$db->disconnect;