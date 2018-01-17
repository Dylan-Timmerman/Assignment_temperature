require 'test_helper'

class TempdbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tempdb = tempdbs(:one)
  end

  test "should get index" do
    get tempdbs_url
    assert_response :success
  end

  test "should get new" do
    get new_tempdb_url
    assert_response :success
  end

  test "should create tempdb" do
    assert_difference('Tempdb.count') do
      post tempdbs_url, params: { tempdb: { temp: @tempdb.temp } }
    end

    assert_redirected_to tempdb_url(Tempdb.last)
  end

  test "should show tempdb" do
    get tempdb_url(@tempdb)
    assert_response :success
  end

  test "should get edit" do
    get edit_tempdb_url(@tempdb)
    assert_response :success
  end

  test "should update tempdb" do
    patch tempdb_url(@tempdb), params: { tempdb: { temp: @tempdb.temp } }
    assert_redirected_to tempdb_url(@tempdb)
  end

  test "should destroy tempdb" do
    assert_difference('Tempdb.count', -1) do
      delete tempdb_url(@tempdb)
    end

    assert_redirected_to tempdbs_url
  end
end
