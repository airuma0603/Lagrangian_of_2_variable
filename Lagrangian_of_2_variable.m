syms t %可添加其他参量（当然，不是作为自变量，而是常量）
syms x1(t) x2(t)%x1,x2是你选取的两个广义坐标,可通过查找与替换来换为你需要的命名（只需替换x1，x2，且经检查，不会影响脚本功能）

dx1 = diff(x1,t);%简记x1的导数，方便下文使用
dx2 = diff(x2,t);

T_x1 = ;
T_x2 = ;
T = T_x1 + T_x2;%在该脚本的适用范围里，T应为dx1与dx2的二次型（系数是x1，x2的函数）

V_x1 = ;
V_x2 = ;
V = V_x1 + V_x2;%在该脚本的适用范围里，V应是只与x1，x2本身有关的函数（不包含导数与高阶导数）

%x1,x2的动能，势能待定义

L = T - V;

EulerLagrange1 = diff(L,x1) - diff(diff(L,dx1),t) == 0;
EulerLagrange2 = diff(L,x2) - diff(diff(L,dx2),t) == 0;

disp(latex(EulerLagrange1));
disp(latex(EulerLagrange2));
disp(latex(simplify(EulerLagrange1)));
disp(latex(simplify(EulerLagrange2)));%分别展示化简和未化简的拉格朗日方程组，可使用latex查看
