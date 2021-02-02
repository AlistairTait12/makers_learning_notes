class Entry
  attr_reader :header, :body
  def initialize(header, body)
    @header = header
    @body = body
  end
end