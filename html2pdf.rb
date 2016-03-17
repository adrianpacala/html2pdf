require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)

html = File.read('label.html')
kit = PDFKit.new(html)

kit.stylesheets << 'label.css'

file = kit.to_file('tmp/label.pdf')
