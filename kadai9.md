# 課題９レポート

標準画像「free1」を原画像とする。

以下のコードにより、原画像を白黒濃淡画像に変換して表示した。

ORG=imread('free1.jpg');

ORG = rgb2gray(ORG);

imagesc(ORG); colormap(gray); colorbar;

その結果を以下の図１に示す。

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai9-1.PNG" width="320px">

図１．白黒濃淡画像に変換した原画像

次に以下のコードによりノイズを添付した。

ORG = imnoise(ORG,'salt & pepper',0.02);

imagesc(ORG); colormap(gray); colorbar;

その結果を以下の図２に示す。

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai9-2.PNG" width="320px">

図２．ノイズを添付した結果

次に以下のコードにより平滑化フィルタで雑音を除去した。

IMG = filter2(fspecial('average',3),ORG); % 平滑化フィルタで雑音除去

imagesc(IMG); colormap(gray); colorbar; % 画像の表示

その結果を以下の図３に示す。

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai9-3.PNG" width="320px">

図３．平滑化フィルタで雑音を除去した結果

次に以下のコードによりメディアンフィルタで雑音を除去した。

IMG = medfilt2(ORG,[3 3]);

imagesc(IMG); colormap(gray); colorbar;

その結果を以下の図４に示す。

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai9-4.PNG" width="320px">

図４．メディアンフィルタで雑音を除去した結果

次に以下のコードでフィルタを設計して、適応させた。


f=[0,-1,0;-1,5,-1;0,-1,0];

IMG = filter2(f,IMG,'same');

imagesc(IMG); colormap(gray); colorbar;

その結果を以下の図５に示す。

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai9-5.PNG" width="320px">

図５．作成したフィルタの適用結果
