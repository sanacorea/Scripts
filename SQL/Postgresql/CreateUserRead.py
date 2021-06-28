v= '''nombre.apellido
nombre.apellido
nombre.apellido
'''

lista=v.replace('\n', ',')
lista = lista.split(',')
for i in lista:
    print(f"CREATE USER \"{i}\" WITH PASSWORD \'dbpasswordxx\'; GRANT rol_readonly to \"{i}\";")
    print("\n")