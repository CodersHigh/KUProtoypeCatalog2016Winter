#Fridge Manager

## Persona


 * 프랜차이즈 레스토랑 겸 까페 '맛조아'를 운영하고 있는 점장 김맛굳씨는 본사에서 내려오는 식료품들이 관리가 안 되어서 걱정이 많다. 음식을 판매하는 업종이니만큼 가장 중요한 건 음식의 관리이다. 이는 수량관리 뿐만 아니라 신선도 관리도 포함한다. 김맛굳씨 가게의 주 메뉴인 샌드위치는 빵,양상추,토마토,마요네즈,참치를 재료로 해서 만든다. 샌드위치의 1일 판매수량은 100개이다. 

  
## Mental Model
* 업소용 냉장고는 다소 복잡한 메커니즘을 가지고 있다.
크게 3가지 단계로 식자재 관리는 이루어진다. **발주, 보관, 조리후 재고관리** 이다.  이 세가지 단계가 독립적인 것이 아니라 순환적으로 이루어진다. 첫번째 단계를 보자면, **발주**는 *해당일의 예상주문량*을 기초로 해서 만들어진다. 발주 후 보관 전에 물품의 상태를 체크해야 하는데, *이 때 하자가 있는 물건이 있다면 예상입고량보다 차이가 날 수 있다. 이 차이는 반드시 기입해야한다.* (->그냥 뺄까 생각중) 그 다음, **입고된 물품+재고 에서 사용**을하게 되는데, 이 때 *사용량은 예상 사용량(판매량에 기초한)보다 차이* (->그냥 뺄까 생각 중)가 날 수 있다. 이 또한 기입해야 한다. 차이가 많이 난다는 것은 레시피를 준수하지 않았다는 것을 뜻한다. 사용량에 기초해서 재고량이 남게 되는데, 이 재고량은 예상 유통기한과 발주기간에 영향을 받는다. 예를 들면 양상추의 예상유통기한이 하루인데 다음 발주일이 이틀 남았다면, 이는 폐기해야 한다. (유통기한>=발주기간)
*재고량과 발주기간을 생각해서* **발주량** *에도 영향*을 주어야 한다. 이 때 선입선출의 원칙까지 지켜야 한다. 
이를 위해선 **각 품목마다 입고날짜,수량,유통기한,발주기간**이 명시되어야 할 것이다. 또한 유통기한이 얼마 남지 않았는데 현재의 추세로 보면 유통기한 내에 소비가 안 될 확률이 많은 식자재같은 경우 경고를 보내주는 기능이 있으면 좋겠다. 그리고 발주기간이 되면 발주된 물품의 수량을 적어달라는 것까지!
 
 * 입고날짜 전날에 입고수량을 적어달라는 알림메세지 기능
 * 하나의 재료 카테고리 안에 입고날짜별 수량
 * 유통기한이 다하면 알림
 * 전날에 다음날 예상 판매수량을 넣고 입고 예정 


                                                                                                                                                                                                                                                                                                                                                                        


  * Task 재료 이름,유통기한,메모 기록(시리 사용). 냉장고 위치에 따른 목록 보여주기. 
  * Object  냉장고 품목 목록 (위치에 따른), 재료 추가, 유통기한 알림