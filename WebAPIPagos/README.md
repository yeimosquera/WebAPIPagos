<h1 style="text-align: center;"><strong>Descripci&oacute;n de la API</strong></h1>
<p>Esta es un API creada con&nbsp;<yt-formatted-string force-default-style="" class="style-scope ytd-video-primary-info-renderer">.Net Core 3.1 y bases de datos SQL Server, el cual permite&nbsp; simular una operaci&oacute;n de pago t&iacute;pica en una soluci&oacute;n de comercio electr&oacute;nico, permitiendo hacer CRUD de Usuarios, Productos, Pedidos( con su respetiva facturaci&oacute;n y cambio de estado para el envi&oacute; a la parte log&iacute;stica).</yt-formatted-string></p>

<h3>Contenido:</h3>
<a href="https://ibb.co/f0SbBbh"><img src="https://i.ibb.co/F7W9N9S/Sin-t-tulo.png" alt="Sin-t-tulo" border="0" /></a>


<h2>Tipos de respuesta:</h2>
<table aria-label="C&oacute;digos de estado HTTP" class="table table-sm">
<thead>
<tr>
<th>status code</th>
<th>Mensaje de estado</th>
<th>Descripci&oacute;n</th>
</tr>
</thead>
<tbody>
<tr>
<td>100</td>
<td>Mensajes personalizados</td>
<td>De tipo informativo, y se usan para los errores controlados.</td>
</tr>
<tr>
<td>400</td>
<td>Bad Request</td>
<td>No se puede procesar la solicitud porque tiene un formato incorrecto o es incorrecta.</td>
</tr>
<tr>
<td>401</td>
<td>No autorizado</td>
<td>La informaci&oacute;n de autenticaci&oacute;n necesaria falta o no es v&aacute;lida para el recurso.</td>
</tr>
<tr>
<td>403</td>
<td>Prohibido</td>
<td>Se deneg&oacute; el acceso al recurso solicitado. Es posible que el usuario no tenga permisos suficientes.<span>&nbsp;</span><strong>Importante: si se aplican directivas de acceso condicional a un recurso, es posible que se devuelva el error<span>&nbsp;</span><code>HTTP 403; Forbidden error=insufficent_claims</code>.</strong><span>&nbsp;</span>Para obtener m&aacute;s informaci&oacute;n sobre Microsoft Graph y el acceso condicional, consulte<span>&nbsp;</span><a href="https://docs.microsoft.com/azure/active-directory/develop/active-directory-conditional-access-developer" data-linktype="external">Instrucciones para desarrolladores para el acceso condicional de Azure Active Directory</a>.</td>
</tr>
<tr>
<td>404</td>
<td>No encontrado</td>
<td>El recurso solicitado no existe.</td>
</tr>
<tr>
<td>405</td>
<td>M&eacute;todo no permitido</td>
<td>El m&eacute;todo HTTP de la solicitud no se permite en el recurso.</td>
</tr>
<tr>
<td>406</td>
<td>No aceptable</td>
<td>Este servicio no admite el formato solicitado en el encabezado Accept.</td>
</tr>
<tr>
<td>409</td>
<td>Conflicto</td>
<td>El estado actual entra en conflicto con lo que espera la solicitud. Por ejemplo, puede que la carpeta principal especificada no exista.</td>
</tr>
<tr>
<td>410</td>
<td>Eliminado</td>
<td>El recurso solicitado ya no est&aacute; disponible en el servidor.</td>
</tr>
<tr>
<td>411</td>
<td>Longitud requerida</td>
<td>Se requiere un encabezado Content-Length en la solicitud.</td>
</tr>
<tr>
<td>412</td>
<td>Error en la condici&oacute;n previa</td>
<td>Una condici&oacute;n previa proporcionada en la solicitud (por ejemplo, un encabezado If-Match) no coincide con el estado actual del recurso.</td>
</tr>
<tr>
<td>413</td>
<td>Entidad de solicitud demasiado larga</td>
<td>El tama&ntilde;o de la solicitud supera el l&iacute;mite m&aacute;ximo.</td>
</tr>
<tr>
<td>415</td>
<td>Tipo de medio no compatible</td>
<td>El tipo de contenido de la solicitud es un formato no admitido por el servicio.</td>
</tr>
<tr>
<td>416</td>
<td>No se puede satisfacer el intervalo solicitado</td>
<td>El intervalo de bytes especificado no es v&aacute;lido o no est&aacute; disponible.</td>
</tr>
<tr>
<td>422</td>
<td>Entidad no procesable</td>
<td>No se puede procesar la solicitud porque tiene un formato que no es correcto sem&aacute;nticamente.</td>
</tr>
<tr>
<td>423</td>
<td>Bloqueado</td>
<td>El recurso al que se va a acceder est&aacute; bloqueado.</td>
</tr>
<tr>
<td>429</td>
<td>Demasiadas solicitudes</td>
<td>La aplicaci&oacute;n cliente se limit&oacute; y no debe tratar de repetir la solicitud hasta que haya transcurrido un intervalo de tiempo.</td>
</tr>
<tr>
<td>500</td>
<td>Internal Server Error</td>
<td>Se produjo un error interno de servidor al procesar la solicitud.</td>
</tr>
<tr>
<td>501</td>
<td>No implementado</td>
<td>La caracter&iacute;stica solicitada no est&aacute; implementada.</td>
</tr>
<tr>
<td>503</td>
<td>Servicio no disponible</td>
<td>El servicio no est&aacute; disponible temporalmente debido a que est&aacute; en mantenimiento o sobrecargado. Puede repetir la solicitud despu&eacute;s de un retraso, cuya longitud puede especificarse en un encabezado Retry-After.</td>
</tr>
<tr>
<td>504</td>
<td>Tiempo de espera de puerta de enlace</td>
<td>El servidor, mientras actuaba como proxy, no recibi&oacute; una respuesta puntual del servidor que precede en la cadena al que necesitaba acceder para completar la solicitud. Puede aparecer junto con el error 503.</td>
</tr>
<tr>
<td>507</td>
<td>Almacenamiento insuficiente</td>
<td>Se alcanz&oacute; la cuota de almacenamiento m&aacute;xima.</td>
</tr>
<tr>
<td>509</td>
<td>L&iacute;mite de ancho de banda excedido</td>
<td>La aplicaci&oacute;n se limit&oacute; para superar el l&iacute;mite m&aacute;ximo de ancho de banda. La aplicaci&oacute;n puede volver a intentar la solicitud despu&eacute;s de que haya transcurrido m&aacute;s tiempo.</td>
</tr>
</tbody>
</table>
<p></p>
<p></p>
<p></p>
<p></p>
<p></p>
