function draw_stem(x,y,dot_col,title_heading,x_label,y_label)

ax_lim = [min(x) max(x) min(y) max(y)*1.5];

stem(x,y,"filled",dot_col);
grid 'on';
grid 'minor';
title(title_heading);
xlabel(x_label);
ylabel(y_label);
axis(ax_lim);

end