a = load('projects')
a.Gf{1,2};  %useing this line of code to get A B C D
A= [-5.314   0.6335   -4.299    3.535    3.758;0.2942  -0.7154  0.04873    1.569   0.4528;5.396   0.4857    1.511   -4.751   -3.722;2.996   0.1546    2.836   -5.286   -2.977;-13.77  -0.3312     1.09   0.2206    4.976];
B = [-0.311;-0.6939;0.1482;0.1751;-1.597];
C = [-0.01228    0.1094    0.7951    -1.051   -0.9641];
D = 0;
%-----------------------------------part 1 --------------------------------
[b,a] = ss2tf(A,B,C,D); % to calculate the transfer function I'm useing G(s)=inv(sI-A)B+D 
                       %(the same thing will be done using ss2tf function
[z,p] = tf2zpk(b,a)    % using this function i got zeros and poles positions
%-----------------------------------part 3---------------------------------
%----controlable-------
Mc = [B A*B (A^2)*B (A^3)*B (A^4)*B]
rankMc = rank(Mc)
%----Matrix visibility---
Mo = [C;C*A;C*A^2;C*A^3;C*A^4]
rankMo = rank(Mo)
%-----------------------------------part 5---------------------------------
