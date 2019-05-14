# Escriba su código aquí
#!/bin/bash
# Transformaciòn de fechas
sed 's/\//-/g' data.csv > data1.csv
sed 's/-\([0-9][0-9]\);/-20\1;/' data1.csv > data2.csv
sed 's|\([0-9][0-9]\)-\([0-9][0-9]\)-\([0-9][0-9][0-9][0-9]\);|\3-\2-\1;|g' data2.csv > data3.csv
# Transformación de comas por puntos
sed 's/\,/./g' data3.csv > data4.csv
# Transformación de punto y coma por coma
sed 's/\;/,/g' data4.csv > data5.csv
# Espacios por /N
sed -e 's:^,:/N,:g' -e 's:,,:,/N,:g' -e 's:,$:,/N:g' data5.csv > data6.csv
sed '\:/N:d' data7.csv > lab1final.csv
rm data*
