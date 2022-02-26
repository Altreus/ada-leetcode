-- Given an array of integers nums and an integer target,
-- return indices of the two numbers such that they add up to target.

-- You may assume that each input would have exactly
-- one solution, and you may not use the same element twice.

-- You can return the answer in any order.

with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Two_Sum is
    type Test_Array is array(Integer range <>) of Integer;

    function Find_Indices (A : Test_Array; Target : Integer) return Test_Array is
    begin
        for I in A'Range loop
            for J in A'Range loop
                if I /= J and A(I) + A(J) = Target
                then
                    return (I,J);
                end if;
            end loop;
        end loop;

        return (0,0);
    end Find_Indices;

    Result : Test_Array(0..1);
    Input : Test_Array(0..6) := (1,2,3,4,5,6,7);
begin
    Result := Find_Indices(Input, 4);
    for I in Result'Range loop
        Put(Result(I));
    end loop;
end Two_Sum;