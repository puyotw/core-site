---
layout: post
title: 無延遲攻擊
tags: ['規則相關', '障礙氣泡']
---

無延遲攻擊（原文：クイック[^1]）是指，最後一連鎖消除的氣泡上面沒有其他氣泡時，能降低硬直時間的現象。

## 說明

在魔法氣泡的對戰中，一個基本的規則是，其中一方施放連鎖時會送給對方障礙氣泡。在整個施放連鎖的過程，攻擊方無法做出任何操作（也就是，這是段「硬直時間」），而且連鎖送給對手的障礙氣泡也不會落下，直到**連鎖施放完畢**，送給對手的障礙氣泡才會生效。

而所謂的連鎖施放完畢，更精確地說，是指**最後一連鎖的氣泡消除後，上面的氣泡落地並且固定**。直到氣泡完全固定後，給對手的攻擊才會生效。

例如，下面將紅紅放在D行後是個二連雙消，不過第二連鎖的藍黃消除並不是連鎖結束的時間點！必須等待上面的綠色掉至地面、固定後才算是連鎖結束。

{% figure %}
{% puyosim mode:0 %}
                 
||             ||
||             ||
||             ||
||             ||
||       R     ||
||       R     ||
||           G ||
||         B Y ||
||         R R ||
||       R B Y ||
||       R B Y ||
||       R B Y ||
++=============++
{% endpuyosim %}
{% endfigure %}

因此在這個狀況，如果藍色跟黃色上面沒有那顆綠色，能更快地結束連鎖，這就稱為無延遲攻擊。

平常的攻擊大約比無延遲攻擊慢了半秒左右。更精確地說，如果最後一連鎖消除的氣泡，他上面的氣泡在第一列，等待他落下並固定會多出 $$25$$ 幀；每往上一列會再增加 $$2$$ 幀，所以在上圖的情況，由於綠色要往下掉五列，總共會增加 $$33$$ 幀（一秒為 $$60$$ 幀）[^2]。

[^1]: [ぷよぷよ用語辞典 クイック](https://www26.atwiki.jp/puyowords/pages/314.html).
[^2]: [【ぷよスポ】各動作にかかる時間](https://puyo-camp.jp/posts/71019).
