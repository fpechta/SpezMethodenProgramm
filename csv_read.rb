require 'csv'

class RubyCsv
  def initialize(file_path)
    @file_path = file_path
  end

  def each
    CSV.foreach(@file_path, headers: true) do |row|
      yield CsvRow.new(row)
    end
  end

  class CsvRow
    def initialize(row)
      @row = row
    end

    def method_missing(name, *args, &block)
      header = name.to_s
      if @row.headers.include?(header)
        @row[header]
      else
        super
      end
    end
  end
end

# Beispiel-Nutzung
csv = RubyCsv.new('data.csv')
csv.each do |row|
  puts row.drei  # Zugriff auf den Wert in der Spalte mit dem Header "zwei"
end