class BeatBox
    attr_reader :list
    def initialize
        @list = LinkedList.new
    end
    def append(string)
        noise_string = string
        noises = noise_string.split
        noises.each do |noise|
            @list.append(noise)
        end
    end
    def count
        @list.count
    end
    def play
        beats = @list.to_string
        `say -r 500 -v Boing #{beats}`
    end
end