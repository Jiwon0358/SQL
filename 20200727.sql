모델링 단계
1. 개념 모델링(논리모델링을 간소화한 개념) - 논리 모델링 - 물리 모델링
exerd 툴 : 논리-물리 1-1 매핑만 지원을 하는 툴(개발자 한테는 편함)
        논리 모델이 끝나면 속성에 영문명(컬럼명), 데이터 타입 정도만
        작성을 해주면 물리 모델링에서 추가적으로 할 부분은 없다.
DA# 툴 : 논리- 물리 1-1 매핑이 된다는 보장이 없음(개발자 보다는 전문 모델러에게 특화된 툴)
        엔터티 하나가 여러개의 테이블로 생서잉 될 수도 있음


논리 모델링 단계
1. 요구사항 수집/분석(인터뷰, 기존 시스템, 장표, 워크샵(모여가지고 회의))
2. 명사 ==> 엔터티
3. 명사 ==> 속성
                    3-1 식별자 속성 : ex) 사원 엔터티의 사원번호, 학생 엔터티의 학번 등
                    3-2 일반 속성 : ex)사원 엔터티의 이름, 입사일자 등
4. 관계, 엔터티와 엔터티, 혹인 엔터티 혼자와의 관계
    ==> 제약조건
    
    emp, dept에서 관계를 맺지 않아도 상관은 없음
    그러나 deptno 관계를 맺을 경우 : 비지니스 로직 제약 시항이 생성됨
                                emp테이블의 데이터는 반드시 dept 테이블에 존재하는 부서번호만 등록 될 수 있다.
    관계를 보게 되면 비지니스 로직 파악이 어느정도 가능(90%~)
5. 정규화 : 데이터의 중복을 최소화하고, 삭제, 수정, 입력시 상태 이상을 발생시키지 않는 상태



두가지의 명확한 구분은 없다.
본질 식별자 : 언제 누가 무엇을
인조 식별자 : 가짜 식별자

=========================================================
Key entity type 중요(PT)

속성 : entity Type에 속하며 의미상으로 더이상 분리되지 않는 데이터 표현의 최소단위
속성의 구성 :
            
까마귀발이 뜻하는의 다대다는 안됨

식별과 비식별의 차이 : 부모의 키가 자식 엔터티에게 상속되어 식별속성(컬럼)으로 사용 -> 식별
                                                    일반속성로(컬럼) 사용 -> 비식별
1:1 (수직분할) 물리모델에서 관여

=====================================================
정규화
함수의 종속성
3정규화 :emp테이블에 왜 부서명을 넣지 않았을까? 부서명을 넣으면 부서명이 바뀌면 하나하나 바꿔줘야해서 부서를 대표하는 부서번호를 넣는다

======================================================


