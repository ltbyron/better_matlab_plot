function [] = subplot_spacing_adjust(fig,nrow,ncol,para_vec)
    if ~exist('para_vec','var') para_vec = 0.01*ones(6,1);end
    
    assert(length(para_vec)==6,'Wrong length of para_vec');
    
    left_blank = para_vec(1);
    right_blank = para_vec(2);
    upper_blank = para_vec(3);
    bottom_blank = para_vec(4);
    h_space = para_vec(5);
    v_space = para_vec(6);
    
    axes = get(fig,'Children');
    h=(1-upper_blank-bottom_blank-(nrow-1)*v_space)/nrow;
    w=(1-left_blank-right_blank-(ncol-1)*h_space)/ncol;
    assert(h>0,'Invalid parameters');
    assert(w>0,'Invalid parameters');
    

    cnt = 0;
    for i=nrow:-1:1
        for j=ncol:-1:1
            cnt = cnt + 1;
            set(axes(cnt),'Position',[left_blank+(j-1)*(w+h_space),bottom_blank+(nrow-i)*(h+v_space),w,h]);
        end
    end

end
