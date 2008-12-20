module PageTitle
  # Set the page_title through the @page_title variable anywhere.
  #
  # page_title() # => ""
  #
  # @page_title = "Dashboard"
  # page_title() # => "Dashboard"
  # page_title(:prefix => 'London Made') # => "London Made &raquo; Dashboard"
  # page_title(:prefix => 'London Made', :suffix => 'Powered by Rails') # => "London Made &raquo; Dashboard &raquo; Powered by Rails"
  # page_title(:prefix => 'London Made', :suffix => 'Powered by Rails', :seperator => ' - ') # => "London Made - Dashboard - Powered by Rails"
  def page_title(options={})
    options[:seperator] ||= ' &raquo; '
    [options[:prefix], @page_title, options[:suffix]].compact * " &raquo; "
  end
end
