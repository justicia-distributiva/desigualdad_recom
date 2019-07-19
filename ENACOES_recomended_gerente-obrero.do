use "C:\Users\JC\Google Drive\Bases de Datos\COES\ENACOES_2014\ENACOES_2014_V4.dta" 
keep B7_A B7_B
codebook B7_A

gen gerente=.
replace gerente=B7_A
gen obrero=.
replace obrero=B7_B


recode gerente 99=.
recode obrero 99=.


gen rec_OG=.
replace  rec_OG = (gerente/obrero)

sum rec_OG

. sum rec_OG

    Variable |        Obs        Mean    Std. Dev.       Min        Max
-------------+---------------------------------------------------------
      rec_OG |      1,882    23.58908     81.0158   .0000196   2121.428




drop obrero gerente 
