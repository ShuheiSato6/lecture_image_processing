clear; % 変数のオールクリア



ORG=imread('free1.jpg'); % 原画像の入力

imagesc(ORG); axis image; % 画像の表示

pause; % 一時停止



IMG = imresize(ORG,0.5); % 画像の縮小

IMG2 = imresize(IMG,2,'box'); % 画像の拡大

imagesc(IMG2); axis image; % 画像の表示

pause; % 一時停止



IMG = imresize(IMG,0.5); % 画像の縮小

IMG2 = imresize(IMG,4,'box'); % 画像の拡大

imagesc(IMG2); axis image; % 画像の表示

pause; % 一時停止



IMG = imresize(IMG,0.5); % 画像の縮小

IMG2 = imresize(IMG,8,'box'); % 画像の拡大

imagesc(IMG2); axis image; % 画像の表示

pause; % 一時停止



IMG = imresize(IMG,0.5); % 画像の縮小

IMG2 = imresize(IMG,16,'box'); % 画像の拡大

imagesc(IMG2); axis image; % 画像の表示

pause; % 一時停止



IMG = imresize(IMG,0.5); % 画像の縮小

IMG2 = imresize(IMG,32,'box'); % 画像の拡大

imagesc(IMG2); axis image; % 画像の表示
