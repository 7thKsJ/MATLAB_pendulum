# MATLAB_pendulum
[Project_Pendulum](Project_Pendulum.m)을 돌리면 보고서에 사용한 Figure들이 나옵니다.

- - -
메인으로 사용할 수 있는 함수는 크게 4종류 입니다.
- [doublePend](doublePend.m) : 이중진자의 움직임과 모형을 알려줍니다.

사용방법은 doublePend(m1, m2, l1, l2, theta1, theta2, g)로 단위는 kg, m, rad, m/s^2입니다


실행한다면

![img](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/2076070a-a8d0-471f-9b78-98275ab8b792/Dp_1.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20221113%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20221113T082759Z&X-Amz-Expires=86400&X-Amz-Signature=0e9667e791b15ae21e621601a7bc0b3d08f47e0d84045ea36b5ad43603f9483c&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D"Dp_1.png"&x-id=GetObject)


![img](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/18985d85-522c-4c2f-804e-5d3e63bf929a/Dp_2.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20221113%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20221113T083649Z&X-Amz-Expires=86400&X-Amz-Signature=1ca93ff4f0aad990eac024733523eb227982c1dacb176d3b5d5dc12592c7ee19&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D"Dp_2.png"&x-id=GetObject)

이렇게 두개의 사진이 나오게 됩니다. (밑의 사진은 원래 애니메이션으로 직접 진자가 운동하는걸 보여준뒤 마지막으로 이렇게 보입니다.)

- [singleCompare](singleCompare.m) : 단진자에서 근사값과, 근사하지 않고 정확하게 구한 값에 대해 비교합니다.

먼저 근사했을때, 안근사했을때의 운동을 보여 준 후, 두개가 동시에 움직이는 운동과,시간-각도에 대해서 그래프를 각각 그려줍니다.
