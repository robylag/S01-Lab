(defstruct garota-magica
    nome
    escuridao
    bruxas
)

(defun escuridao-total (grupo)
    (if (null grupo)
        0
        (+ (garota-magica-escuridao (car grupo)) (escuridao-total (cdr grupo)))
    )
)

(defun total-de-bruxas (grupo)
  (reduce #'+ (mapcar #'garota-magica-bruxas grupo))
)

(defun purifica (g quantidade)
    (let
        ((escuridao-novo (if (>= quantidade (garota-magica-escuridao g))
            0 (- (garota-magica-escuridao g) quantidade)))
        )
        (make-garota-magica :nome (garota-magica-nome g) :escuridao escuridao-novo :bruxas (garota-magica-bruxas g))
    )
)

(defun main ()
    (let* (
        (grupo
            (list
                (make-garota-magica :nome "Jucelina" :escuridao 50 :bruxas 6)
                (make-garota-magica :nome "Zoey" :escuridao 78 :bruxas 12)
                (make-garota-magica :nome "Ingrid" :escuridao 30 :bruxas 3)
            )
        )
        (nova-garota
            (make-garota-magica :nome "Milena" :escuridao 15 :bruxas 2)
        )
        (grupo2 (cons nova-garota grupo))
        (garota-purificada (purifica (car grupo) 10))
    )
        (format t "Escuridao total: ~a~%" (escuridao-total grupo))
        (format t "Bruxas derrotadas: ~a~%" (total-de-bruxas grupo))
        (format t "Escuridao total grupo 1: ~a~%" (escuridao-total grupo))
        (format t "Escuridao total grupo 2: ~a~%" (escuridao-total grupo2))
        (format t "Garota original: ~a~%" (garota-magica-escuridao (car grupo)))
        (format t "Garota purificada: ~a~%" (garota-magica-escuridao garota-purificada))
    )
)
(main)