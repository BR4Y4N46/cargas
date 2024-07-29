#!bin/bash
#sta de fechas
dates=("20240708" "20240709" "20240710" 
       "20240711" "20240712" "20240713" "20240714" "20240715" "20240716" "20240717" "20240718" "20240719" "20240720" "20240721" "20240722" "20240723")

# Retraso en segundos
delay=75

# Ejecutar los comandos con el retraso especificado
for date in "${dates[@]}"; do
  echo "Ejecutando para la fecha: $date"
  perl load_files_emm.pl $date emm &
  sleep $delay
done

# Esperar a que todos los procesos en segundo plano terminen
wait
