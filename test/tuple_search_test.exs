defmodule TupleSearchTest do
  use ExUnit.Case
  doctest TupleSearch

  test ".search_index" do
    t = {"a", "b", "c", "d", "e"}
    assert TupleSearch.find_index(t, "b") == 1
  end

  test ".search_index with options" do
    t = {1, 2, 3, "a", "b", "c", "d", "e", %{}, :stuff, :stuff, :stuff, :stuff}
    assert TupleSearch.find_index(t, "b", start_index: 3, end_index: 7) == 5
  end
end
