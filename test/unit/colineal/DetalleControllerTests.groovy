package colineal



import org.junit.*
import grails.test.mixin.*

@TestFor(DetalleController)
@Mock(Detalle)
class DetalleControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/detalle/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.detalleInstanceList.size() == 0
        assert model.detalleInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.detalleInstance != null
    }

    void testSave() {
        controller.save()

        assert model.detalleInstance != null
        assert view == '/detalle/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/detalle/show/1'
        assert controller.flash.message != null
        assert Detalle.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/detalle/list'


        populateValidParams(params)
        def detalle = new Detalle(params)

        assert detalle.save() != null

        params.id = detalle.id

        def model = controller.show()

        assert model.detalleInstance == detalle
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/detalle/list'


        populateValidParams(params)
        def detalle = new Detalle(params)

        assert detalle.save() != null

        params.id = detalle.id

        def model = controller.edit()

        assert model.detalleInstance == detalle
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/detalle/list'

        response.reset()


        populateValidParams(params)
        def detalle = new Detalle(params)

        assert detalle.save() != null

        // test invalid parameters in update
        params.id = detalle.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/detalle/edit"
        assert model.detalleInstance != null

        detalle.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/detalle/show/$detalle.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        detalle.clearErrors()

        populateValidParams(params)
        params.id = detalle.id
        params.version = -1
        controller.update()

        assert view == "/detalle/edit"
        assert model.detalleInstance != null
        assert model.detalleInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/detalle/list'

        response.reset()

        populateValidParams(params)
        def detalle = new Detalle(params)

        assert detalle.save() != null
        assert Detalle.count() == 1

        params.id = detalle.id

        controller.delete()

        assert Detalle.count() == 0
        assert Detalle.get(detalle.id) == null
        assert response.redirectedUrl == '/detalle/list'
    }
}
