# MATLAB_pendulum
[Project_Pendulum](Project_Pendulum.m)을 돌리면 보고서에 사용한 Figure들이 나옵니다.

전체적인 코드의 특징은 실제 단위에 맞춰 진행하였기 때문에, 시뮬레이션에서 움직이는 시간과 실제 시간이 같습니다.
- - -
메인으로 사용할 수 있는 함수는 크게 4종류 입니다.
- [doublePend](doublePend.m) : 이중진자의 움직임과 모형을 알려줍니다.

사용방법은 doublePend(m1, m2, l1, l2, theta1, theta2, g)로 단위는 kg, m, rad, m/s^2입니다


실행한다면

![img](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/2076070a-a8d0-471f-9b78-98275ab8b792/Dp_1.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20221113%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20221113T082759Z&X-Amz-Expires=86400&X-Amz-Signature=0e9667e791b15ae21e621601a7bc0b3d08f47e0d84045ea36b5ad43603f9483c&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D"Dp_1.png"&x-id=GetObject)


![img](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/18985d85-522c-4c2f-804e-5d3e63bf929a/Dp_2.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20221113%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20221113T083649Z&X-Amz-Expires=86400&X-Amz-Signature=1ca93ff4f0aad990eac024733523eb227982c1dacb176d3b5d5dc12592c7ee19&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D"Dp_2.png"&x-id=GetObject)

이렇게 두개의 사진이 나오게 됩니다. (바로 위의 사진은 원래 애니메이션으로 직접 진자가 운동하는걸 보여준뒤 마지막으로 경로릎 표현하는 것입니다. 아래에 있는 사진이 중간에 움직일때의 모습입니다.)

![img](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/86ca26f8-43c7-4588-9152-069a784c7e84/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20221113%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20221113T084628Z&X-Amz-Expires=86400&X-Amz-Signature=7e57391e9446bc9ab313e68d1656e2187a3322c6a0c93a2cf369dd6732c60688&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D"Untitled.png"&x-id=GetObject)

- [pendExact](pendExact.m) : 단진자에서 근사하지 않고 정확하게 구한 값을 시뮬레이션 합니다.

사용방법은 pendExact(theta_0, l, g, n) 입니다. n은 시뮬레이션 할때 몇번 주기를 반복할지에 대한 숫자입니다.

- [pendNotExact](pendNotExact.m) : 단진자에서 근사한값을 시뮬레이션 합니다.

사용방법은 pendNotExact(theta_0, l, g, n) 입니다. 

pendExact와 pendNotExact 모두 시뮬레이션을 한 뒤, 한 주기동안 어떻게 지나갔는지에 대해 알려줍니다. 각각의 점 사이 간격은 0.015초로, 0.015초인 이유는 딱히 없습니다.

시간간격이 같기 때문에 그래프에서 점의 밀도를 통해 속도를 비교할 수 있습니다. 단 그래프에서 y축의 크기를 잘 봐주시길 바랍니다.

예시 사진입니다. 첫번째는 시뮬레이션 중간에 캡쳐한 것이고, 두번째는 끝날때 한 주기에 운동을 보여주는 것을 캡쳐하였습니다. (같은 Figure에서 나옵니다)

![img](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/2806bbeb-ee47-485b-a6c4-0ba44c83206c/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20221113%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20221113T085154Z&X-Amz-Expires=86400&X-Amz-Signature=677c5a0f62c16e77c77dd7793cd2fc2b222c50e0317ffcf2c419ea8bbfe721af&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D"Untitled.png"&x-id=GetObject)

![img](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/5867e0cf-382f-438b-b71e-46317c63e820/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20221113%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20221113T085329Z&X-Amz-Expires=86400&X-Amz-Signature=0a3d4029e566580ad5fd6da39c0ced53d3d76a473eaa1f36acf0121ee15c1aac&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D"Untitled.png"&x-id=GetObject)

- [singleCompare](singleCompare.m) : 단진자에서 근사값과, 근사하지 않고 정확하게 구한 값에 대해 비교합니다.

먼저 근사했을때, 안 근사했을때의 운동을 보여 준 후, 두개가 동시에 움직이는 운동과,시간-각도에 대해서 그래프를 각각 그려줍니다.

사용방법은 singleCompare(theta_0, l, g, n)입니다. 

근사와 정확한 운동은 각각 pendExact와 pendNotExact 함수를 호출하여 사용합니다. 그 다음에는 운동을 합쳐서 보여줍니다. 마지막으로는 각도가 어떻게 움직였는지에 대한 그래프를 제공합니다.

예시 사진입니다.


![img](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/3789ba3d-6a58-479a-b825-423a8da70383/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20221113%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20221113T085739Z&X-Amz-Expires=86400&X-Amz-Signature=86f939fca73774fd4264e676f8374ad04ba9470fc9f2613b07d00334635d1edd&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D"Untitled.png"&x-id=GetObject)

![img](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/2f7e5ebb-eeea-4391-94b2-46a58490a8a3/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20221113%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20221113T085742Z&X-Amz-Expires=86400&X-Amz-Signature=f9d9922d4dc406e8d4cdf5f56b8537846763714c2eeba5de55615d95087834a2&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D"Untitled.png"&x-id=GetObject)

- - -
내장함수는 

