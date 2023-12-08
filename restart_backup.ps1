# Solicitar al usuario la ruta de origen para restaurar
do {
    $origenRestaurar = Read-Host "Por favor, ingresa la ruta de origen para restaurar (ejemplo: C:\Ruta\De\Respaldo)"
    if (-not (Test-Path $origenRestaurar -PathType Container)) {
        Write-Host "La ruta ingresada no es válida o no existe. Inténtalo nuevamente."
    }
} while (-not (Test-Path $origenRestaurar -PathType Container))

# Especifica la ubicación original de los archivos
$destinoRestaurar = "C:\"

# Copiar archivos y carpetas desde la carpeta de respaldo al destino original
Copy-Item -Path "$origenRestaurar\*" -Destination $destinoRestaurar -Recurse -Force

Write-Host "Restauración completada en $destinoRestaurar"


