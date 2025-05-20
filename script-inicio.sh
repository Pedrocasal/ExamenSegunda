#!/bin/bash
for i in {1..20}
do
    	puerto=$((8000 + $i))
    	docker run -d -p ${puerto}:80 --name cont-examen-$i imagen-examen
done
