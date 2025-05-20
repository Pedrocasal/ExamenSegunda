#!/bin/bash
for i in {1..20}
do
    	docker stop cont-examen-$i
    	docker rm cont-examen-$i
done
