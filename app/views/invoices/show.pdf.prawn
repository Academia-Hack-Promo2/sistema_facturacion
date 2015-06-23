pdf.text "Order ##{@invoice.id}", :size => 30, :style => :bold

items = @invoice.cart.line_items.map do |item|
	[
		item.name_associated,
		item.kind_payment,
		item.name_product,
		item.subtotal,
		item.tax,
		item.total
	]
end

pdf.table items

pdf.text @invoice.name_associated
