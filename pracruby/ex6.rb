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

class Header
    def initialize(header, color, id)
        @header = header
        @color = color
        @id = id
    end

    def html
        "<h1 id1='#{@id}'>#{@header}</h1>"
    end

    def style
        "#{@header}##{@id} {color: #{@color.hex};}"
    end
end




#color = Color.new(100,25,254)
#puts color
#p color.rgb
#p color.hex

header = Header.new("header", Color.new(100, 25, 254), "id1")
p header.html
p header.style
#p header.color.rgb
