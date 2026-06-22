if [ "$#" -eq 3 ]; then
    capital=$1
    tasa=$2
    tiempo=$3
else
    read -p "Ingrese el capital inicial (P): " capital
    read -p "Ingrese la tasa de interés anual en porcentaje (r): " tasa
    read -p "Ingrese el período de tiempo en años (t): " tiempo
fi

if [[ -z "$capital" || -z "$tasa" || -z "$tiempo" ]]; then
    echo "Error: Todos los campos son obligatorios."
    exit 1
fi

interes=$(echo "scale=2; $capital * ($tasa / 100) * $tiempo" | bc)
monto_total=$(echo "scale=2; $capital + $interes" | bc)

echo "--- Resultados del Cálculo ---"
echo "Capital Inicial:   $capital"
echo "Tasa de Interés:   $tasa%"
echo "Período (Años):    $tiempo"
echo "------------------------------"
echo "Interés Generado:  $interes"
echo "Monto Total:       $monto_total"