function [] = set_colormap(fig, colormap_name)
    axes = get(fig,'Children');
    
    for ax = axes
        set(ax,'ColorOrder',load_colors(colormap_name));
    end

end

