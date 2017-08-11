defmodule MathSet do
  defstruct members: []

  def new, do: %MathSet{ members: [] }
  def new(values) when is_list(values), do: from_list values
  def new(value), do: %MathSet{ members: [value] }

  def from_list(list), do: %MathSet{ members: list |> Enum.uniq |> Enum.sort }
  def to_list(%MathSet{members: set}), do: set

  def is_empty?(%MathSet{members: set}), do: set == []
  def is_member?(%MathSet{members: set}, value), do: value in set
  def is_subset?(%MathSet{members: set}, %MathSet{members: subset}), do: [] == subset -- set

  def insert(%MathSet{members: set}, value), do: new if(value in set, do: set, else: [value | set])
  def remove(%MathSet{members: set}, value), do: set |> List.delete(value) |> new

  def union(%MathSet{members: set1}, %MathSet{members: set2}), do: set1 ++ set2 |> new
  def inter(%MathSet{members: set1}, %MathSet{members: set2}), do: set1 -- (set1 -- set2) |> new
  def comp(%MathSet{members: set1}, %MathSet{members: set2}), do: set1 -- set2 |> new

  def product(%MathSet{members: set1}, %MathSet{members: set2}), do: new(for x <- set1, y <- set2, do: new [x,y])
  def power(%MathSet{members: set}), do: new [new() | [ new(set) | Enum.uniq(for x <- set, y <- set, x != y, do: new [x,y]) ++ (for x <- set, do: new x) ] ]
end

defmodule MathTest do
  import MathSet

  def run do
    %MathSet{members: []} = new()
    %MathSet{members: [1,2,3]} = new [2,1,3]
    %MathSet{members: [0]} = new 0

    %MathSet{members: [1,2,3]} = from_list [1,2,3]
    [1,2,3] = to_list %MathSet{members: [1,2,3]}

    true = is_empty? new()
    true = is_member? new([1,2]), 2
    true = is_subset? new([1,2,3,4]), new([1,2])

    true = ( new([1,2,3]) == insert new([1,2]), 3 )
    true = ( new([1,2]) == remove new([1,2,3]), 3 )

    true = ( union(new(1), new(2)) == new [1,2] )
    true = ( inter(new(2), new(2)) == new 2 )
    true = ( comp(new(1), new(1)) == new() )

    true = ( product(new([1,2]), new([3,4])) == new [new([1,3]), new([1,4]), new([2,3]), new([2,4])] )
    true = ( power(new([1,2,3])) == new [new([1,2,3]), new([1,2]), new([1,3]), new([2,3]), new(3), new(2), new(1), new()] )
  end
end

MathTest.run