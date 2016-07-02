class Board
  attr_reader :possibilities
  def initialize(puzzle)
    @possibilities = fill_possibilities(puzzle)
  end

  def fill_possibilities(puzzle)
    rows = puzzle.split("\n")
    n = rows.length
    rows.map do |row|
      row.chars.reduce([]) do |guesses, spot|
        if spot != " "
          guesses << [spot.to_i]
        else
          guesses << (1..n).to_a
        end
      end
    end
  end

  def to_s
    possibilities.map {|row| row.flatten.join }.join("\n")
  end
end
