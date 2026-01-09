(load "galletas/bc.clp")
(load "galletas/bh.clp")

(reset)
(run)

(printout t "max-defuzzify: "
            (maximum-defuzzify 4) crlf)
(printout t "moment-defuzzify: "
            (moment-defuzzify 4) crlf)

