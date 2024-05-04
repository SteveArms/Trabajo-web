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

# Establecer la URL a la que se redirigirá después de un inicio de sesión exitoso
my $redirect_url = 'http://localhost/login.html';

# Verificar si se envió el formulario de inicio de sesión
if ($cgi->param('submit')) {
    # Obtener los valores del formulario
    my $usuario = $cgi->param('usuario');
    my $password = $cgi->param('password');

    # Verificar si los valores del formulario son válidos (solo letras y números)
    if ($usuario =~ /^[a-zA-Z0-9]+$/ && $password =~ /^[a-zA-Z0-9]+$/) {
        # Consultar la base de datos para verificar si el usuario y la contraseña coinciden
        my $query = $db->prepare("SELECT * FROM usuarios WHERE usuario = ? AND password = ?");
        $query->execute($usuario,$password);

        # Si se encuentra un usuario con las credenciales proporcionadas, redirigir a la página principal
=======
my $table = 'login';
my $db = DBI->connect("DBI:mysql:database=$db_name;host=$db_host",$db_user,$db_pass) or die "Couldn't connect to the database";
my $redirect_url = 'http://localhost/login.html';

if ($cgi->param('submit')) {
    my $usuario = $cgi->param('usuario');
    my $password = $cgi->param('password');
    if ($usuario =~ /^[a-zA-Z0-9]+$/ && $password =~ /^[a-zA-Z0-9]+$/) {
        my $query = $db->prepare("SELECT * FROM usuarios WHERE usuario = ? AND password = ?");
        $query->execute($usuario,$password);
>>>>>>> 214a0f41823137d78e2d5abb29f7cd7bb279d957
        if(my $sth = $query->fetchrow_hashref){
            print $cgi->redirect('http://localhost/main.html');
            exit;
        }
    }
<<<<<<< HEAD

    # Si las credenciales no son válidas, redirigir al formulario de inicio de sesión
    $redirect_url = '../login.html';
}

# Redirigir al usuario a la URL especificada
print $cgi->redirect($redirect_url);

# Cerrar la conexión a la base de datos
=======
    $redirect_url = '../login.html';
}

print $cgi->redirect($redirect_url);
exit;

>>>>>>> 214a0f41823137d78e2d5abb29f7cd7bb279d957
$db->disconnect;