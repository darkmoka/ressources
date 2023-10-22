# Operator
## Opérateurs standards en tant que fonctions
___

Code source : Lib/operator.py

Le module operator fournit un ensemble de fonctions correspondant aux opérateurs natifs de Python.

- Les fonctions sont divisées en différentes catégories **selon l'opération effectuée** : 
  - comparaison **entre objets**,

            operator.lt(a, b)   lt(a, b) équivaut à a < b
            operator.le(a, b)   le(a, b) équivaut à a <= b
            operator.eq(a, b)   eq(a, b) équivaut à a == b
            operator.ne(a, b)   ne(a, b) équivaut à a != b
            operator.ge(a, b)   ge(a, b) équivaut à a >= b
            operator.gt(a, b)   gt(a, b) équivaut à a > b
            operator.__lt__(a, b)
            operator.__le__(a, b)
            operator.__eq__(a, b)
            operator.__ne__(a, b)
            operator.__ge__(a, b)
            operator.__gt__(a, b)

**Effectue une « comparaison riche » entre a et b.** 

  - opérations **logiques**,

*En général, les opérations logiques s'appliquent aussi à tous les objets et implémentent les tests de vérité, d'identité et les opérations booléennes :*

  -   operator.not_(obj)
    
        - **operator.__not__(obj)**
        - Return the outcome of not obj. (Note that there is no __not__() method for object instances; only the interpreter core defines this operation. The result is affected by the __bool__() and __len__() methods.)

        - **operator.truth(obj)**
        - Renvoie True si obj est vrai, et False dans le cas contraire. Équivaut à utiliser le constructeur de bool.

        - **operator.is_(a, b)**
        - Renvoie a is b. Vérifie si les deux paramètres sont le même objet.

        - **operator.is_not(a, b)**
        - Renvoie a is not b. Vérifie si les deux paramètres sont deux objets distincts.

  - opérations **mathématiques**,
  - opérations **sur séquences**,

NOTA: a compléter avec Udemy

# Sources

https://docs.python.org/fr/3/library/operator.html

TODO: https://www.pierre-giraud.com/python-apprendre-programmer-cours/operateur/