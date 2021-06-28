v= '''nombre.apellido
nombre.apellido
nombre.apellido
'''

lista=v.replace('\n', ',')
lista = lista.split(',')

for i in lista:
    print(f"revoke widergy_readonly from \"{i}\";")
    print("\n")

for i in lista:
    print(f"grant widergy_readwrite  to \"{i}\";")
    print("\n")



