%����� ����, �� � �� ��������, �� � ����� ������� ���� ��� ������: ��� � ���.
%��� ���������� �� ��� �������� ������ �� �������������, ��������� � ������, ���� � ��������� ��� �� ��������� ��� �������.
%� ��� ���� �� ���������, ��������� � ��������, �� � ������ ��� �� ������� ������ ������.
%���-�� � ���������� ��� ����������� ���� � ������� ������ �� ���: ����� ����������, ��� ���� �����?
%��� ��� ��������� ��������� �������: ���. � �����-�� ���, ����� ������� ���� ������?
%����� ���� �����������,������ ��� ����������. � ������ ����� �������,- ������� ��� ��������.
%�������, ��� �� ���? �������� �, ��������� � �������� ����� �����������.�� ������, ��� �������� ������? � ������ ������ ������ �� ������,- ������� � � �����.
%�����, ��� ������ �� ���� �������� �� � ���, �������� ����� ������, ������� ���� � ������ ����������.
%��, �������, � ���-���� ���������, ��� �� ���� ������ ��� ���, � ��� ���.
%����� ������, �� ��������� ����� ���������� � ���� ������, � ������� � ���������� � ����.
%���������� ���������� � ��.

logicalnot("���", "���").
logicalnot("���", "���").

truth("���", 1, false).
truth("���", 2, false).
truth("���", 3, false).
truth("���", 4, true).
truth("���", 5, true).
truth("���", 6, true).
truth("���", 7, true).

truth("���", 1, true).
truth("���", 2, false).
truth("���", 3, true).
truth("���", 4, false).
truth("���", 5, true).
truth("���", 6, false).
truth("���", 7, true).

pair(7, 1).
pair(N, N + 1).

sayname(Person, true) :- Person = "���".
sayname(Person, false) :- not(Person = "���").

sayyesterday(Today, Yesterday, true) :- pair(Yesterday, Today).
sayyesterday(Today, Yesterday, false) :- not(pair(Yesterday, Today)).

saytomorrow(Today, Tomorrow, true) :- pair(Today, Tomorrow).
saytomorrow(Today, Tomorrow, false) :- not(pair(Today, Tomorrow)).

writeanswer(Sp1, Sp2, Today) :- write('Speaker1: '), write(Sp1), nl, write('Speaker 2: '), write(Sp2), nl, write('Today: '), write(Today), nl.

solve :- truth(Sp1, Today, Res1), logicalnot(Sp1, Sp2), truth(Sp2, Today, Res2),
         sayname(Sp1, Res1), sayyesterday(Today, 7, Res1), saytomorrow(Today, 5, Res2), truth(Sp2, 3, Res2), writeanswer(Sp1,Sp2,Today),!.

?-solve.
% �����:
%Speaker1: ���
%Speaker 2: ���
%Today: 2



