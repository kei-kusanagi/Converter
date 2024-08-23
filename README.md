# Desafío del día

Hoy enfrentarás tu primer día de desafío, donde se te pedirá que construyas una aplicación completamente nueva desde cero utilizando lo que has aprendido hasta ahora. Esto podría sorprenderte, ya que podrías pensar que aún no has aprendido tanto. Bueno, déjame explicarte…

Los 100 Días de SwiftUI es el segundo plan de estudios de 100 días que he escrito, y aunque sé que el original 100 Días de Swift fue extremadamente popular y ayudó a mucha gente, definitivamente sentí después “si lo volviera a hacer todo de nuevo, esto es lo que cambiaría…”

Una de esas cosas fue volver atrás y agregar más chats virtuales a los días iniciales de Swift, para ayudar a las personas a aprovechar al máximo esos fundamentos. Pero el segundo cambio es el que encontrarás hoy: quiero que comiences a escribir tus propios proyectos más rápido.

En el original 100 Días, la gente completaba el primer proyecto, luego el segundo, luego el tercero, y solo entonces se les pedía que escribieran su propia aplicación desde cero. Aunque eso funcionó bien, me di cuenta en retrospectiva de que avanzar al segundo y tercer proyecto sin haber solidificado realmente los conceptos básicos no era ideal.

Y eso nos lleva al día de hoy: tu primer día de desafío, donde vas a construir una aplicación completa desde cero. No te preocupes: este proyecto ha sido elegido específicamente en función de lo que has aprendido hasta ahora, por lo que todo lo que necesitas saber ya se cubrió en el Proyecto 1.

## Tu desafío
Necesitas construir una aplicación que maneje conversiones de unidades: los usuarios seleccionarán una unidad de entrada y una unidad de salida, luego ingresarán un valor y verán el resultado de la conversión.

Las unidades que elijas dependen de ti, pero podrías optar por una de estas:

Conversión de temperatura: los usuarios eligen Celsius, Fahrenheit o Kelvin.

## Consejos

¡Mantenlo simple! Ve por la solución más sencilla que puedas encontrar.
Convierte la entrada del usuario a una unidad base, y de ahí, conviértela a la unidad de salida.
Utiliza tres propiedades @State para almacenar el número de entrada, la unidad de entrada y la unidad de salida.
Puedes almacenar tus unidades de conversión en un simple array de cadenas (String).
Si quieres que el número de salida se vea un poco más elegante, llama a .formatted() en él para formatearlo.


![Imagen de WhatsApp 2024-08-22 a las 19 35 11_692b96d1](https://github.com/user-attachments/assets/9cc23e7c-ca41-4c48-9433-cdb18e76fb83)
