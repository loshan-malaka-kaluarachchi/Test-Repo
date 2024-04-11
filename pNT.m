classdef pNT

    properties
        x_coord;
        y_coord;
        dist_origin;
        angle;
    end
    
    methods
    %Constructor
    function obj_pt = pNT(Arg1,Arg2)
        obj_pt.x_coord = Arg1;
        obj_pt.y_coord = Arg2;
        obj_pt.dist_origin = sqrt((obj_pt.x_coord).^2 + (obj_pt.y_coord).^2);
        obj_pt.angle = atan(obj_pt.y_coord/obj_pt.x_coord);
    end
    
    %Static
    
    %Destructor
    
    
    end
    
end