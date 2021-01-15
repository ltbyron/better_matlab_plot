function [colormap] = load_colors(colormap_name)
    matplotlib=[31, 119, 180;
            255, 127, 14;
            44, 160, 44;
            214, 39, 40;
            148, 103, 189;
            140, 86, 75;
            227, 119, 194;
            127, 127, 127;
            188, 189, 34;
            23, 190, 207]/255;
     supported = 'matplotlib/';
     if ~isstr(colormap_name)
         colormap = colormap_name;
         return
     end
     if ~exist(colormap_name,'var')
         fprintf(["Supported:",supported,'\n']);
         error('Invalid colormap_name');
     end
     colormap = eval(colormap_name);
end

