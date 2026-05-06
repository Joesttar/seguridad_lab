i 
-sS: Conocido como "escaneo sigiloso" o "conexion semi-abierta", su fucnion es
que cuando Nmap envia un paquete SYN "inicio de conexion", si recibe un SYN/ACK
sabe que el puerto quede como abierto, pero inmediatamente envia un RST reset
para cerrar la conexion antes de que se complete el protocolo de tras vias, 
tambien conocido como "handshake"

-sV: service Version Detection, se utiliza para determinar que servicio especifico
se esta ejecutando en un puerto y cual es su version, su funcion es que cuando Nmap
idetifica los puertos abiertos, interroga a esos puertos mediante una serie de 
sondas para obtener el "banner" o respuesta del servicio.
