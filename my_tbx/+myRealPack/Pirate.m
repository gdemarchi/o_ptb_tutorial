classdef Pirate < myRealPack.AdvancedHuman

  methods
    function obj = Pirate(BMI)
      obj = obj@myRealPack.AdvancedHuman(BMI);
    end %function

    function curse(obj)
      disp('AAARRRRGGGHHHH');
    end %function
  end %methods

end