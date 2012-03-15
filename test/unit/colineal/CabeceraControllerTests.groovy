package colineal



import org.junit.*
import grails.test.mixin.*

@TestFor(CabeceraController)
@Mock(Cabecera)
class CabeceraControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/cabecera/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.cabeceraInstanceList.size() == 0
        assert model.cabeceraInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.cabeceraInstance != null
    }

    void testSave() {
        controller.save()

        assert model.cabeceraInstance != null
        assert view == '/cabecera/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/cabecera/show/1'
        assert controller.flash.message != null
        assert Cabecera.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/cabecera/list'


        populateValidParams(params)
        def cabecera = new Cabecera(params)

        assert cabecera.save() != null

        params.id = cabecera.id

        def model = controller.show()

        assert model.cabeceraInstance == cabecera
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/cabecera/list'


        populateValidParams(params)
        def cabecera = new Cabecera(params)

        assert cabecera.save() != null

        params.id = cabecera.id

        def model = controller.edit()

        assert model.cabeceraInstance == cabecera
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/cabecera/list'

        response.reset()


        populateValidParams(params)
        def cabecera = new Cabecera(params)

        assert cabecera.save() != null

        // test invalid parameters in update
        params.id = cabecera.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/cabecera/edit"
        assert model.cabeceraInstance != null

        cabecera.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/cabecera/show/$cabecera.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        cabecera.clearErrors()

        populateValidParams(params)
        params.id = cabecera.id
        params.version = -1
        controller.update()

        assert view == "/cabecera/edit"
        assert model.cabeceraInstance != null
        assert model.cabeceraInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/cabecera/list'

        response.reset()

        populateValidParams(params)
        def cabecera = new Cabecera(params)

        assert cabecera.save() != null
        assert Cabecera.count() == 1

        params.id = cabecera.id

        controller.delete()

        assert Cabecera.count() == 0
        assert Cabecera.get(cabecera.id) == null
        assert response.redirectedUrl == '/cabecera/list'
    }
}
