# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
	{first_name: "Pedro", last_name: "Gonzalez", username: "pepe", email: "", encrypted_password: "887776665", reset_password_token: "88990022", sign_in_count: 0, current_sign_in_ip: "asdfghjkkl", last_sign_in_ip: "lorem"},
	{first_name: "Jose", last_name: "Rodriguez", username: "cheo", email: "", encrypted_password: "887776665", reset_password_token: "88990022", sign_in_count: 0, current_sign_in_ip: "asdfghjkkl", last_sign_in_ip: "lorem"}
	])


associateds = Associated.create([
	{name: "Pedro", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente, minima!"},#, user_id: 1},
	{name: "Juan", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate, nulla."}#, user_id: 1}
	# {name: "Jose", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque, labore?"},# user_id: 1},
	# {name: "Maria", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores, quam."},# user_id: 1},
	# {name: "Hector", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem, laborum."},# user_id: 1},
	# {name: "Samuel", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam, illum."},# user_id: 1},
	# {name: "Jhon", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias, repellendus."},# user_id: 1},
	# {name: "John", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero, numquam."},# user_id: 1},
	# {name: "Jonathan", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Optio, iure."},# user_id: 1},
	# {name: "Jhonatan", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto, quae."},# user_id: 1},
	# {name: "Jhonathan", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore, error."},# user_id: 1},
	# {name: "Matías", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum, consequatur?"},# user_id: 1},
	# {name: "Mathias", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, sapiente."},# user_id: 1},
	# {name: "Gabriela", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, alias!"},# user_id: 1},
	# {name: "Sara", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, molestiae!"},# user_id: 1},
	# {name: "Carolina", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus, sequi."},# user_id: 1},
	# {name: "Romer", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis, iusto?"},# user_id: 2},
	# {name: "Daniel", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea, aliquid."},# user_id: 2},
	# {name: "Emilio", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est, soluta."},# user_id: 2},
	# {name: "Maria", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus, illum."},# user_id: 2},
	# {name: "Mary", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime, fugiat."},# user_id: 2},
	# {name: "Maria", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente, accusamus."},# user_id: 2},
	# {name: "Hector", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore, impedit."},# user_id: 2},
	# {name: "Genesis", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, velit!"},# user_id: 2},
	# {name: "Abraham", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, earum."},# user_id: 2},
	# {name: "Pablo", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime, est."},# user_id: 2},
	# {name: "Silas", ci_rif: "23456789", alias: "lorem", email: "lorem@correo.com", phone: "02121234567", address: "Lorem ipsum dolor sit amet", kind: 0, frequency: 0, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit, laboriosam."}#, user_id: 2}
	])


invoices = Invoice.create([
	{kind_operation: 0, status_operation: 0, kind_payment: "transferencia", description: "Lorem ipsum dolor sit amet At, architecto.", total: 40000.0, date: "2015-06-10", document: "pdf", payment_proof: "pdf"},# associated_id: 1, user_id: 1},
	{kind_operation: 0, status_operation: 0, kind_payment: "transferencia", description: "Lorem ipsum dolor sit amet At, architecto.", total: 40000.0, date: "2015-06-10", document: "pdf", payment_proof: "pdf"},# associated_id: 1, user_id: 1},
	{kind_operation: 0, status_operation: 0, kind_payment: "transferencia", description: "Lorem ipsum dolor sit amet At, architecto.", total: 40000.0, date: "2015-06-10", document: "pdf", payment_proof: "pdf"},# associated_id: 1, user_id: 1},
	{kind_operation: 0, status_operation: 0, kind_payment: "transferencia", description: "Lorem ipsum dolor sit amet At, architecto.", total: 40000.0, date: "2015-06-10", document: "pdf", payment_proof: "pdf"},# associated_id: 1, user_id: 1},
	{kind_operation: 0, status_operation: 0, kind_payment: "transferencia", description: "Lorem ipsum dolor sit amet At, architecto.", total: 40000.0, date: "2015-06-10", document: "pdf", payment_proof: "pdf"},# associated_id: 1, user_id: 1},
	{kind_operation: 0, status_operation: 0, kind_payment: "transferencia", description: "Lorem ipsum dolor sit amet At, architecto.", total: 40000.0, date: "2015-06-10", document: "pdf", payment_proof: "pdf"},# associated_id: 1, user_id: 1},
	{kind_operation: 0, status_operation: 0, kind_payment: "transferencia", description: "Lorem ipsum dolor sit amet At, architecto.", total: 40000.0, date: "2015-06-10", document: "pdf", payment_proof: "pdf"},# associated_id: 1, user_id: 2},
	{kind_operation: 0, status_operation: 0, kind_payment: "transferencia", description: "Lorem ipsum dolor sit amet At, architecto.", total: 40000.0, date: "2015-06-10", document: "pdf", payment_proof: "pdf"},# associated_id: 1, user_id: 2},
	{kind_operation: 0, status_operation: 0, kind_payment: "transferencia", description: "Lorem ipsum dolor sit amet At, architecto.", total: 40000.0, date: "2015-06-10", document: "pdf", payment_proof: "pdf"},# associated_id: 1, user_id: 2},
	{kind_operation: 0, status_operation: 0, kind_payment: "transferencia", description: "Lorem ipsum dolor sit amet At, architecto.", total: 40000.0, date: "2015-06-10", document: "pdf", payment_proof: "pdf"},# associated_id: 1, user_id: 2},
	{kind_operation: 0, status_operation: 0, kind_payment: "transferencia", description: "Lorem ipsum dolor sit amet At, architecto.", total: 40000.0, date: "2015-06-10", document: "pdf", payment_proof: "pdf"}# associated_id: 1, user_id: 2}
	])

products = Product.create([
	{name: "Hack_Full", description: "Curso intensivo de 16 semanas de formación para  programadores", price: 36000.0, date: "2015-06-30"},# user_id: 1, invoice_id: 1},
	{name: "Hack_Partial", description: "Curso intensivo de 16 semanas de formación para programadores", price: 10000.0, date: "2015-06-30"}#, user_id: 2, invoice_id: 2}
	])
