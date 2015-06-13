# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([


	{ password: "1234567890", email: "pepe@correo.com", encrypted_password: "887776665", reset_password_token: "88990022", sign_in_count: 0, current_sign_in_ip: "asdfghjkkl", last_sign_in_ip: "lorem"},
	{ password: "1234567890", email: "cheo@correo.com", encrypted_password: "887776665", reset_password_token: "88990022", sign_in_count: 0, current_sign_in_ip: "asdfghjkkl", last_sign_in_ip: "lorem"}

	])


associateds = Associated.create([
	
	{name: "Samuel", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam, illum.", status:0, user_id: 1},
	{name: "Jhon", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias, repellendus.", status:0, user_id: 1},
	{name: "Jhonathan", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore, error.", status:0, user_id: 1},
	{name: "Romer", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis, iusto?", status:0, user_id: 2},
	{name: "Daniel", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea, aliquid.", status:0, user_id: 2},
	{name: "Emilio", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est, soluta.", status:0, user_id: 2},
	{name: "Maria", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus, illum.", status:0, user_id: 2},
	{name: "Mary", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime, fugiat.", status:0, user_id: 2},
	{name: "Maria", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente, accusamus.", status:0, user_id: 2},
	{name: "Hector", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore, impedit.", status:0, user_id: 2},
	{name: "Genesis", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, velit!", status:0, user_id: 2},
	{name: "Abraham", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, earum.", status:0, user_id: 2}
	])


invoices = Invoice.create([
	{kind_operation: 0, status_operation: true, kind_payment: "transferencia", description: "Lorem ipsum dolor sit amet At, architecto.", total: 40000.0, date: "2015-06-10", document: "pdf", payment_proof: "pdf", associated_id: 1, user_id: 1},
	{kind_operation: 1, status_operation: false, kind_payment: "transferencia", description: "Lorem ipsum dolor sit amet At, architecto.", total: 40000.0, date: "2015-06-10", document: "pdf", payment_proof: "pdf", associated_id: 1, user_id: 1},
	{kind_operation: 0, status_operation: true, kind_payment: "transferencia", description: "Lorem ipsum dolor sit amet At, architecto.", total: 40000.0, date: "2015-06-10", document: "pdf", payment_proof: "pdf", associated_id: 1, user_id: 1},
	{kind_operation: 1, status_operation: true, kind_payment: "transferencia", description: "Lorem ipsum dolor sit amet At, architecto.", total: 40000.0, date: "2015-06-10", document: "pdf", payment_proof: "pdf", associated_id: 1, user_id: 1},
	{kind_operation: 0, status_operation: false, kind_payment: "transferencia", description: "Lorem ipsum dolor sit amet At, architecto.", total: 40000.0, date: "2015-06-10", document: "pdf", payment_proof: "pdf", associated_id: 1, user_id: 1},
	{kind_operation: 1, status_operation: true, kind_payment: "transferencia", description: "Lorem ipsum dolor sit amet At, architecto.", total: 40000.0, date: "2015-06-10", document: "pdf", payment_proof: "pdf", associated_id: 1, user_id: 1},
	{kind_operation: 0, status_operation: false, kind_payment: "transferencia", description: "Lorem ipsum dolor sit amet At, architecto.", total: 40000.0, date: "2015-06-10", document: "pdf", payment_proof: "pdf", associated_id: 1, user_id: 2},
	{kind_operation: 1, status_operation: true, kind_payment: "transferencia", description: "Lorem ipsum dolor sit amet At, architecto.", total: 40000.0, date: "2015-06-10", document: "pdf", payment_proof: "pdf", associated_id: 1, user_id: 2},
	{kind_operation: 0, status_operation: false, kind_payment: "transferencia", description: "Lorem ipsum dolor sit amet At, architecto.", total: 40000.0, date: "2015-06-10", document: "pdf", payment_proof: "pdf", associated_id: 1, user_id: 2},
	{kind_operation: 1, status_operation: true, kind_payment: "transferencia", description: "Lorem ipsum dolor sit amet At, architecto.", total: 40000.0, date: "2015-06-10", document: "pdf", payment_proof: "pdf", associated_id: 1, user_id: 2},
	{kind_operation: 0, status_operation: false, kind_payment: "transferencia", description: "Lorem ipsum dolor sit amet At, architecto.", total: 40000.0, date: "2015-06-10", document: "pdf", payment_proof: "pdf",associated_id: 1, user_id: 2}
	])

products = Product.create([
	{name: "Hack_Full", description: "Curso intensivo de 16 semanas de formación para  programadores", price: 36000.0, date: "2015-06-30", quantity: 1, user_id: 1, invoice_id: 1},
	{name: "Hack_Partial", description: "Curso intensivo de 16 semanas de formación para programadores", price: 10000.0, date: "2015-06-30", quantity: 1, user_id: 2, invoice_id: 2}
	])
