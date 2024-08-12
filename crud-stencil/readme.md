# Link del NPMJS


# CRUD Component en StencilJS

Este componente es una implementación de un CRUD (Crear, Leer, Actualizar, Eliminar) en StencilJS que interactúa con una API REST. Permite la gestión de una lista de tareas.

## Funcionalidades

- **Crear una nueva tarea:** El formulario en la parte superior permite introducir los datos de una nueva tarea. Al hacer clic en "Crear Tarea", se realiza una petición POST a la API.
- **Leer todas las tareas:** El componente realiza una petición GET a la API para obtener la lista de tareas y las muestra en una tabla.
- **Ver los detalles de una tarea:** Al hacer clic en el botón "Leer", se muestra un modal con los detalles de la tarea seleccionada.
- **Editar una tarea existente:** Al hacer clic en el botón "Editar", los datos de la tarea se cargan en el formulario. Al modificar y hacer clic en "Actualizar Tarea", se realiza una petición PUT para actualizar la tarea.
- **Eliminar una tarea:** Al hacer clic en el botón "Eliminar", se realiza una petición DELETE para borrar la tarea.

## Estructura del Código

### 1. Estado del Componente

```typescript
@State() tareas: any[] = [];
@State() selectedTarea: any = null;
@State() showDetails: boolean = false;
@State() tarea = {
  id: '',
  title: '',
  description: '',
  startTime: '',
  endTime: '',
};
tareas: Almacena la lista de tareas obtenida de la API.
selectedTarea: Almacena la tarea seleccionada para ver los detalles.
showDetails: Indica si el modal de detalles está visible.
tarea: Almacena los datos de la tarea actualmente en el formulario.
2. Ciclo de Vida del Componente

componentWillLoad() {
  this.fetchTareas();
}
componentWillLoad: Método que se ejecuta antes de que el componente se cargue en la página. Llama a fetchTareas para obtener las tareas de la API.
3. Métodos Principales
fetchTareas(): Realiza una petición GET para obtener todas las tareas.
createTarea(): Realiza una petición POST para crear una nueva tarea.
viewTarea(id): Realiza una petición GET para obtener los detalles de una tarea específica.
updateTarea(id): Realiza una petición PUT para actualizar una tarea existente.
deleteTarea(id): Realiza una petición DELETE para eliminar una tarea.
handleInputChange(event): Actualiza el estado tarea con los datos introducidos en el formulario.
handleEditTarea(tarea): Carga los datos de una tarea en el formulario para su edición.
resetForm(): Resetea el formulario después de crear o actualizar una tarea.
closeDetails(): Cierra el modal de detalles.
4. Renderizado

render() {
  return (
    <div>
      <h1>Lista de Tareas</h1>
      <form 
        onSubmit={(e) => {
          e.preventDefault();
        }}
      >
        <input
          type="text"
          name="id"
          value={this.tarea.id}
          placeholder="Colocar ID para Crear y Actualizar"
          onInput={(event) => this.handleInputChange(event)}
        />
        <input
          type="text"
          name="title"
          value={this.tarea.title}
          placeholder="Título de la tarea"
          onInput={(event) => this.handleInputChange(event)}
        />
        <input
          type="text"
          name="description"
          value={this.tarea.description}
          placeholder="Descripción de la tarea"
          onInput={(event) => this.handleInputChange(event)}
        />
        <input
          type="time"
          name="start_time"
          value={this.tarea.startTime}
          placeholder="Hora de inicio"
          onInput={(event) => this.handleInputChange(event)}
        />
        <input
          type="time"
          name="end_time"
          value={this.tarea.endTime}
          placeholder="Hora de término"
          onInput={(event) => this.handleInputChange(event)}
        />
        <div class="button-group">
          <button type="button" class="create-button" onClick={() => this.createTarea()}>
            Crear Tarea
          </button>
          {this.tarea.id && (
            <button type="button" class="update-button" onClick={() => this.updateTarea(this.tarea.id)}>
              Actualizar Tarea
            </button>
          )}
        </div>
      </form>
      <table>
        <thead>
          <tr>
            <th>ID</th>
            <th>Título</th>
            <th>Descripción</th>
            <th>Hora de Inicio</th>
            <th>Hora por culminar</th>
            <th>Acciones</th>
          </tr>
        </thead>
        <tbody>
          {this.tareas.map((tarea) => (
            <tr>
              <td>{tarea.id}</td>
              <td>{tarea.title}</td>
              <td>{tarea.description}</td>
              <td>{tarea.startTime}</td>
              <td>{tarea.endTime}</td>
              <td>
                <button onClick={() => this.viewTarea(tarea.id)}>Leer</button>
                <button onClick={() => this.handleEditTarea(tarea)}>Editar</button>
                <button onClick={() => this.deleteTarea(tarea.id)}>Eliminar</button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
      {this.showDetails && this.selectedTarea && (
        <div class="details-modal">
          <div class="modal-content">
            <span class="close" onClick={() => this.closeDetails()}>&times;</span>
            <h2>Detalles de la Tarea</h2>
            <p><strong>ID:</strong> {this.selectedTarea.id}</p>
            <p><strong>Título:</strong> {this.selectedTarea.title}</p>
            <p><strong>Descripción:</strong> {this.selectedTarea.description}</p>
            <p><strong>Hora de Inicio:</strong> {this.selectedTarea.startTime}</p>
            <p><strong>Hora por Culminar:</strong> {this.selectedTarea.endTime}</p>
          </div>
        </div>
      )}
    </div>
  );
}
El método render devuelve el JSX que se renderizará en la interfaz de usuario. Contiene el formulario para crear/editar tareas, la tabla que muestra todas las tareas, y un modal para ver los detalles de una tarea.

5. Interacción con la API
El componente interactúa con una API REST en http://localhost:7000/tareas. Las peticiones se hacen mediante fetch, utilizando los métodos HTTP apropiados (GET, POST, PUT, DELETE).

6. Manejo de Errores
Cada método que interactúa con la API tiene un bloque try-catch para manejar errores y evitar que el componente falle sin control.

Ejecución
Asegúrate de que la API esté corriendo en http://localhost:7000/tareas.
Inicia el servidor de desarrollo de StencilJS.
El componente debería cargar automáticamente las tareas desde la API y permitirte crear, editar, eliminar y ver detalles de tareas desde la interfaz.
Requisitos
StencilJS
API REST corriendo en http://localhost:7000/tareas.