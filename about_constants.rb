require File.expand_path(File.dirname(__FILE__) + '/neo')

C = "top level"
LEGS = 1 #INITIALIZEZI CU CE VREI
class AboutConstants < Neo::Koan 

  C = "nested"

  def test_nested_constants_may_also_be_referenced_with_relative_paths
    assert_equal "nested", C
  end

  def test_nested_constants_are_referenced_by_their_complete_path
    assert_equal "nested", AboutConstants::C
  end

  # ------------------------------------------------------------------


  class Reptile 
    def legs_in_reptile
      LEGS
    end
  end

  def test_subclasses_inherit_constants_from_parent_classes
    assert_equal LEGS , Reptile.new.legs_in_reptile # IN LOC DE LEGS,PUTEAI SA PUI SI 1
  end

  # ------------------------------------------------------------------

end
