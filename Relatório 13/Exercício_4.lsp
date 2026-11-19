(defstruct dominio 
    nome
    elemento
    dificuldade
    mora
)

(defun bonus-elemental (elemento)
    (case elemento
        (:electro   1.5)
        (:hydro     1.2)
        (otherwise  1)
    )   
)

(defun recompensa-final (d)
    (* (dominio-mora d) (bonus-elemental (dominio-elemento d)))
)

(defun rota (lista dificuldade-maxima)
    (let* (
        (filtrado
            (remove-if-not (lambda (c)(<= (dominio-dificuldade c) dificuldade-maxima)) lista)
        )
        (texto
            (mapcar
                (lambda (d) (format nil "Nome: ~a, Recompensa final: ~a" (dominio-nome d) (recompensa-final d))) filtrado
            )
        )
    )
        texto
    )
)

(defun main()
    (let
        ((lista
            (list
                (make-dominio :nome "Pirocinese" :elemento :pyro :dificuldade 4 :mora 3)
                (make-dominio :nome "Hidrocinese" :elemento :hydro :dificuldade 10 :mora 4)
                (make-dominio :nome "Eletrocinese" :elemento :electro :dificuldade 6 :mora 1)
                (make-dominio :nome "Criocinese" :elemento :cyro :dificuldade 10 :mora 10)
                (make-dominio :nome "Telecinese" :elemento :tele :dificuldade 1 :mora 1)
            )
        ))
        (dolist(texto (rota lista 5))
            (format t "~a~%" texto)
        )
        (format t "Mora total: ~a~%"
            (reduce #'+ (mapcar #'recompensa-final lista))
        )
        (let* (
            (original (car lista))
            (copia (copy-dominio original))
        )
            (setf (dominio-mora copia) 100)

            (format t "Mora original: ~a~%" (dominio-mora original))
            (format t "Mora da copia: ~a~%" (dominio-mora copia))
        )
    )
)
(main)