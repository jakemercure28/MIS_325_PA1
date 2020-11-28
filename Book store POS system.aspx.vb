
Partial Class Book_store_POS_system
    Inherits System.Web.UI.Page

    'global variables used to track running quantity and sales totals
    Public Shared qty_magazines As Integer, qty_toys As Integer, qty_books As Integer,
        revenue_magazines As Integer, revenue_toys As Integer, revenue_books As Integer

    Public Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        'cost variables used in price calculation
        Dim total = 0, sub_total = 0, tax_total = 0
        'calculate the total sale cost before tax
        sub_total = Convert.ToDecimal(TextBox1.Text) * Convert.ToDecimal(TextBox2.Text) & vbNewLine
        'calculate tax
        tax_total = sub_total * 0.095
        'calculate total
        total = tax_total + sub_total
        'print out the results to the textbox 3

        'selected items have an index, case numbers represent the index of each option
        Select Case RadioButtonList1.SelectedIndex

            'magazines
            Case 0
                'add to running total quantity of magazines
                qty_magazines += Convert.ToDecimal(TextBox2.Text)
                revenue_magazines += Convert.ToDecimal(TextBox1.Text)
                'display image of magazine
                Image1.ImageUrl = "~\Images\magazine.jpg"

            'books
            Case 1
                qty_books += Convert.ToDecimal(TextBox2.Text)
                revenue_books += Convert.ToDecimal(TextBox1.Text)
                Image1.ImageUrl = "~\Images\book.jpg"

            'toys
            Case 2
                qty_toys += Convert.ToDecimal(TextBox2.Text)
                revenue_toys += Convert.ToDecimal(TextBox1.Text)
                Image1.ImageUrl = "~\Images\toy.jpg"
        End Select

        'print out calculations and formatting for customer textbox
        TextBox3.Text = TextBox2.Text & " " & Convert.ToString(RadioButtonList1.SelectedItem) & " at $" & TextBox1.Text & " each" & vbNewLine &
            "Subtotal = $" & sub_total & vbNewLine & "Tax = $" & tax_total & vbNewLine & "Total = $" & total

        'print out calculations and formatting for inventory managagement textbox
        TextBox4.Text = "Magazines sales quantity: " & qty_magazines & vbNewLine & "Magazines sales revenue: $" & revenue_magazines & vbNewLine &
        "Books sales quantity: " & qty_books & vbNewLine & "Books sales revenue: $" & revenue_books & vbNewLine &
        "Toys sales quantity: " & qty_toys & vbNewLine & "Toys sales revenue: $" & revenue_toys

    End Sub
End Class
