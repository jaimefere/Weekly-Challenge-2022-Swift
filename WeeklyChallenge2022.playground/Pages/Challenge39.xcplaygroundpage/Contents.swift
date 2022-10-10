import Foundation

/*
 * Reto #39
 * TOP ALGORITMOS: QUICK SORT
 * Fecha publicación enunciado: 27/09/22
 * Fecha publicación resolución: 03/10/22
 * Dificultad: MEDIA
 *
 * Enunciado: Implementa uno de los algoritmos de ordenación más famosos: el "Quick Sort",
 * creado por C.A.R. Hoare.
 * - Entender el funcionamiento de los algoritmos más utilizados de la historia nos ayuda a
 *   mejorar nuestro conocimiento sobre ingeniería de software. Dedícale tiempo a entenderlo,
 *   no únicamente a copiar su implementación.
 * - Esta es una nueva serie de retos llamada "TOP ALGORITMOS", donde trabajaremos y entenderemos
 *   los más famosos de la historia.
 *
 * Información adicional:
 * - Usa el canal de nuestro Discord (https://mouredev.com/discord) "🔁reto-semanal"
 *   para preguntas, dudas o prestar ayuda a la comunidad.
 * - Tienes toda la información sobre los retos semanales en
 *   https://retosdeprogramacion.com/semanales2022.
 *
 */

// Basado en https://www.genbeta.com/desarrollo/implementando-el-algoritmo-quicksort

func quicksort(array: Array<Int>) -> Array<Int> {
    return array.isEmpty ? array : quicksort(array: array, first: 0, last: array.count - 1)
}

func quicksort(array: Array<Int>, first: Int, last: Int) -> Array<Int> {

    var i = first
    var j = last
    var array = array
    let pivot = (array[i] + array[j]) / 2

    while (i < j) {

        while array[i] < pivot {
            i += 1
        }

        while array[j] > pivot {
            j -= 1
        }

        if i <= j {

            let x = array[j]

            array[j] = array[i]
            array[i] = x

            i += 1
            j -= 1
        }
    }

    if first < j {
        array = quicksort(array: array, first: first, last: j)
    }

    if last > i {
        array = quicksort(array: array, first: i, last: last)
    }

    return array
}

let sortedArray = quicksort(array: [3, 5, 1, 8, 9, 0])
sortedArray.forEach { element in
    print(element)
}
