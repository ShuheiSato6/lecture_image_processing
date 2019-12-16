# 課題７レポート

標準画像「free1」を原画像とする。

以下のコードによりカラー画像を白黒濃淡画像に変換して表示した。

ORG=imread('free1.jpg');

ORG = rgb2gray(ORG);

imagesc(ORG); colormap(gray); colorbar;

その結果を以下の図１に示す。

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai7-1.PNG" width="320px">

図１．白黒濃淡画像に変換した原画像

次に、以下のコードにより濃度ヒストグラムを作成し、表示した。

imhist(ORG);

その結果を以下の図２に示す。

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai7-2.PNG" width="320px">

図２．濃度ヒストグラムの作成結果

次に以下のコードにより画素のダイナミックレンジを0から255に拡大した。

ORG = double(ORG);

mn = min(ORG(:));

mx = max(ORG(:));

ORG = (ORG-mn)/(mx-mn)*255;

imagesc(ORG); colormap(gray); colorbar;

その結果を以下の図３に示す。

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai7-3.PNG" width="320px">

図３．ダイナミックレンジを0から255に拡大した結果

次に以下のコードにより拡大した後の画像データを1バイト符号なし整数形式に変換し、濃度ヒストグラムを作成、表示した。

ORG = uint8(ORG);

imhist(ORG);

その結果を以下の図４に示す。

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai7-4.PNG" width="320px">

図４．ダイナミックレンジを拡大した後の濃度ヒストグラム
