---
layout: post
title: 連鎖的觸發條件
---

為了之後文章討論的方便，此文章將連鎖的觸發條件廣泛地歸納成三種[^1]：段差式、插入式、幽靈連鎖。其中，前兩種包含了絕大多數的情況，之後進行實際的連鎖討論時主要也都會用這兩種。

文末介紹鶴龜連鎖，他是段差式的一種特例。

## 段差式

段差式連鎖（段差ずれ，だんさずれ），指的是以下的連鎖形式：氣泡消除後，產生段差，藉由段差使得氣泡湊在一起而觸發連鎖，

{% figure %}
![段差式](https://i.imgur.com/kT4eths.jpg) 
{% caption %}
段差式連鎖例子。這七個例子，都是紅色→藍色的兩連鎖。
{% endfigure %}

段差式連鎖是個廣泛的概念，而他在定型排法的特化就是「[階梯]({{ "wiki/B_chain/b_regular_form/i_stairs" | relative_url }})」。

## 插入式

插入式連鎖（挟み込み，はさみこみ），指的是以下的連鎖形式：氣泡一開始將其他氣泡夾住，氣泡消除後，上下的氣泡湊在一起觸發連鎖，

{% figure %}
![插入式](https://i.imgur.com/3Teqcld.jpg) 
{% caption %}
插入式連鎖例子。這五個例子，都是紅色→藍色的兩連鎖。
{% endfigure %}

> 段差式與插入式的辨別方式：在以上插入式連鎖的例子，都可看到其中一行縱向有藍色把紅色（或障礙氣泡）夾住的狀況，段差式連鎖則無。

另外，也有以下這種段差與插入式混合的連鎖：

{% figure %}
![混合式](https://i.imgur.com/FX4iFKh.jpg) 
{% endfigure %}

同樣地，插入式連鎖亦是個廣泛概念，他在定型排法的特化是「[鑰匙]({{ "wiki/B_chain/b_regular_form/ii_sandwich" | relative_url }})」。

> 註：在SEGA官方發布的中文教學「魔法氣泡課程」中，挟み込み並非翻譯成插入式，而是翻譯成「[夾疊](https://manual.sega.jp/puyopuyo_esports/ct/?pid=27)」。

## 幽靈連鎖

魔法氣泡的場地，可見的部分是6行 x 12列，但其實有第13列存在。[第13列]({{ "wiki/E_field_and_operation/b_13and14row" | relative_url }})是不可看見的，但仍然可以往第13列擺上氣泡；另一方面，擺在第13列的氣泡即使有同色四顆也不會消除。
在下圖中，藍色有四顆相連，但第四顆在第13列，因此不會消除，必須等紅色消掉後，四顆藍色掉下來才會消除，因此形成「紅→藍」的二連鎖。像這樣的連鎖便稱為「幽靈連鎖」。

{% figure %}
![幽靈](https://i.imgur.com/UN10xCF.jpg)
{% endfigure %}

## 段差式的特例：鶴龜連鎖

若次序上相鄰的兩連鎖之間，彼此的氣泡並不相鄰，則稱為鶴龜連鎖。以下為鶴龜連鎖的幾個例子，
{% figure %}
[![鶴龜例1](https://i.imgur.com/4QWE6ED.jpg)](https://puyonexus.com/chainsim/chain/kh4xF)
[![鶴龜例2](https://i.imgur.com/HTZ3GtR.jpg)](https://puyonexus.com/chainsim/chain/jSKkt)
[![鶴龜例3](https://i.imgur.com/SkkFd3Z.jpg)](https://puyonexus.com/chainsim/chain/oDJEu)
{% caption %}
鶴龜連鎖的三個例子。左圖為三連鎖，紅→藍之處為鶴龜；中圖為六連鎖，前兩連鎖的綠→綠為鶴龜；右圖為六連鎖，第二、第三連鎖的紅→紅為鶴龜。點擊圖像可連結到連鎖模擬器，按「Start」後能看到連鎖消除的動畫。
{% endfigure %}

鶴龜連鎖較為不直觀，讀者不妨點進上圖的連結，體會下鶴龜連鎖是如何進行的。

當顏色來得不均勻，或是某個顏色來得太多時，鶴龜連鎖常是個不錯的解決辦法，例如，在下圖中，假設有位玩家想要排[2-2階梯]({{ "wiki/B_chain/b_standard_patterns/i_stairs" | relative_url }})，

{% figure %}
[![鶴龜應用1](https://i.imgur.com/fo6gs75.jpg)](https://puyonexus.com/chainsim/chain/39Xsh)
{% endfigure %}

這個主線的發火點是B行的藍色，是個三連鎖，現在想要在E行再擺兩顆藍色，這樣就能成為四連鎖。然而，假設接下來的三手氣泡*完全沒有藍色*，而是紅黃、綠綠、綠綠。那麼，不妨臨時改變連鎖的預定順序，利用段差做成綠→綠的連鎖，等到之後藍色來時再補在F行。

{% figure %}
[![鶴龜應用2](https://i.imgur.com/m1V9mBW.jpg)](https://puyonexus.com/chainsim/chain/uSK8q)
[![鶴龜應用3](https://i.imgur.com/if144Xb.jpg)](https://puyonexus.com/chainsim/chain/C1agu)
{% caption %}
鶴龜連鎖的應用實例。如左圖，將紅黃擺在E行，接下來的綠綠、綠綠兩手各擺在E行與F行，如此一來就能成為四連鎖，最後兩連鎖是綠→綠。之後藍色來時可再補在F行，成為五連鎖，如右圖。
{% endfigure %}

[^1]: [連鎖の仕組](http://alg-d.com/game/puyo/chain12.html)
