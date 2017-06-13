defmodule BlankableTest do
  use ExUnit.Case

  describe "blank?" do
    test "is true for empty list" do
      assert Blankable.blank?([])
    end

    test "is false for list with one element" do
      refute Blankable.blank?([1])
    end

    test "is true for empty string" do
      assert Blankable.blank?("")
    end

    test "is true for string with only whitespace" do
      assert Blankable.blank?("\n  \n\u00A0")
    end

    test "is false for string with non-whitespace" do
      refute Blankable.blank?("\nh   ")
    end

    test "is true for empty charlist" do
      assert Blankable.blank?('')
    end

    test "is false for non-empty charlist" do
      refute Blankable.blank?('a')
    end

    test "is true for empty tuple" do
      assert Blankable.blank?({})
    end

    test "is false for non-empty tuple" do
      refute Blankable.blank?({:a, :b})
    end

    test "is true for empty map" do
      assert Blankable.blank?(%{})
    end

    test "is false for non-empty map" do
      refute Blankable.blank?(%{a: 1})
    end

    test "is true for false" do
      assert Blankable.blank?(false)
    end

    test "is true for nil" do
      assert Blankable.blank?(nil)
    end

    test "is false for integer" do
      refute Blankable.blank?(42)
    end

    test "is false for float" do
      refute Blankable.blank?(3.14)
    end

    test "is false for function" do
      refute Blankable.blank?(fn x -> x end)
    end

    test "is false for atom" do
      refute Blankable.blank?(:foo)
    end
  end
end
