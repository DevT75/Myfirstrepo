%% Print Array In Spiral Order
A = input("Enter the matrix : \n")
%% Define Processing Inputs
% Define Row And Coloums.
% Define Left Most , Right Most, Top Most and Bottom most Rows and
% Coloumn's index initially.
[row,col] = size(A);
L = 1;T = 1;R = col;B = row;dir =0;
%% Matrix Processsing
fprintf("Given Output Spiral Matrix\n")
while(T <= B && L <= R)
    % Traversing 1st from L -> R
    if (dir == 0)
      for i= L:R
        fprintf("%d ",A(T,i));
      end
       T = T+1;
       dir = 1;
    end
    if(dir ==1)
        for i= T:B
            fprintf("%d ",A(i,R));
        end
        R = R-1;
        dir = 2;
    end
    % Traversing 1st from R -> L
    if (dir == 2)
       for i=R:-1:L
           fprintf("%d ",A(B,i));
        end
        B = B-1;
        dir =3;
    end
    % Traversing 1st from B -> T
    if (dir ==3)
        for i= B:-1:T
            fprintf("%d ",A(i,L));
        end
        L = L+1;
        dir = 0;
    end
end