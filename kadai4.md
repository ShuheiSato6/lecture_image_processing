# 課題４レポート

標準画像「free1」を原画像とする。

ORG=imread('free1.jpg'); 

ORG=rgb2gray(ORG); 

imagesc(ORG); colormap(gray); colorbar;

これにより原画像を読み取り、カラー画像を白黒濃淡画像に変換して表示した。

その結果を以下の図１に示す。

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai4-1.PNG" width="320px">

図１．白黒濃淡画像に変換した原画像

次に以下のコードによりヒストグラムを表示した。

imhist(ORG);

その結果を以下の図２に示す。

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai4-2.PNG" width="320px">

図２．生成したヒストグラム

このようにして画素の濃度のヒストグラムを生成した。
