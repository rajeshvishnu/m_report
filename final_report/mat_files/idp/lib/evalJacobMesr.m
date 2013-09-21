function JH = evalJacobMesr(X,p)
%syms a b d x1 x2 x3 x4
%syms m1 m2 r1 r2 l1 g c1 c2 l2
%A = subs(JF,[x1,x2,x3,x4,a,b,d,m1,m2,r1,r2,l1,g,c1,c2,l2],[X,p]);

%% initialization
%X = (x,u)
x1 = X(1);x2 = X(2);x3 = X(3);x4 = X(4);u = X(5);
%p = [a,b,d,m1,m2,r1,r2,l1,g,c1,c2,l2];
a = p(1); b = p(2); d = p(3);
m1 = p(4); m2 = p(5); 
r1 = p(6); r2 = p(7); l1 = p(8);
g = p(9); c1 = p(10); c2 = p(11); l2=p(12);

%%
J1 = [0 0 1 0];
J2 = [0 0 0 1];
J3 = [0 1 0 1];
%J3 = [                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   -l1*((d/(d*a-b^2*cos(x3)^2-d^2)*((m1*r1+m2*l1)*g*sin(x1)+m2*r2*g*sin(x1+x3))-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*m2*r2*g*sin(x1+x3))*sin(x1)+(d/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4))*cos(x1)-x2^2*sin(x1))-l2*((d/(d*a-b^2*cos(x3)^2-d^2)*((m1*r1+m2*l1)*g*sin(x1)+m2*r2*g*sin(x1+x3))-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*m2*r2*g*sin(x1+x3)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*((m1*r1+m2*l1)*g*sin(x1)+m2*r2*g*sin(x1+x3))+(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)*m2*r2*g*sin(x1+x3))*sin(x1+x3)+(d/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)+(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4))*cos(x1+x3)-(x2+x4)^2*sin(x1+x3)),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          -l1*((d/(d*a-b^2*cos(x3)^2-d^2)*(2*x4*b*sin(x3)-c1)+2*(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*b*sin(x3)*x2)*sin(x1)+2*x2*cos(x1))-l2*((d/(d*a-b^2*cos(x3)^2-d^2)*(2*x4*b*sin(x3)-c1)+2*(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*b*sin(x3)*x2-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(2*x4*b*sin(x3)-c1)-2*(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)*b*sin(x3)*x2)*sin(x1+x3)+2*(x2+x4)*cos(x1+x3)), -l1*(-2*d/(d*a-b^2*cos(x3)^2-d^2)^2*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)*b^2*cos(x3)*sin(x3)+d/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*cos(x3)+m2*r2*g*sin(x1+x3))+b*sin(x3)/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4)+2*(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)^2*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4)*b^2*cos(x3)*sin(x3)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-b*cos(x3)*x2^2+m2*r2*g*sin(x1+x3)))*sin(x1)-l2*((-2*d/(d*a-b^2*cos(x3)^2-d^2)^2*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)*b^2*cos(x3)*sin(x3)+d/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*cos(x3)+m2*r2*g*sin(x1+x3))-b*sin(x3)/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4)+2*(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)^2*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4)*b^2*cos(x3)*sin(x3)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-b*cos(x3)*x2^2+m2*r2*g*sin(x1+x3))+b*sin(x3)/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)+2*(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)^2*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)*b^2*cos(x3)*sin(x3)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*cos(x3)+m2*r2*g*sin(x1+x3))-2*(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)^2*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4)*b^2*cos(x3)*sin(x3)+(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)*(-b*cos(x3)*x2^2+m2*r2*g*sin(x1+x3)))*sin(x1+x3)+(d/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)+(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4))*cos(x1+x3)-(x2+x4)^2*sin(x1+x3)),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  -l1*(-d/(d*a-b^2*cos(x3)^2-d^2)*(-2*x2-2*x4)*b*sin(x3)+(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*c2)*sin(x1)-l2*((-d/(d*a-b^2*cos(x3)^2-d^2)*(-2*x2-2*x4)*b*sin(x3)+(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*c2+(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-2*x2-2*x4)*b*sin(x3)-(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)*c2)*sin(x1+x3)+2*(x2+x4)*cos(x1+x3))];
%J4 = [                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   l1*((d/(d*a-b^2*cos(x3)^2-d^2)*((m1*r1+m2*l1)*g*sin(x1)+m2*r2*g*sin(x1+x3))-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*m2*r2*g*sin(x1+x3))*cos(x1)-(d/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4))*sin(x1)-x2^2*cos(x1))+l2*((d/(d*a-b^2*cos(x3)^2-d^2)*((m1*r1+m2*l1)*g*sin(x1)+m2*r2*g*sin(x1+x3))-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*m2*r2*g*sin(x1+x3)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*((m1*r1+m2*l1)*g*sin(x1)+m2*r2*g*sin(x1+x3))+(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)*m2*r2*g*sin(x1+x3))*cos(x1+x3)-(d/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)+(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4))*sin(x1+x3)-(x2+x4)^2*cos(x1+x3)),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          l1*((d/(d*a-b^2*cos(x3)^2-d^2)*(2*x4*b*sin(x3)-c1)+2*(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*b*sin(x3)*x2)*cos(x1)-2*x2*sin(x1))+l2*((d/(d*a-b^2*cos(x3)^2-d^2)*(2*x4*b*sin(x3)-c1)+2*(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*b*sin(x3)*x2-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(2*x4*b*sin(x3)-c1)-2*(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)*b*sin(x3)*x2)*cos(x1+x3)-2*(x2+x4)*sin(x1+x3)), l1*(-2*d/(d*a-b^2*cos(x3)^2-d^2)^2*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)*b^2*cos(x3)*sin(x3)+d/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*cos(x3)+m2*r2*g*sin(x1+x3))+b*sin(x3)/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4)+2*(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)^2*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4)*b^2*cos(x3)*sin(x3)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-b*cos(x3)*x2^2+m2*r2*g*sin(x1+x3)))*cos(x1)+l2*((-2*d/(d*a-b^2*cos(x3)^2-d^2)^2*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)*b^2*cos(x3)*sin(x3)+d/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*cos(x3)+m2*r2*g*sin(x1+x3))-b*sin(x3)/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4)+2*(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)^2*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4)*b^2*cos(x3)*sin(x3)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-b*cos(x3)*x2^2+m2*r2*g*sin(x1+x3))+b*sin(x3)/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)+2*(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)^2*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)*b^2*cos(x3)*sin(x3)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*cos(x3)+m2*r2*g*sin(x1+x3))-2*(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)^2*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4)*b^2*cos(x3)*sin(x3)+(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)*(-b*cos(x3)*x2^2+m2*r2*g*sin(x1+x3)))*cos(x1+x3)-(d/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)+(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4))*sin(x1+x3)-(x2+x4)^2*cos(x1+x3)),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  l1*(-d/(d*a-b^2*cos(x3)^2-d^2)*(-2*x2-2*x4)*b*sin(x3)+(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*c2)*cos(x1)+l2*((-d/(d*a-b^2*cos(x3)^2-d^2)*(-2*x2-2*x4)*b*sin(x3)+(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*c2+(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-2*x2-2*x4)*b*sin(x3)-(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)*c2)*cos(x1+x3)-2*(x2+x4)*sin(x1+x3))];
J4 = [                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           -l1*((d/(d*a-b^2*cos(x3)^2-d^2)*((m1*r1+m2*l1)*g*sin(x1)+m2*r2*g*sin(x1+x3))-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*m2*r2*g*sin(x1+x3))*sin(x1)+(d/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4-u))*cos(x1)-x2^2*sin(x1))-l2*((d/(d*a-b^2*cos(x3)^2-d^2)*((m1*r1+m2*l1)*g*sin(x1)+m2*r2*g*sin(x1+x3))-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*m2*r2*g*sin(x1+x3)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*((m1*r1+m2*l1)*g*sin(x1)+m2*r2*g*sin(x1+x3))+(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)*m2*r2*g*sin(x1+x3))*sin(x1+x3)+(d/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4-u)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)+(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4-u))*cos(x1+x3)-(x2+x4)^2*sin(x1+x3)),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        -l1*((d/(d*a-b^2*cos(x3)^2-d^2)*(2*x4*b*sin(x3)-c1)+2*(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*b*sin(x3)*x2)*sin(x1)+2*x2*cos(x1))-l2*((d/(d*a-b^2*cos(x3)^2-d^2)*(2*x4*b*sin(x3)-c1)+2*(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*b*sin(x3)*x2-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(2*x4*b*sin(x3)-c1)-2*(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)*b*sin(x3)*x2)*sin(x1+x3)+2*(x2+x4)*cos(x1+x3)), -l1*(-2*d/(d*a-b^2*cos(x3)^2-d^2)^2*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)*b^2*cos(x3)*sin(x3)+d/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*cos(x3)+m2*r2*g*sin(x1+x3))+b*sin(x3)/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4-u)+2*(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)^2*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4-u)*b^2*cos(x3)*sin(x3)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-b*cos(x3)*x2^2+m2*r2*g*sin(x1+x3)))*sin(x1)-l2*((-2*d/(d*a-b^2*cos(x3)^2-d^2)^2*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)*b^2*cos(x3)*sin(x3)+d/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*cos(x3)+m2*r2*g*sin(x1+x3))-b*sin(x3)/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4-u)+2*(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)^2*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4-u)*b^2*cos(x3)*sin(x3)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-b*cos(x3)*x2^2+m2*r2*g*sin(x1+x3))+b*sin(x3)/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)+2*(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)^2*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)*b^2*cos(x3)*sin(x3)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*cos(x3)+m2*r2*g*sin(x1+x3))-2*(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)^2*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4-u)*b^2*cos(x3)*sin(x3)+(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)*(-b*cos(x3)*x2^2+m2*r2*g*sin(x1+x3)))*sin(x1+x3)+(d/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4-u)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)+(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4-u))*cos(x1+x3)-(x2+x4)^2*sin(x1+x3)),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                -l1*(-d/(d*a-b^2*cos(x3)^2-d^2)*(-2*x2-2*x4)*b*sin(x3)+(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*c2)*sin(x1)-l2*((-d/(d*a-b^2*cos(x3)^2-d^2)*(-2*x2-2*x4)*b*sin(x3)+(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*c2+(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-2*x2-2*x4)*b*sin(x3)-(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)*c2)*sin(x1+x3)+2*(x2+x4)*cos(x1+x3))];
J5 = [                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            l1*((d/(d*a-b^2*cos(x3)^2-d^2)*((m1*r1+m2*l1)*g*sin(x1)+m2*r2*g*sin(x1+x3))-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*m2*r2*g*sin(x1+x3))*cos(x1)-(d/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4-u))*sin(x1)-x2^2*cos(x1))+l2*((d/(d*a-b^2*cos(x3)^2-d^2)*((m1*r1+m2*l1)*g*sin(x1)+m2*r2*g*sin(x1+x3))-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*m2*r2*g*sin(x1+x3)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*((m1*r1+m2*l1)*g*sin(x1)+m2*r2*g*sin(x1+x3))+(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)*m2*r2*g*sin(x1+x3))*cos(x1+x3)-(d/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4-u)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)+(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4-u))*sin(x1+x3)-(x2+x4)^2*cos(x1+x3)),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         l1*((d/(d*a-b^2*cos(x3)^2-d^2)*(2*x4*b*sin(x3)-c1)+2*(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*b*sin(x3)*x2)*cos(x1)-2*x2*sin(x1))+l2*((d/(d*a-b^2*cos(x3)^2-d^2)*(2*x4*b*sin(x3)-c1)+2*(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*b*sin(x3)*x2-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(2*x4*b*sin(x3)-c1)-2*(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)*b*sin(x3)*x2)*cos(x1+x3)-2*(x2+x4)*sin(x1+x3)),  l1*(-2*d/(d*a-b^2*cos(x3)^2-d^2)^2*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)*b^2*cos(x3)*sin(x3)+d/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*cos(x3)+m2*r2*g*sin(x1+x3))+b*sin(x3)/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4-u)+2*(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)^2*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4-u)*b^2*cos(x3)*sin(x3)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-b*cos(x3)*x2^2+m2*r2*g*sin(x1+x3)))*cos(x1)+l2*((-2*d/(d*a-b^2*cos(x3)^2-d^2)^2*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)*b^2*cos(x3)*sin(x3)+d/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*cos(x3)+m2*r2*g*sin(x1+x3))-b*sin(x3)/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4-u)+2*(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)^2*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4-u)*b^2*cos(x3)*sin(x3)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-b*cos(x3)*x2^2+m2*r2*g*sin(x1+x3))+b*sin(x3)/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)+2*(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)^2*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)*b^2*cos(x3)*sin(x3)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*cos(x3)+m2*r2*g*sin(x1+x3))-2*(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)^2*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4-u)*b^2*cos(x3)*sin(x3)+(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)*(-b*cos(x3)*x2^2+m2*r2*g*sin(x1+x3)))*cos(x1+x3)-(d/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4-u)-(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-(-2*x4*x2-x4^2)*b*sin(x3)-(m1*r1+m2*l1)*g*cos(x1)-m2*r2*g*cos(x1+x3)-c1*x2)+(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)*(-b*sin(x3)*x2^2-m2*r2*g*cos(x1+x3)-c2*x4-u))*sin(x1+x3)-(x2+x4)^2*cos(x1+x3)),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 l1*(-d/(d*a-b^2*cos(x3)^2-d^2)*(-2*x2-2*x4)*b*sin(x3)+(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*c2)*cos(x1)+l2*((-d/(d*a-b^2*cos(x3)^2-d^2)*(-2*x2-2*x4)*b*sin(x3)+(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*c2+(b*cos(x3)+d)/(d*a-b^2*cos(x3)^2-d^2)*(-2*x2-2*x4)*b*sin(x3)-(a+2*b*cos(x3))/(d*a-b^2*cos(x3)^2-d^2)*c2)*cos(x1+x3)-2*(x2+x4)*sin(x1+x3))];

JH = [J1;J2;J3;J4;J5];
end