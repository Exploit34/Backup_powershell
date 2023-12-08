# Definir la ruta de origen y destino
$origen = "C:\"
$nombre = Read-Host "Por favor, ingresa tu nombre"
$destino = "D:\$nombre"

# Crear un nombre único para la carpeta de respaldo
$fecha = Get-Date -Format "yyyyMMdd_HHmmss"
$nombreCarpetaBackup = "${nombre}_${fecha}"

# Crear la carpeta de respaldo
$carpetaCompleta = Join-Path -Path $destino -ChildPath $nombreCarpetaBackup
New-Item -ItemType Directory -Path $carpetaCompleta

# Copiar archivos y carpetas desde el origen al destino
Copy-Item -Path $origen\* -Destination $carpetaCompleta -Recurse

Write-Host "Respaldo completado en $carpetaCompleta"
