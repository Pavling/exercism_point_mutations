class DNA

  def initialize(dna)
    @dna = dna
  end

  def hamming_distance(dna)
    dna_chars = dna.chars.to_a
    @dna.chars.each_with_index.inject(0) do |memo, nucleotide_and_index|
      nucleotide, index = nucleotide_and_index
      memo += 1 unless dna_chars[index] == nucleotide
      memo
    end
  end

end