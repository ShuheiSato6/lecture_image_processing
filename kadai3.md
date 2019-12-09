# 課題３レポート

標準画像「free1」を原画像とする。

ORG=imread('free1.jpg');

ORG= rgb2gray(ORG);

imagesc(ORG); colormap(gray); colorbar;

これにより原画像を読み取り、カラー画像を白黒濃淡画像に変換して表示した。

その結果を以下の図１に示す。  

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai3-1.PNG" width="320px"> 

図１．白黒濃淡画像に変換した原画像  

次に以下のコードにより輝度値が64以上の画素を1に、その他を0に変換し、表示した。

IMG = ORG > 64;

imagesc(IMG); colormap(gray); colorbar;

その結果を以下の図２に示す。  

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai3-2.PNG" width="320px"> 

図２．輝度値が64以上の画素を1にその他を0とした結果  

次に以下のコードにより輝度値が96以上の画素を1に、その他を0に変換し、表示した。

IMG = ORG > 96;

imagesc(IMG); colormap(gray); colorbar;

その結果を以下の図２に示す。  

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai3-3.PNG" width="320px"> 

図３．輝度値が96以上の画素を1にその他を0とした結果  

次に以下のコードにより輝度値が128以上の画素を1に、その他を0に変換し、表示した。

IMG = ORG > 128;

imagesc(IMG); colormap(gray); colorbar;

その結果を以下の図２に示す。  

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai3-4.PNG" width="320px"> 

図４．輝度値が128以上の画素を1にその他を0とした結果  

次に以下のコードにより輝度値が192以上の画素を1に、その他を0に変換し、表示した。

IMG = ORG > 192;

imagesc(IMG); colormap(gray); colorbar;

その結果を以下の図２に示す。  

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai3-5.PNG" width="320px"> 

図５．輝度値が192以上の画素を1にその他を0とした結果  
