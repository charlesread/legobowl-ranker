package com.charlesread



import org.junit.*
import grails.test.mixin.*

@TestFor(CriterionController)
@Mock(Criterion)
class CriterionControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/criterion/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.criterionInstanceList.size() == 0
        assert model.criterionInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.criterionInstance != null
    }

    void testSave() {
        controller.save()

        assert model.criterionInstance != null
        assert view == '/criterion/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/criterion/show/1'
        assert controller.flash.message != null
        assert Criterion.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/criterion/list'

        populateValidParams(params)
        def criterion = new Criterion(params)

        assert criterion.save() != null

        params.id = criterion.id

        def model = controller.show()

        assert model.criterionInstance == criterion
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/criterion/list'

        populateValidParams(params)
        def criterion = new Criterion(params)

        assert criterion.save() != null

        params.id = criterion.id

        def model = controller.edit()

        assert model.criterionInstance == criterion
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/criterion/list'

        response.reset()

        populateValidParams(params)
        def criterion = new Criterion(params)

        assert criterion.save() != null

        // test invalid parameters in update
        params.id = criterion.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/criterion/edit"
        assert model.criterionInstance != null

        criterion.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/criterion/show/$criterion.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        criterion.clearErrors()

        populateValidParams(params)
        params.id = criterion.id
        params.version = -1
        controller.update()

        assert view == "/criterion/edit"
        assert model.criterionInstance != null
        assert model.criterionInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/criterion/list'

        response.reset()

        populateValidParams(params)
        def criterion = new Criterion(params)

        assert criterion.save() != null
        assert Criterion.count() == 1

        params.id = criterion.id

        controller.delete()

        assert Criterion.count() == 0
        assert Criterion.get(criterion.id) == null
        assert response.redirectedUrl == '/criterion/list'
    }
}
