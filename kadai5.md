# 課題５レポート

標準画像「free1」を原画像とする。

以下のコードにより、原画像を白黒濃淡画像に変換して表示した。

ORG=imread('free1.jpg');

ORG = rgb2gray(ORG);

imagesc(ORG); colormap(gray); colorbar;

その結果を以下の図１に示す。

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai5-1.PNG" width="320px">

図１．白黒濃淡画像に変換した原画像

次に、以下のコードにより判別分析法で画像を二値化した。

H = imhist(ORG);

myu_T = mean(H);

max_val = 0;

max_thres = 1;

for i=1:255

C1 = H(1:i);

C2 = H(i+1:256);

n1 = sum(C1);

n2 = sum(C2);

myu1 = mean(C1);

myu2 = mean(C2);

sigma1 = var(C1);

sigma2 = var(C2);

sigma_w = (n1 *sigma1+n2*sigma2)/(n1+n2);

sigma_B = (n1 *(myu1-myu_T)^2+n2*(myu2-myu_T)^2)/(n1+n2);

if max_val<sigma_B/sigma_w

max_val = sigma_B/sigma_w;

max_thres =i;

end;

end;



IMG = ORG > max_thres;

imagesc(IMG); colormap(gray); colorbar

その結果を以下の図２に示す。

<img src="https://github.com/ShuheiSato6/lecture_image_processing/blob/master/kadai_img/kadai5-2.PNG" width="320px">

図２．判別分析法を用いて二値化した結果

このようにして判別分析法を用いて画像を二値化した。
