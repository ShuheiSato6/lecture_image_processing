# 課題１０レポート

標準画像「free1」を原画像とする。

以下のコードにより、原画像を白黒濃淡画像に変換して表示した。

ORG=imread('free1.jpg');

ORG = rgb2gray(ORG);

imagesc(ORG); colormap(gray); colorbar;

その結果を以下の図１に示す。

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai10-1.PNG" width="320px">

図１．白黒濃淡画像に変換した原画像

次に以下のコードによりプレフィット法でのエッジ抽出を行った。

IMG = edge(ORG,'prewitt');

imagesc(IMG); colormap('gray'); colorbar;

その結果を以下の図２に示す。

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai10-2.PNG" width="320px">

図２．プレフィット法でのエッジ抽出の結果

次に以下のコードによりソベル法でのエッジ抽出を行った。

IMG = edge(ORG,'sobel');

imagesc(IMG); colormap('gray'); colorbar;

その結果を以下の図３に示す。

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai10-3.PNG" width="320px">

図３．ソベル法でのエッジ抽出の結果

次に以下のコードによりキャニー法でのエッジ抽出を行った。


IMG = edge(ORG,'canny');

imagesc(IMG); colormap('gray'); colorbar;

その結果を以下の図４に示す。

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai10-4.PNG" width="320px">

図４．キャニー法でのエッジ抽出の結果
