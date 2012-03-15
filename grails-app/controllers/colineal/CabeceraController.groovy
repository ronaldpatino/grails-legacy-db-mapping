package colineal

import org.springframework.dao.DataIntegrityViolationException

class CabeceraController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST", imprimir: "GET"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [cabeceraInstanceList: Cabecera.list(params), cabeceraInstanceTotal: Cabecera.count()]
    }

    def create() {
        [cabeceraInstance: new Cabecera(params)]
    }

    def save() {
        def cabeceraInstance = new Cabecera(params)
        if (!cabeceraInstance.save(flush: true)) {
            render(view: "create", model: [cabeceraInstance: cabeceraInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'cabecera.label', default: 'Cabecera'), cabeceraInstance.id])
        redirect(action: "show", id: cabeceraInstance.id)
    }

    def show() {
        def cabeceraInstance = Cabecera.get(params.id)
        if (!cabeceraInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'cabecera.label', default: 'Cabecera'), params.id])
            redirect(action: "list")
            return
        }

        [cabeceraInstance: cabeceraInstance]
    }

    def edit() {
        def cabeceraInstance = Cabecera.get(params.id)
        if (!cabeceraInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cabecera.label', default: 'Cabecera'), params.id])
            redirect(action: "list")
            return
        }

        [cabeceraInstance: cabeceraInstance]
    }

    def update() {
        def cabeceraInstance = Cabecera.get(params.id)
        if (!cabeceraInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cabecera.label', default: 'Cabecera'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (cabeceraInstance.version > version) {
                cabeceraInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'cabecera.label', default: 'Cabecera')] as Object[],
                          "Another user has updated this Cabecera while you were editing")
                render(view: "edit", model: [cabeceraInstance: cabeceraInstance])
                return
            }
        }

        cabeceraInstance.properties = params

        if (!cabeceraInstance.save(flush: true)) {
            render(view: "edit", model: [cabeceraInstance: cabeceraInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'cabecera.label', default: 'Cabecera'), cabeceraInstance.id])
        redirect(action: "show", id: cabeceraInstance.id)
    }

    def delete() {
        def cabeceraInstance = Cabecera.get(params.id)
        if (!cabeceraInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'cabecera.label', default: 'Cabecera'), params.id])
            redirect(action: "list")
            return
        }

        try {
            cabeceraInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'cabecera.label', default: 'Cabecera'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'cabecera.label', default: 'Cabecera'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def imprimir() {
        def cabeceraInstance = Cabecera.get(params.id)
        if (!cabeceraInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cabecera.label', default: 'Cabecera'), params.id])
            redirect(action: "list")
            return
        }

        [cabeceraInstance: cabeceraInstance]

    }
}
