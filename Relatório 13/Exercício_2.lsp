(defstruct criatura
    nome
    bioma
    profundidade
    perigo
)

(defparameter *catalogo*
    (list
        (make-criatura :nome "Ghost Leviathan" :bioma "Deadzone" :profundidade 200 :perigo :leviata)
        (make-criatura :nome "Stalker" :bioma "Kelp Forest" :profundidade 160 :perigo :agressiva)
        (make-criatura :nome "Peeper" :bioma "Safe Shallows" :profundidade 50 :perigo :inofensiva)
        (make-criatura :nome "???" :bioma "Deadzone" :profundidade 3000 :perigo :desconhecido)
    )
)   

(defun texto-do-perigo (perigo)
    (case perigo
        (:inofensiva    "Inofensiva")
        (:agressiva     "Agressiva")
        (:leviata       "Leviata: mantenha distancia")
        (otherwise      "Desconhecido")
    )
)

(defun descreve-criatura (c)
    (let (
        (nome (criatura-nome c))
        (bioma (criatura-bioma c))
        (profundidade (criatura-profundidade c))
        (perigo (texto-do-perigo (criatura-perigo c)))
    )
        (format nil "Criatura: ~a, Bioma: ~a, Profundidade: ~a, Nivel de perigo: ~a"
            nome bioma profundidade perigo
        )
    )
)

(defun abaixo-de (metros catalogo)
    (remove-if-not (lambda (c) (> (criatura-profundidade c) metros)) catalogo)
)

(defun main()
    (format t "Criaturas listadas: ~%~%")
    (dolist (texto (mapcar #'descreve-criatura *catalogo*))
        (format t "~a~%" texto)
    )

    (format t "~%Criaturas filtradas: ~%~%")
    (dolist (texto (mapcar #'descreve-criatura (abaixo-de 170 *catalogo*)))
        (format t "~a~%" texto)
    )
    (format t "Quantidade de criaturas abaixo de 170m: ~a~%"
        (length (abaixo-de 170 *catalogo*))
    )
)
(main)