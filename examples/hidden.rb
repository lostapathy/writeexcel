#!/usr/bin/ruby -w

#######################################################################
#
# Example of how to hide a worksheet with Spreadsheet::WriteExcel.
#
# reverse('©'), April 2005, John McNamara, jmcnamara@cpan.org
#
require 'excel'
include Spreadsheet


workbook   = Excel.new('hidden.xls')
worksheet1 = workbook.add_worksheet
worksheet2 = workbook.add_worksheet
worksheet3 = workbook.add_worksheet

# Sheet2 won't be visible until it is unhidden in Excel.
worksheet2.hide

worksheet1.write(0, 0, 'Sheet2 is hidden')
worksheet2.write(0, 0, 'How did you find me?')
worksheet3.write(0, 0, 'Sheet2 is hidden')

workbook.close