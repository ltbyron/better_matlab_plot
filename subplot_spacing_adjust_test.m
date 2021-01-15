close all

fig = figure();

nrow = 3;
ncol = 4;
cnt = 1;

for i=1:nrow
    for j=1:ncol
        subplot(nrow,ncol,cnt);
        colormap(parula);
        cnt = cnt +1;
        x = randn(100,1);
        x = sort(x);
        a = randn(); b = randn();
        f = @(x)sin(a*x+b);
        g = @(x)cos(a*x+b);
        plot(x,f(x));
        hold on 
        plot(x,g(x));
        plot(x,g(x)+f(x));
        title(cnt-1);
    end
end


left_blank = 0.05;
right_blank = 0.02;
upper_blank = 0.05;
bottom_blank = 0.05;
h_space = 0.05;
v_space = 0.07;
para_vec = [left_blank,right_blank,upper_blank,bottom_blank,h_space,v_space];
subplot_spacing_adjust(fig,nrow,ncol,para_vec);