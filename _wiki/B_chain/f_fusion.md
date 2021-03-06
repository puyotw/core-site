---
layout: post
title: 合體
tags: ['連鎖', '副砲', '合體']
---

合體（合体、fusion）是一種構築連鎖的進階技巧，他的意思是將副砲與既有的主砲結合，成為更大的主砲。

直覺地說，追加連鎖一般有兩種方向：從主砲的前端追加（例如折返），或是從主砲的尾端追加（例如連鎖尾），而「合體」則提供了另一種新的方向，那就是先在與主砲前端不相連的地方構築連鎖（副砲），之後再想辦法跟主砲結合。

合體的概念拓展了延伸主砲連鎖的可能性，合體如果用得好，構築連鎖的速度會快上很多。另一方面，合體的困難之處在於，需先在腦中勾勒連鎖的完成型，因此需先對形狀需有夠高的熟悉度才能掌握合體技巧。

## 合體例1

下圖是個左折的[GTR]({% link _wiki/B_chain/c_irregular_form/i_gtr.md %})，黃色是主砲的引爆點，

{% figure %}
{% puyosim mode:0 %}
                 
||             ||
||             ||
||             ||
||             ||
||             ||
||             ||
||             ||
|| B Y         ||
|| Y Y   R     ||
|| B R G Y R R ||
|| B B R G Y Y ||
|| R R G G Y R ||
++=============++
{% endpuyosim %}
{% endfigure %}

在這個例子中，二樓的右側並未與主砲前端相連，可先在此處構築副砲，例如，下圖在二樓右側也蓋了個GTR，這個GTR是個二連鎖的副砲，同時也是二樓往三樓的折返部分。

{% figure %}
{% puyosim mode:0 %}
                 
||             ||
||             ||
||             ||
||             ||
||             ||
||             ||
||         Y G ||
|| B Y   Y G G ||
|| Y Y   R Y Y ||
|| B R G B R R ||
|| B B R G B B ||
|| R R G G B R ||
++=============++
{% endpuyosim %}
{% endfigure %}

做完之後可再將這個副砲與主砲連接，如下圖，連接完的主砲是九連鎖。

{% figure %}
{% puyosim mode:0 %}
                 
||             ||
||             ||
||             ||
||             ||
||             ||
||       B     ||
||     Y B Y G ||
|| B Y B Y G G ||
|| Y Y B R Y Y ||
|| B R G B R R ||
|| B B R G B B ||
|| R R G G B R ||
++=============++
{% endpuyosim %}
{% endfigure %}

## 合體例2

在這個例子中，我們把上面合體例1的顏色修改一下，將一樓的四顆綠色改成黃色：

{% figure %}
{% puyosim mode:0 %}
                 
||             ||
||             ||
||             ||
||             ||
||             ||
||             ||
||             ||
|| B Y         ||
|| Y Y   R     ||
|| B R Y B R R ||
|| B B R Y B B ||
|| R R Y Y B R ||
++=============++
{% endpuyosim %}
{% endfigure %}

這麼做的話，合體例1的合體方式就不管用了，因為這樣黃色在二樓途中就會同消！

{% figure %}
{% puyosim mode:0 %}

||             ||
||             ||
||             ||
||             ||
||             ||
||       B     ||
||     Y B Y G ||
|| B Y B Y G G ||
|| Y Y B R Y Y ||
|| B R Y B R R ||
|| B B R Y B B ||
|| R R Y Y B R ||
++=============++
{% endpuyosim %}
{% endfigure %}

這顯示了，副砲做完之後、想要跟主砲合體的過程中，可能會有顏色衝突的現象，這在構築副砲的當下可能沒有預想到，因此需要在合體過程額外花心思處理。這個例子的顏色衝突算是比較簡單的，只要在黃色上面墊一顆別的顏色即可：

{% figure %}
{% puyosim mode:0 %}

||             ||
||             ||
||             ||
||             ||
||             ||
||     Y B     ||
||     R B Y G ||
|| B Y B Y G G ||
|| Y Y B R Y Y ||
|| B R G B R R ||
|| B B R G B B ||
|| R R G G B R ||
++=============++
{% endpuyosim %}
{% endfigure %}

另外，如果在副砲構築之前就預想到C行不能擺黃色的話，也可以考慮別的合體方式。例如下圖，將整個二樓的連鎖稍微加高，能看到二樓右側有個藍→綠的兩連鎖:

{% figure %}
{% puyosim mode:0 %}

||             ||
||             ||
||             ||
||             ||
||             ||
||       G     ||
||     G B B B ||
|| B Y R G G Y ||
|| Y Y R R G R ||
|| B R G B R R ||
|| B B R G B B ||
|| R R G G B R ||
++=============++
{% endpuyosim %}
{% endfigure %}

