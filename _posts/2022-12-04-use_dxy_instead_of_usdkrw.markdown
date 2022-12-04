---
# multilingual page pair id, this must pair with translations of this page. (This name must be unique)
lng_pair: id_Examples
title: 코인거래소 달러 인덱스 선물로 달러 헷징하기 

# post specific
# if not specified, .name will be used from _data/owner/[language].yml
author: bbchip13
# multiple category is not supported
category: 재테크
# multiple tag entries are possible
tags: [
    재테크, 코인, 달러환율, 달러인덱스, 헷징, 
    DXY, USD/KRW, hedge
]
# thumbnail image for post
img: ":post_pic1.jpg"
# disable comments on this page
#comments_disable: true

# publish date
date: 2022-12-04 17:02:00 +0900

# if not specified, date will be used.
#meta_modify_date: 2022-02-10 08:11:06 +0900
# check the meta_common_description in _data/owner/[language].yml
#meta_description: ""

# optional
# if you enabled image_viewer_posts you don't need to enable this. This is only if image_viewer_posts = false
#image_viewer_on: true
# if you enabled image_lazy_loader_posts you don't need to enable this. This is only if image_lazy_loader_posts = false
#image_lazy_loader_on: true
# exclude from on site search
#on_site_search_exclude: true
# exclude from search engines
#search_engine_exclude: true
# to disable this page, simply set published: false or delete this file
#published: false
---

### 들어가며

작년 10월인가? 달러 환율이 1165원 하던 시절, 그 때부터 여윳돈을 전부 달러화 시켰던 것 같다. 

거시경제 상 오를만 하기도 했고, 당시 난 아비트리지나 디파이가 메인 투자 방법이었기 때문에 usdt로 보유하고 있는게 가장 좋았기 때문이다.

그래도 나름의 관점은 있었기 때문에, 언젠가는 달러도 헷징을 해야겠다... 하고는 있었는데, 이렇게 급격하게 환율이 떨어질 줄은 몰랐다;;

<br>

부랴부랴 환율 헷징을 알아봤지만 다양한 단점이 있었다.

1. 최소 거래 단위가 천만원부터

2. 레버리지 불가. (레버리지 ETF상품은 고유한 단점 때문에 일부러 사용하지 않았다)

3. 거래 시간이 정해져 있음

4. 무슨 교육을 들어야 함.

천 만원 달러를 헷징하기 위해서는 증권사에 천 만원이 묶인다는 것인데, 나는 헷징을 선호하는 편이지만 돈이 묶이는 것은 싫다.

그리고 환율이 아무리 요즘 변동이 크다고 하나, 레버리지 10배 걸고 하루종일 안 봐도 청산당할 걱정이 안 되는 변동성이거늘... 1:1로 돈이 묶이는 것은 너무 리스크가 크다.

<br>

혹시라도 코인 거래소에서 USD/KRW 헷징이 가능할까 해서 찾아봤지만 어림도 없었고.

당시에 마침 FTX 거래소에서 달러 인덱스 선물을 상장했다.

![](../assets/img/posts/2022-12-04-use_dxy_instead_of_usdkrw/2022-12-04-22-35-54-image.png)

[지금은 사라진 그 곳... 현재는 극소수 거래소만 달러 인덱스 선물을 운영하는 것으로 알고 있다.]

자산들 중 달러의 위상을 알 수 있는 지표라고만 알고 있었지, 정확히 어떤 수치인지는 모르고 있어서 겸사겸사 수식을 찾아 봤었는데...

![](../assets/img/posts/2022-12-04-use_dxy_instead_of_usdkrw/2022-12-04-22-40-39-image.png)

각 국가 별 환율의 조합으로 이루어져 있었다. (아쉽게도 한국은 없었지만)

<br>

혹시 싶어서 차트를 비교 해 봤을 때도 놀라움을 감출 수 없었는데.

![](../assets/img/posts/2022-12-04-use_dxy_instead_of_usdkrw/2022-12-04-22-46-22-image.png)

[좌: 달러 환율, 우: 달러 인덱스]

2020년 초 코로나 쇼크 이후로부터 거의 동일한 움직임을 보여주고 있었다.

