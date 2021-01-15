fig = figure();

nrow = 2;
ncol = 2;
cnt = 1;

for i=1:nrow
    for j=1:ncol
        subplot(nrow,ncol,cnt);
        bar(rand(6,4));
        cnt = cnt+1;
    end
end

%%% Using matplotlib style colors
set_colormap(fig, 'matplotlib');

%%% Using custom colors
% set_colormap(fig,rand(5,3))