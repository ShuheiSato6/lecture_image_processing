% 課題7　ダイナミックレンジの拡大
% 画素のダイナミックレンジを０から２５５にせよ． 

ORG = imread('free1.jpg'); % 画像の読み込み
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
pause;
imhist(ORG); % 濃度ヒストグラムを生成、表示
pause;
ORG = double(ORG);
mn = min(ORG(:)); % 濃度値の最小値を算出
mx = max(ORG(:)); % 濃度値の最大値を算出
ORG = (ORG-mn)/(mx-mn)*255;
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
pause;
ORG = uint8(ORG);
imhist(ORG); % 濃度ヒストグラムを生成、表示