이 쯤에서부터 머릿속에서 유레카카 외쳐지고 있었는데, 코인 거래소에서 달러 선물을 할 수 있다면 장점은 너무나도 명확했기 때문이다.

1. 보통 최소 거래 단위가 10달러부터

2. 레버리지 자유롭게 20배~100배까지도 가능

3. 24시간 거래 가능

4. 교육 그런거 필요없고 바로 사용 가능

5. 자금이 usdt로 통일되어있기 때문에 여차하면 자급 확보줄로도 바로 사용 가능

이 때부터 달러 인덱스 선물을 달러 환율 대신 사용하는 방법을 찾았던 것 같다.

<br>

### 연구 결과

실제 데이터를 가지고 간단한 데이터 분석을 해봤는데 해당 내용은 아래 포스팅에서 확인할 수 있다.

[Python으로 달러 환율과 달러 인덱스 데이터 다루기](https://bbchip0103.github.io/posts/2022-12-02-usdkrw_dxy_coding)

<br>

일반적으로 A가 B의 헷징 자산이 될 수 있는 지 확인하는 방법은 correlation 때려보면 된다.

<img title="" src="../assets/img/posts/2022-12-04-use_dxy_instead_of_usdkrw/2022-12-05-01-58-47-image.png" alt="" width="340">  <img title="" src="../assets/img/posts/2022-12-02-usdkrw_dxy_coding/2022-12-02-22-09-53-image.png" alt="" width="150">

결과는 0.972로, 매우 강한 양의 상관관계가 나왔다. (이 정도면 그냥 같은 데이터 쓴거 아닌가 싶은 수준)

> 이로서 달러 인덱스 선물을 반대 방향의 포지션으로 잡는다면, 달러 선물의 헷징자산으로서 사용될 수 있다는 것을 확인할 수 있었다. 

<br>

하지만 이걸로는 부족하다.

그냥 가능성만 확인하면 뭐하나. 정확히 어떻게 쓰는 지를 알아야지.

같은 금액만큼 포지션을 잡는다고 해도 움직이는 비율까지 같지는 않기 때문에, 계산을 통해 이를 찾고자 했다.

이를 위해 percentage 대역으로 변환한 지표를 변환하고, linear regression을 시행하였고.

![](../assets/img/posts/2022-12-02-usdkrw_dxy_coding/2022-12-03-04-02-47-image.png)

regression의 계수 <u>1.1062</u>를 곱하니 어느 정도 달러 환율에 페깅되는 것을 확인할 수 있었다.

따라서 결론은 다음과 같다.

> 달러 인덱스 선물을 10% 더 많이 사면 달러 선물처럼 사용할 수 있다.

<br>

### 마치며

![](../assets/img/posts/2022-12-04-use_dxy_instead_of_usdkrw/2022-12-05-02-55-40-image.png)

[BingX 거래소의 달러 인덱스 선물. 기존 지표 수치에 100이 곱해져있다.]

포스팅을 쓰는 지금 시점에 FTX는 파산하였고 달러인덱스 선물은 BingX 거래소에서 거래할 수 있다.

FTX에 달러인덱스가 상장되던 시점이 딱 고점이라 걸어놓은 것을 유지해놨으면 참 좋았는데 아쉽다.

나는 염원했던 대로 5~10배 레버리지로 달러 헷징을 걸어놨고, 이런저런 장점에 매우 만족하면서 사용하고 있다.

python에, 각종 통계 도구에, 수학 지식까지 뭐가 이렇게 복잡하나 싶을 수 있지만, 사실 이는 다른 분야에도 충분히 적용 가능하다.

크립토커런시는 타 금융권의 수치와 지표에 영향을 많이 받는다는 것은 모두가 알고 있는 사실이다. (나스닥, 기준금리 등)

이를 바탕으로, 수학과 공학을 통해 연결고리와 안전장치를 정교하게 만들 수 있다면, 변동성이 큰 크립토 세상에서 매우 큰 무기를 가지게 되는 것이다.

<br>

누군가에게는 이 글이 도움이 되었으면 좋겠다.