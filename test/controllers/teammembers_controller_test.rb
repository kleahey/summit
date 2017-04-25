require 'test_helper'

class TeammembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teammember = teammembers(:one)
  end

  test "should get index" do
    get teammembers_url
    assert_response :success
  end

  test "should get new" do
    get new_teammember_url
    assert_response :success
  end

  test "should create teammember" do
    assert_difference('Teammember.count') do
      post teammembers_url, params: { teammember: { name: @teammember.name } }
    end

    assert_redirected_to teammember_url(Teammember.last)
  end

  test "should show teammember" do
    get teammember_url(@teammember)
    assert_response :success
  end

  test "should get edit" do
    get edit_teammember_url(@teammember)
    assert_response :success
  end

  test "should update teammember" do
    patch teammember_url(@teammember), params: { teammember: { name: @teammember.name } }
    assert_redirected_to teammember_url(@teammember)
  end

  test "should destroy teammember" do
    assert_difference('Teammember.count', -1) do
      delete teammember_url(@teammember)
    end

    assert_redirected_to teammembers_url
  end
end
