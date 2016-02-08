class ejemplo1:GLib.Object
{
private string nombre;
private int intentos;


	public ejemplo1(string nombre, int intentos)
	{
		this.nombre=nombre;
		this.intentos=intentos;
	}
	public static int main(string [] args)
	{
		var lista = new Gee.ArrayList<ejemplo1>();

		stdout.printf("valor min:");
		int min=int.parse(stdin.read_line());
		stdout.printf("valor max:");
		int max=int.parse(stdin.read_line());
		random(min,max,lista);
	return 0;
	}
	public static void random(int min, int max, Gee.ArrayList<ejemplo1> lista)
	{
		string nombre="";
		stdout.printf("Nombre:");
		nombre=stdin.read_line();
		int num=Random.int_range (min,max);
		juego(num,nombre,lista);
	}
	public static void juego(int num,string nombre,Gee.ArrayList<ejemplo1>lista)
	{
	string respuesta="s";
	int n=0;
	int intentos=1;
			while(respuesta=="s")
			{
				stdout.printf("dime un número:");
				n=int.parse(stdin.read_line());
				if(n==num)
				{
					guardar(intentos,nombre,lista);		
				}else
				{
					stdout.printf("Quieres volver a intentarlo? :");
					respuesta=stdin.read_line();
					intentos++;
				}
				if(intentos==4)
				{
					stdout.stdout.printf("Has sobrepasado el número de intentos maximo");
					respuesta=="n";
				}
			}
	}
	public static void guardar(int intentos,string nombre,Gee.ArrayList<ejemplo1> lista)
	{
		ejemplo1 nuevo = new ejemplo1(nombre,intentos);
		lista.add(nuevo);
	}

}
