#課題2レポート

標準画像「free1」を原画像とする。

ORG=imread('free1.jpg');
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image;

これによりまずは原画像を読み取り、グレースケールイメージに変換した。
表示した結果を以下の図１に示す。

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai2-1.PNG" width="320px"> 

図１　グレースケールイメージに変換した原画像

次に以下のコードにより、２階調の画像を作成した。
IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar;  axis image;
表示した結果を以下の図２に示す。

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai2-2.PNG" width="320px"> 

図２　原画像を２階調画像とした結果

次に以下のコードにより、４階調の画像を作成した。
IMG0 = ORG>64;
IMG1 = ORG>128;
IMG2 = ORG>192;
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG); colormap(gray); colorbar;  axis image;
表示した結果を以下の図３に示す。

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai2-3.PNG" width="320px"> 

図３　原画像を４階調画像とした結果

次に以下のコードにより、８階調の画像を作成した。
IMG0 = ORG>32;
IMG1 = ORG>64;
IMG2 = ORG>96;
IMG3 = ORG>128;
IMG4 = ORG>160;
IMG5 = ORG>192;
IMG6 = ORG>224;
IMG7 = ORG>256;
IMG = IMG0 + IMG1 + IMG2 + IMG3 + IMG4 + IMG5 + IMG6 + IMG7;
imagesc(IMG); colormap(gray); colorbar;  axis image;
表示した結果を以下の図４に示す。

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai2-4.PNG" width="320px"> 

図４　原画像を２階調画像とした結果
