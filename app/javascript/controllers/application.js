import { Application } from '@hotwired/stimulus'
import controllers from './**/*_controller.js'

const application = Application.start()
controllers.forEach((controller) => {
  console.log(controller.module)
  application.register(controller.name, controller.module.default)
})

// Configure Stimulus development experience
application.debug = false
window.Stimulus = application

export { application }
