# The Pragmatic Bookshelf has offices in Texas(TX) and North Carolina (NC),
# so we have to charge sales tax on orders shipped to these states.
# The rates can be expressed as a keyword list.


# Write a function that takes both lists and returns a copy of the orders.
# but with an extra field, total_amount, which is the net plus sales tax. If a
# shipment is not to NC or TX, there's no tax applied.

defmodule Orders do
  def totals(orders, taxes) do
    for order <- orders do
      [id: _, ship_to: state, net_amount: net_amount] = order
      total_amount = net_amount * (1 + Keyword.get(taxes, state, 0))
      order ++ [total_amount: total_amount]
    end
  end
end

tax_rates = [ NC: 0.075, TX: 0.08 ]

orders = [
  [ id: 123, ship_to: :NC, net_amount: 100.00 ],
  [ id: 124, ship_to: :OK, net_amount:  35.50 ],
  [ id: 125, ship_to: :TX, net_amount:  24.00 ],
  [ id: 126, ship_to: :TX, net_amount:  44.80 ],
  [ id: 127, ship_to: :NC, net_amount:  25.00 ],
  [ id: 128, ship_to: :MA, net_amount:  10.00 ],
  [ id: 129, ship_to: :CA, net_amount: 102.00 ],
  [ id: 120, ship_to: :NC, net_amount:  50.00 ],
]

IO.inspect Orders.totals(orders, tax_rates)
