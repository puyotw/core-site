[![Build Status](https://travis-ci.org/puyotw/core-site.svg?branch=master)](https://travis-ci.org/puyotw/core-site)

# 魔法氣泡中文百科

歡迎蒞臨魔法氣泡中文百科的repository！這裡有生成主站的源碼。任何對於主站的修改，都要通過修改本repo源碼實現的。本README文件將闡述修改源碼及測試的方法，請根據你的身分跳至適用的部分。

# 編者／譯者：需要修改、新增頁面或內容的使用者

首先謝謝你的幫忙！而且，辛苦你了！因為我們有這樣的開發環境，難免會對你貢獻造成一些不便。作為開發者，我們也對流程和品質有一定堅持，所以敬請見諒！

## 什麼是Git？什麼是GitHub？

非開發者的用戶相信很少機會接觸Git和GitHub。本部分會簡單介紹Git和GitHub，以及它們在本專案的作用，和你在使用上的須知。

Git是一個版本控制的系統。版本控制的目的在於讓你修改文件的同時，不會流失以往的版本。在這種多人合作的專案裡，它還能用於追查誰對甚麼內容作出過甚麼修改，以得知誰對某個領域比較熟悉。Git是現在比較主流的版本控制系統，但其實還有其他相似的系統例如SVN。

GitHub則是提供免費存放開源Git repository的服務。它除了存放Git以外，還包含很多利於團隊合作的功能，例如創立團隊、權限控制、審批改動等等。最重要的是，一般要使用Git，就要下載一個Git客戶端；有一些更需要熟練的終端機操作；但GitHub使許多這些操作可以在它的網站上直接完成而毋須通過客戶端。這將會方便許多不會使用Git的編者譯者喔！

## 什麼是Markdown？

一般網頁開發者必須學會HTML，而且各種文字效果（**粗體**、*斜體*等）更可能需要CSS才可實現。Markdown是一種易懂易寫的語法，讓你能輕鬆加上文字效果。所有本站的頁面均須使用Markdown撰寫。本站支持的Markdown一覽表可以前往[Markdown Style Guide][md-guide]及其[源碼][md-guide-source]查詢。

[md-guide]: https://www.jekyllnow.com/Markdown-Style-Guide/
[md-guide-source]: https://raw.githubusercontent.com/barryclark/www.jekyllnow.com/gh-pages/_posts/2014-6-19-Markdown-Style-Guide.md

## 什麼是Pull Request？

我們希望每篇文章的內容和語法的品質都很高，所以內容可以登上主站之前，須先通過審批。審批的方法是使用GitHub的Pull Request功能：編者或譯者有一些本地的修改，想要刊登上主站，那麼就要向主站團隊提交一個Pull Request。主站團隊審批過後，會替編者譯者將內容合併到主站的代碼，此時新修改的內容就能登上主站了。

## 撰寫流程

1. 首先，每位編者或譯者都要先[註冊一個GitHub帳號](github-register)，及後通知kar8uncle或crs38c28把你加入團隊和創建專屬分枝。
2. 當你的專屬分枝創建完成後，回到本repo頁面，搜尋「Branch」字眼，裡面可看到master，及以你帳號名命名的分枝。點擊你的分枝後，你可看到和master分枝一樣的檔案和資料夾結構。
3. 進入`_wiki`資料夾，裡面裝有所有wiki的頁面。
   * 要新增頁面，先點選右上的「Create new file」。頁面的路徑將是網址的路徑。
   * 要修改頁面，先找出要修改的頁面md檔，然後在右邊點選鉛筆圖示開始編輯。
4. 在中間編輯區域可隨意更改頁面內容。可以點擊上方路徑下的「Preview changes」預覽頁面效果，但注意GitHub上的Markdown跟本站使用的Markdown不同，所以GitHub上的預覽會跟最終結果有差異，不能完全作準。
5. 修改完畢後，到下方「Commit changes」，輸入一行commit標題，並在下方的文字區塊簡介是次更改的大綱。大概風格可參考repo裡[其他commit][core-site-commits]。最後選擇「Commit directly to the 〈你的專屬分枝名稱〉 branch」，再點擊「Commit changes」。
6. 點擊上方的「Code」分頁，然後點擊「New pull request」按鈕。點擊中間的「Create pull request」後，酌情輸入Pull Request的標題和內容（如電郵的標題和內容）。在右邊「Reviewers」一項下，選擇「puyotw/content-quality-assurance」和「puyotw/core-dev」。最後點擊「Create pull request」，即完成提交Pull Request。
7. 由團隊以這種方式提交的Pull Request，都能觸發預覽站點生成。若生成成功，機器人將會把預覽站點的網址留言到Pull Request裡，方便偵錯和檢查排版。在Pull Request頁面上，團隊也會不時給予迴響，或要求更改。屆時可以回到你的專屬分枝，重覆步驟3至5。Commit過後，Pull Request會自動更新。若團隊對內容滿意，便會代為合併到master分枝，刊登上主站。

[github-register]: https://github.com/join
[core-site-commits]: https://github.com/puyotw/core-site/commits/master

# 開發團隊：需要修改Jekyll插件、主題、模版等代碼

TODO

