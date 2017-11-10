name1 = {first: 'Barack', family: 'Obama'}
name2 = {first: 'George', middle: 'W', family:'Bush'}


def initial(name)
    if(name[:middle].nil?)
        "#{name[:first][0]}.#{name[:family][0]}."
    else
        "#{name[:first][0]}.#{name[:middle][0]}.#{name[:family][0]}."    
    end
end

p initial(name1)
p initial(name2)
