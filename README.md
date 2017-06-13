# Blankable

Implementation of `blank?` in Elixir. Aims to work in a practically identical fashion to [ActiveSupport's #blank? method](http://api.rubyonrails.org/files/activesupport/lib/active_support/core_ext/object/blank_rb.html).

## Installation

Add `blankable` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:blankable, "~> 0.0.1"}]
end
```

## Usage

```
iex> Blankable.blank?(nil)
true
iex> Blankable.blank?("")
true
iex> Blankable.blank?([])
true
iex> Blankable.blank?("Hello")
false
```
