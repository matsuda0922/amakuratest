
*start
*title
;メッセージレイヤを非表示にしておく
@layopt layer=message0 visible=false

;背景画像を設定
[image layer="base" page="fore" storage=backkari.png]

[locate x=200 y=400 ]
[button graphic="karistart.png" target=*first]

[locate x=200 y=550 ]
[button graphic="kariload.png" target=*loadmenu]

[s]

;つづきからボタンが押された場合。ロード画面を表示
*loadmenu
[cm]
[showload]

[jump target=*title]
[s]

;ストーリー最初から
*first
[cm]
[freeimage layer=1]

;背景
 [bg storage=tekitouhaikei1.jpg time=1000]
@layopt layer=message0 visible=true
[position layer=message0  opacity=500 width=865 height=174 top=520 left=210]
[position layer=message0 page=fore frame="rehausuframe.png" margint="50" marginl="80" marginr="70" marginb="60"]
[deffont color="black"]

[ptext name="chara_name_area" layer=message0 width="200" color=black x=310 y=550 size=26]
[chara_config ptext="chara_name_area"]


[cm]
ああ、腹減ったなぁ、弾斗ぉ～……[l][cm]

;弾斗登場
[chara_new name="pikuto" storage="otameshipikuto2.png" jname="弾斗"]
[chara_show name="pikuto"][cm]

#pikuto
お腹空いたよ葉臼～……[l][cm]
#
金もねぇし……飯もねぇし……[l][cm]

[chara_hide name="pikuto"]

[cm]
おい小根島！[l][cm]

;背景
 [bg storage=tekitouhaikei2.jpg time=1000]
 
;焼火登場
[chara_new name="shouhi" storage="otameshishouhi2.png" jname="焼火"]
[chara_show name="shouhi"]

[cm]
#shouhi
今日こそ金返してもらおうか[l][cm]
何日待たせんねん、もう金準備できたやろ[l][cm]
#pikuto
もう俺達お金ないっす！[l][cm]
#
すみません勘弁してください、ないんです！[l][cm]
#shouhi
ほんまに待ってたら準備できんのか？[l][cm]
#pikuto
もうちょっと待ってくれれば！本当です！[l][cm]
#shouhi
…しゃあない、あと3日だけ待ったるわ[l][cm]
#
[link target=*select1]A.わかりました……3日ですね[r]
[link target=*select2]B.5日にしてもらうことってできないですか？[r]
[s]

*select1
[cm]
#shouhi
3日後また来るからな[l][cm]
それまでに用意しとけよ[l]
@jump target=*common

*select2
[cm]
#shouhi
お？今すぐにでもええんやぞ？[l][cm]
もし3日以内に準備できんかったらこの家燃やして家から追い出すからな？[l]
@jump target=*common

*common
[cm]
#
ハイ…！！[l][cm]
#shouhi
じゃあな[l][cm]
[chara_hide name="shouhi"]

[iscript]
location.href="./index.html";
[endscript]