這樣做的好處是，讓二樓左邊的黃色是在B行被接上，而非C行，可以避免同消：

{% figure %}
{% puyosim mode:0 %}

||             ||
||             ||
||             ||
||             ||
||             ||
||   Y R G     ||
||   R G B B B ||
|| B Y R G G Y ||
|| Y Y R R G R ||
|| B R G B R R ||
|| B B R G B B ||
|| R R G G B R ||
++=============++
{% endpuyosim %}
{% endfigure %}

## 合體例3

在這個例子中，[鑰匙排法]({% link _wiki/B_chain/b_regular_form/ii_sandwich.md %})的一樓已經做好，需要適當的顏色來排好折返。

{% figure %}
{% puyosim mode:0 %}
                 
||             ||
||             ||
||             ||
||             ||
||             ||
||             ||
||             ||
|| B R         ||
|| B G R B Y   ||
|| B R R B G   ||
|| G G B Y Y G ||
|| B G R B Y G ||
++=============++
{% endpuyosim %}
{% endfigure %}

然而，由於折返的顏色需求較高，接下來的氣泡不一定能馬上拿來做折返，此時可以先拿來做二樓，之後再跟一樓合體（在這個狀況，也就是完成折返）。例如，接下來的氣泡有較多的綠色，當然不能排折返，因此先在二樓做副砲，另一方面，之後有綠色以外的兩顆同色氣泡的話，可以放在F行，當作折返的一部份：

{% figure %}
{% puyosim mode:0 %}
                 
||             ||
||             ||
||             ||
||             ||
||             ||
||   B         ||
|| R R     Y   ||
|| B R G   R   ||
|| B G R B Y B ||
|| B R R B G B ||
|| G G B Y Y G ||
|| B G R B Y G ||
++=============++
{% endpuyosim %}
{% endfigure %}

乍看之下，二樓的形狀似乎雜亂無章，但其實能將二樓補成完整的鑰匙排法！下圖便是完成後的地形，從二樓左側的藍色發火主砲。

{% figure %}
{% puyosim mode:0 %}
                 
||             ||
||             ||
||             ||
||             ||
|| B R G Y R G ||
|| B B R G R B ||
|| R R G Y Y R ||
|| B R G Y R B ||
|| B G R B Y B ||
|| B R R B G B ||
|| G G B Y Y G ||
|| B G R B Y G ||
++=============++
{% endpuyosim %}
{% endfigure %}

上圖的鑰匙形狀非常標準，如果讀者第一次看，可能很難從上上圖擺放的幾顆氣泡聯想到上圖的完成型。也因此，合體確實並不容易，要能夠順利地進行合體，腦中需要先勾勒出連鎖完成的形狀。

關於合體，還有另一件事情需要注意，那就是合體的路徑不只一種，不需要拘泥於其中一種合體路徑，而要依當下的狀況變化。如果我們再回到上上圖仔細觀察會發現，假如最後目標已經確定是在二樓也排鑰匙，那顏色的選擇其實很有限：B行一定是缺紅色跟綠色、C行一定缺綠色跟黃色、D行則一定是黃色跟紅色......等等，而問題是，之後幾手的顏色組合不一定保證能排出如此標準的鑰匙。當玩家先在腦中勾勒出合體的完成型時，這個形狀也需要因應接下來的氣泡而被重新計算才行。

下面是一些其他可能的連鎖完成形狀：

{% figure %}
{% puyosim mode:0 %}
                 
||             ||
||             ||
||             ||
||           G ||
|| B R Y G R B ||
|| B B R Y G R ||
|| R R Y Y G R ||
|| B R G G R B ||
|| B G R B Y B ||
|| B R R B G B ||
|| G G B Y Y G ||
|| B G R B Y G ||
++=============++
{% endpuyosim %}
{% puyosim mode:0 %}
                 
||             ||
||           G ||
||           B ||
||         B R ||
|| B R G B R Y ||
|| B B R B Y Y ||
|| R R G R B B ||
|| B R G G R Y ||
|| B G R B Y B ||
|| B R R B G B ||
|| G G B Y Y G ||
|| B G R B Y G ||
++=============++
{% endpuyosim %}
{% puyosim mode:0 %}
                 
||             ||
||             ||
||           G ||
||         G B ||
|| B R Y   R B ||
|| B B R Y Y R ||
|| R R Y R R G ||
|| B R G G R G ||
|| B G R B Y B ||
|| B R R B G B ||
|| G G B Y Y G ||
|| B G R B Y G ||
++=============++
{% endpuyosim %}
{% endfigure %}
