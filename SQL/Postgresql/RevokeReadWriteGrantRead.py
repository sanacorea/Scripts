v= '''nombre.apellido
nombre.apellido
nombre.apellido
'''

lista=v.replace('\n', ',')
lista = lista.split(',')

for i in lista:
    print(f"revoke readwrite from \"{i}\";")
    print("\n")

for i in lista:
    print(f"grant readonly  to \"{i}\";")
    print("\n")



