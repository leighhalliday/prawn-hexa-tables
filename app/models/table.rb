require 'benchmark'
require 'faker'

class Table

  def self.speed
    [100, 1000, 10_000, 100_000].each do |size|
      table = self.new(size)

      puts "Prawn #{size}"
      time = Benchmark.measure do
        table.prawn
      end
      puts time.real

      puts "Hexa #{size}"
      time = Benchmark.measure do
        table.hexa
      end
      puts time.real

      puts ""
    end
  end

  def initialize(size)
    @size = size
    @rows = (1..size).to_a.map do |num|
      OpenStruct.new(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        address: Faker::Address.full_address,
        salary: Faker::Number.decimal(l_digits: 2),
      )
    end
  end

  def prawn
    Prawn::Document.generate("prawn-#{@size}.pdf", compress: true) do |pdf|
      pdf.text("Hello World")
      pdf.table(data)
    end
  end

  def hexa
    HexaPDF::Composer.create("hexa-#{@size}.pdf") do |pdf|
      pdf.text("Hello World")
      pdf.table(data)
    end
  end

  def data
    @rows.map do |row|
      [row.name, row.email, row.address, row.salary]
    end
  end

end