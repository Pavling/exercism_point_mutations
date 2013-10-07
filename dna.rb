class DNA

  def initialize(dna)
    @dna = dna
  end

  def hamming_distance(dna)
    @dna.chars.each_with_index.inject(0) do |memo, nucleotide, index|
      memo += 1 unless nucleotide == dna[index]
      memo
    end
  end

end