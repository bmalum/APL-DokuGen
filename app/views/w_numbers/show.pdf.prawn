require 'prawn/table'

pdf = Prawn::Document.new(:page_size => "A4", :bottom_margin => 0)
pdf.move_up 40
pdf.image "app/assets/prawn/header.png",  :width => 620,:position => -37
pdf.move_down 670
pdf.image "app/assets/prawn/footer.png",  :width => 620,:position => -37
pdf.move_up 700
pdf.text "Firma:", :size => 10
pdf.move_down 10
pdf.text "ABH Thermo GmbH"
pdf.text "zHd. Roland Schuster"
pdf.text "Wehlistrasse 27b/DG/Top1+2"
pdf.text "1200 Wien"
pdf.text "Austria"

pdf.move_down 10
pdf.text "Hopfgarten, am 12.09.2014", :align => :right
pdf.move_down 20
pdf.move_down 40


pdf.text "Druckgeräte Dokumentation", :size => 16
pdf.move_down 10
pdf.text "Beiliegend erhalten Sie die Durckgeräte Dokumentation in x-Facher Ausfertigung (incl. CD) für:"
pdf.move_down 10


pdf.table([ ["#{@w_number.id}", "#{@order.id}", "loooooooooooooooooooong"],
          ["short", "loooooooooooooooooooong", "short"],
          ["loooooooooooooooooooong", "short", "short"] ])


