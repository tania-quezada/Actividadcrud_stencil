USE tareas_db;


-- Crear la tabla tareas
CREATE TABLE tareas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  start_time TIME NOT NULL,
  end_time TIME NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Insertar datos de ejemplo en la tabla tareas
INSERT INTO tareas (title, description, start_time, end_time) VALUES 
('Comprar comestibles', 'Comprar leche, pan, huevos y frutas.', '09:00:00', '10:00:00'),
('Lavar el coche', 'Lavar y aspirar el coche el sábado.', '10:30:00', '12:00:00'),
('Estudiar para el examen', 'Repasar los capítulos 4 y 5 del libro de matemáticas.', '14:00:00', '16:00:00'),
('Reunión con el equipo de proyecto', 'Reunión a las 3:00 PM para discutir el progreso del proyecto.', '15:00:00', '16:00:00'),
('Pagar facturas', 'Pagar la factura de electricidad y el agua.', '08:00:00', '09:00:00'),
('Sacar al perro a pasear', 'Pasear al perro por el parque cada mañana.', '07:00:00', '07:30:00'),
('Preparar la cena', 'Cocinar una cena saludable para la familia.', '18:00:00', '19:00:00'),
('Leer un libro', 'Leer al menos 20 páginas de un libro cada día.', '20:00:00', '21:00:00'),
('Ir al gimnasio', 'Hacer ejercicio en el gimnasio tres veces a la semana.', '17:00:00', '18:00:00'),
('Planificar vacaciones', 'Planificar las actividades y destinos para las próximas vacaciones.', '16:00:00', '17:00:00'),
('Actualizar el currículo', 'Actualizar el currículo con la experiencia laboral reciente.', '11:00:00', '12:00:00'),
('Revisar correos electrónicos', 'Revisar y responder a los correos electrónicos pendientes.', '08:30:00', '09:00:00'),
('Limpiar la casa', 'Hacer una limpieza general de la casa el domingo.', '10:00:00', '12:00:00'),
('Comprar regalos', 'Comprar regalos para el cumpleaños de Juan y Ana.', '14:00:00', '15:30:00'),
('Revisar el coche', 'Hacer un chequeo general del coche antes del viaje.', '09:00:00', '10:00:00'),
('Organizar el escritorio', 'Ordenar y limpiar el escritorio de trabajo.', '17:00:00', '18:00:00'),
('Revisar el presupuesto', 'Revisar y ajustar el presupuesto mensual.', '19:00:00', '20:00:00'),
('Tomar un curso en línea', 'Inscribirse y completar un curso en línea sobre desarrollo web.', '18:00:00', '20:00:00'),
('Hacer la declaración de impuestos', 'Completar y enviar la declaración de impuestos anual.', '09:00:00', '11:00:00'),
('Asistir a una conferencia', 'Participar en la conferencia de tecnología el próximo viernes.', '10:00:00', '12:00:00');



-- BD TAREASDB
USE tareasDB;

-- Crear la tabla actividades
CREATE TABLE actividades (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  startTime TIME NOT NULL,
  endTime TIME NOT NULL,
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Insertar datos de ejemplo en la tabla actividades
INSERT INTO actividades (title, description, startTime, endTime) VALUES 
('Correr en el parque', 'Hacer ejercicio cardiovascular corriendo en el parque.', '06:00:00', '07:00:00'),
('Reunión de trabajo', 'Reunión con el equipo para discutir el proyecto actual.', '09:00:00', '10:30:00'),
('Preparar el almuerzo', 'Cocinar una comida saludable para el almuerzo.', '12:00:00', '13:00:00'),
('Llamar a mamá', 'Conversar con mamá sobre cómo le ha ido en la semana.', '14:00:00', '14:30:00'),
('Leer artículo técnico', 'Leer el último artículo publicado en la revista de tecnología.', '15:00:00', '16:00:00'),
('Entrenamiento en el gimnasio', 'Sesión de pesas y entrenamiento de fuerza.', '17:30:00', '19:00:00'),
('Ver una película', 'Disfrutar de una película en casa por la noche.', '20:00:00', '22:00:00'),
('Revisar el código', 'Revisar y mejorar el código del proyecto en curso.', '10:45:00', '12:00:00'),
('Planificación semanal', 'Organizar y planificar las tareas y eventos de la semana.', '08:00:00', '09:00:00'),
('Cenar con amigos', 'Salir a cenar con amigos en un restaurante.', '19:30:00', '21:30:00'),
('Meditar', 'Realizar una sesión de meditación para reducir el estrés.', '07:00:00', '07:30:00'),
('Estudiar un nuevo idioma', 'Practicar el vocabulario y la gramática del nuevo idioma.', '18:00:00', '19:00:00'),
('Reparar bicicleta', 'Arreglar los frenos y ajustar el asiento de la bicicleta.', '11:00:00', '12:30:00'),
('Asistir a un webinar', 'Participar en un webinar sobre tendencias en desarrollo web.', '13:00:00', '14:30:00'),
('Escribir en el diario', 'Reflexionar y escribir en el diario personal antes de dormir.', '22:30:00', '23:00:00'),
('Actualizar el blog', 'Escribir y publicar un nuevo artículo en el blog.', '16:30:00', '18:00:00'),
('Hacer compras en línea', 'Comprar artículos necesarios a través de una tienda en línea.', '09:30:00', '10:00:00'),
('Reorganizar el armario', 'Ordenar y limpiar el armario de ropa.', '15:30:00', '17:00:00'),
('Tomar un café', 'Tomarse un descanso para disfrutar de un café por la tarde.', '16:00:00', '16:30:00'),
('Asistir a una clase de yoga', 'Participar en una clase de yoga para mejorar la flexibilidad.', '07:30:00', '08:30:00');
