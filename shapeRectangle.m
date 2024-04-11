classdef shapeRectangle
    %SHAPERECTANGLE 
    %   Class for defining a rectangle
    
    properties
        height(1,1) double
        width(1,1) double
        area(1,1) double
        diagonal(1,1) double
    end
    
    methods
        function obj = shapeRectangle(heightArg,widthArg)
            %SHAPERECTANGLE Construct an instance of a
            %rectangle(Constructor)
            %   Initializes a rectangle
            obj.height = heightArg;
            obj.width = widthArg;
            obj.area = areaRect(obj);
            obj.diagonal = sqrt((obj.height)^2+(obj.width)^2);
        end
        
        function outArg = areaRect(rect)
            %AREARECT Summary of this method goes here
            %   Calculates and assigns area for a rectangle 
            outArg = rect.height.*rect.width;
        end
    end
end

