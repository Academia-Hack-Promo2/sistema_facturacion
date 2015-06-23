class InvoicePdf < Prawn::Document
  def initialize(invoice)
    super()
    @invoice = invoice
    header
    #text_content
    table_content
  end
 
  def header
    #This inserts an image in the pdf file and sets the size of the image
    # cell_1 = make_cell(:content => "#{@invoice[0].kind_invoice} ##{@invoice[0].id}")
    # cell_2 = make_cell(:content => "")
    
    y_position = cursor - 0
    image "#{Rails.root}/app/assets/images/full-logo-aeb6cec9ca9eee43393c56f9d220e49c.png", :scale => 0.75
    bounding_box([150, y_position], :width => 400, :height => 100) do
      text "Hack", size: 18, style: :bold
      text "RIF J-123456789-0", size: 14, style: :bold
      text "Venezuela, Caracas, Los Dos Caminos, Av. Sucre entre 4ta y 5ta transversal, Centro Boyacá, Piso 19. Cel: (0416) 6975620, Email: rramos@4geeks.co"
    end


    text "#{@invoice[0].kind_invoice} ##{@invoice[0].id}", :color =>  rgb='f22415', :size => 30, :style => :bold

     y_position = cursor - 20
 
    # The bounding_box takes the x and y coordinates for positioning its content and some options to style it
    bounding_box([0, y_position], :width => 400, :height => 200) do
      text "Personal Details", size: 16, style: :bold
      text "Name:", size: 14, style: :bold
      text "#{@invoice[0].name_associated}"
      text "ID:", size: 14, style: :bold
      text "#{@invoice[0].ci_associated}"
      text "Address:", size: 14, style: :bold
      text "#{@invoice[0].address_associated}"    

    end
  
    move_down 5
  end
 
  def text_content
    # The cursor for inserting content starts on the top left of the page. Here we move it down a little to create more space between the text and the image inserted above
    y_position = cursor - 50
 
    # The bounding_box takes the x and y coordinates for positioning its content and some options to style it
    bounding_box([0, y_position], :width => 270, :height => 300) do
      text "Lorem ipsum", size: 15, style: :bold
      text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse interdum semper placerat. Aenean mattis fringilla risus ut fermentum. Fusce posuere dictum venenatis. Aliquam id tincidunt ante, eu pretium eros. Sed eget risus a nisl aliquet scelerisque sit amet id nisi. Praesent porta molestie ipsum, ac commodo erat hendrerit nec. Nullam interdum ipsum a quam euismod, at consequat libero bibendum. Nam at nulla fermentum, congue lectus ut, pulvinar nisl. Curabitur consectetur quis libero id laoreet. Fusce dictum metus et orci pretium, vel imperdiet est viverra. Morbi vitae libero in tortor mattis commodo. Ut sodales libero erat, at gravida enim rhoncus ut."
    end
 
    bounding_box([300, y_position], :width => 270, :height => 300) do
      text "Duis vel", size: 15, style: :bold
      text "Duis vel tortor elementum, ultrices tortor vel, accumsan dui. Nullam in dolor rutrum, gravida turpis eu, vestibulum lectus. Pellentesque aliquet dignissim justo ut fringilla. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut venenatis massa non eros venenatis aliquet. Suspendisse potenti. Mauris sed tincidunt mauris, et vulputate risus. Aliquam eget nibh at erat dignissim aliquam non et risus. Fusce mattis neque id diam pulvinar, fermentum luctus enim porttitor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos."
    end
 
  end
 
  def table_content
    # This makes a call to product_rows and gets back an array of data that will populate the columns and rows of a table
    # I then included some styling to include a header and make its text bold. I made the row background colors alternate between grey and white
    # Then I set the table column widths
    table invoice_rows do
      row(0).font_style = :bold
      self.header = true
      self.row_colors = ['DDDDDD', 'FFFFFF']
      self.column_widths = [200, 40, 100, 100, 100]
    end
  end
 
  def invoice_rows
    [['Product', 'Qty', 'Price', 'Tax', 'Total']] +
      @invoice.map do |invoice|
      [
        invoice.name_product, 
        invoice.quantity, 
        invoice.subtotal,
        invoice.tax,
        invoice.total
      ]
    end
  end
end