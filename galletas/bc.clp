(deftemplate galletas
    0 8
    (
        (poco-crudas   (4 1) (6 0.5) (7 0))
        (medio-hechas  (3 0) (5 1) (6 1) (8 0))
        (doraditas     (5 0) (7 1))
    )
)

(deftemplate temperatura
    0 250
    (
        (baja  (150 0) (160 1) (180 1) (190 0))
        (media (170 0) (190 1) (210 1) (230 0))
        (alta  (210 0) (240 1) (250 0))
    )
)


(defrule regla_1
    (galletas poco-crudas)
    =>
    (assert (temperatura media))
)

(defrule regla_2
    (galletas medio-hechas)
    =>
    (assert (temperatura alta))

)

(defrule regla_3
    (galletas doraditas)
    =>
    (assert (temperatura baja))
)