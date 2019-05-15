---
layout: post
title: 連鎖的觸發條件
---

這篇文章將連鎖的觸發條件廣泛地歸納成三種[^1]：段差式、插入式、幽靈連鎖。其中，前兩種包含了絕大多數的情況，之後進行實際的連鎖討論時主要也都會用這兩種。
文末介紹鶴龜連鎖，他是段差式的一種特例。

## 段差式

段差式連鎖，指的是以下的連鎖形式：氣泡消除後，產生段差，藉由段差使得氣泡湊在一起而觸發連鎖，

{% figure %}
![段差式](https://i.imgur.com/kT4eths.jpg) 
{% caption %}
段差式連鎖例子。這七個例子，都是紅色→藍色的兩連鎖。
{% endfigure %}

段差式連鎖是個廣泛的概念，而他在定型排法的特化就是「[階梯]({{ "wiki/B_chain/b_standard_patterns/i_stairs" | relative_url }})」。

## 插入式

插入式連鎖，指的是以下的連鎖形式：氣泡一開始將其他氣泡夾住，氣泡消除後，上下的氣泡湊在一起觸發連鎖，

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

同樣地，插入式連鎖亦是個廣泛概念，他在定型排法的特化是「[鑰匙]({{ "wiki/B_chain/b_standard_patterns/ii_sandwich" | relative_url }})」。

## 幽靈連鎖

魔法氣泡的場地，可見的部分是6行 x 12列，但其實有第13列存在。[第13列]({{ "wiki/E_field_and_operation/b_13and14row" | relative_url }})是不可看見的，但仍然可以往第13列擺上氣泡；另一方面，擺在第13列的氣泡即使有同色四顆也不會消除。
在下圖中，藍色有四顆相連，但第四顆在第13列，因此不會消除，必須等紅色消掉後，四顆藍色掉下來才會消除，因此形成「紅→藍」的二連鎖。像這樣的連鎖便稱為「幽靈連鎖」。

{% figure %}
![幽靈](https://i.imgur.com/UN10xCF.jpg)
{% endfigure %}

## 段差式的特例：鶴龜連鎖

若次序上相鄰的兩連鎖之間，彼此的氣泡並不相鄰，則稱為鶴龜連鎖。鶴龜連鎖例子：

{% figure %}
![鶴龜例子](https://i.imgur.com/F8kKvLI.jpg)
{% caption %}
鶴龜連鎖例子。上面三張圖中，運用鶴龜連鎖的地方分別為1. 紅→藍；2. 綠→綠；3. 紅→紅。
{% endfigure %}

[^1]: [連鎖の仕組](http://alg-d.com/game/puyo/chain12.html)
