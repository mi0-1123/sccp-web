class Color
    attr_reader :rgb
    def initialize(red,green,blue)
        # 同名であっても、@nameとnameは別物。
        @rgb = [red, green, blue]
        @red = red
        @green = green
        @blue = blue
    end
    
    def hex
        @rgb.map{|e|sprintf("%02x", e) }.join
    end

    def to_s
        hex + "#(#{@red},#{@green},#{@blue})"
    end

end

color = Color.new(100,25,254)
puts color
p color.rgb
p color.hex
