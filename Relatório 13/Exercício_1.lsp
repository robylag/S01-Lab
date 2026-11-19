(defstruct erva
    nome
    preco-por-grama
    toxicidade)

(defun classifica-erva (erva)
    (cond
        ((>= (erva-toxicidade erva) 7) "veneno")
        ((>= (erva-toxicidade erva) 4) "use com cuidado")
        (t "segura")
    )
)

(defun preco-da-dose (erva gramas)
    (* (erva-preco-por-grama erva) gramas)
)

(defun descreve-erva (erva)
    (let (
        (nome (erva-nome erva))
        (preco-por-grama (erva-preco-por-grama erva))
        (classificacao (classifica-erva erva))
    )
        (format nil "Planta: ~a, Preco: ~,2f R$/g, ~a"
            nome preco-por-grama classificacao
        )
    )
)

(defun aviso (erva)
    (if (>= (erva-toxicidade erva) 7)
        "Maomao ira testar a erva em si mesmo antes"
        "A erva esta liberada para pacientes")
)

(defun main ()
    (let ((ervas
        (list
            (make-erva :nome "Erva Daninha" :preco-por-grama 0.85 :toxicidade 1)
            (make-erva :nome "Bela-da-morte" :preco-por-grama 100.50 :toxicidade 10)
            (make-erva :nome "Anturio" :preco-por-grama 3.90 :toxicidade 6)
        )))
        (dolist(e ervas)
            (format t "~a~%" (descreve-erva e))
            (format t "~a~%" (aviso e)))
        (format t "Preco por dose: R$ ~a~%" (preco-da-dose (car ervas) 30))
    )
)
(main)