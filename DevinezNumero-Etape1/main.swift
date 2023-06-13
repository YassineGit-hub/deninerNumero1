//
//  main.swift
//  DevinezNumero-Etape1
//
//  Created by Hamid Boudnaoui et Yassine Belkaousse on 2023-06-09.
//

import Foundation

let borneMin = 1
let borneMax = 100
let chiffreMystère = Int.random(in: borneMin...borneMax)
let nbCoupsMax = 10
let str = "Bienvenue au jeu!"
let str2 = "Vous devez deviner le nombre en 10 coups"
let str3 = "Vous devez deviner un nombre entre 1 et 100 "
let str4 = "Bonne Chance! "



print("\(str)")
print("\(str3)")
print("\(str2)")
print("\(str4)")

for i in 1...nbCoupsMax {


print("Entrez un nombre:")

if let res = readLine(), let nb = Int(res),nb >= borneMin, nb <= borneMax {
    print("Coup n: \(i): \(nb)")
    if i > nbCoupsMax {
        print("Perdu")
      
        break
    } else if nb == chiffreMystère {
        print("Gagné")
        break
    } else {
        if nb < chiffreMystère {
            print("Le nombre à deviner est plus grand.")
        } else {
            print("Le nombre à deviner est plus petit.")
        }
    }
} else {
    print("Ce n'est pas un nombre valide, veuillez saisir un nombre compris entre \(borneMin) et \(borneMax).")
}
}

print("Bye")


