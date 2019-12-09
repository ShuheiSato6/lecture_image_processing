# 課題６レポート

標準画像「free1」を原画像とする。

以下のコードによりカラー画像を白黒濃淡画像に変換して表示した。

ORG=imread('free1.jpg');

ORG = rgb2gray(ORG);

imagesc(ORG); colormap(gray); colorbar;

その結果を以下の図１に示す。

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai8-1.PNG" width="320px">

図１．白黒濃淡画像に変換した原画像

次に、以下のコードにより画像を二値化した。

IMG = ORG > 128;

imagesc(IMG); colormap(gray); colorbar;

その結果を以下の図２に示す。

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai8-2.PNG" width="320px">

図２．128で二値化した結果

次に、以下のコードにより、二値化された画像の連結成分にラベルを付けた。

IMG = bwlabeln(IMG);

imagesc(IMG); colormap(jet); colorbar;

その結果を以下の図３に示す。

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai8-3.PNG" width="320px">

図３．二値化された画像の連結成分にラベルを付けた結果
