function [] = FigEle(varargin)

% Author: Tim Sui
% Date: Jan. 23, 2026
% Email: timstsui@gmail.com 

% FigEle stands for Figurae Elegans, elegant figures in latin I believe.

% Make elegant figures in MATLAB. Make them sooo elegant that I even used
% latino to name the function. 
% Modified from 'PrettyFig.m'. This code was used for quite a long time
% without contacting the author. I kept most features that I like and
% reframed the code into this one.


% defaults
lw = 2; % line width of graphical elements
plw = 1.5; % plot line width 
fs = 11; % font size

axesHandles = findall(gcf,'type','axes');
for i = 1:length(axesHandles)
    set(axesHandles(i), 'FontSize', fs, 'LineWidth', plw, 'Box', 'on');
    plots = get(axesHandles(i),'Children');
    for j = 1 : length(plots)
        set(plots(j), 'LineWidth', lw);
    end
end

if length(axesHandles) > 1
    tiles = get(gcf);
    tiles.Children.TileSpacing = 'compact';
    tiles.Children.Padding = 'compact';
end

set(gcf,'Color','w')
