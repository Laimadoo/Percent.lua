local Percent = {}
Percent.__index = {
    __class = Percent
}
Percent.__add = function(v1, v2)
    if type(v1) == "table" and v1.__class == Percent then
        v1 = v1[1]/100
    end
    if type(v2) == "table" and v2.__class == Percent then
        v2 = v2[1]/100*v1
    end

    return v1+v2
end

Percent.__sub = function(v1, v2)
    if type(v1) == "table" and v1.__class == Percent then
        v1 = v1[1]/100
    end
    if type(v2) == "table" and v2.__class == Percent then
        v2 = v2[1]/100*v1
    end

    return v1-v2
end

Percent.__mul = function(v1, v2)
    if type(v1) == "table" and v1.__class == Percent then
        v1 = v1[1]/100
    end
    if type(v2) == "table" and v2.__class == Percent then
        v2 = v2[1]/100
    end

    return v1*v2
end

Percent.__div = function(v1, v2)
    if type(v1) == "table" and v1.__class == Percent then
        v1 = v1[1]/100
    end
    if type(v2) == "table" and v2.__class == Percent then
        v2 = v2[1]/100
    end

    return v1/v2
end

Percent.__pow = function(v1, v2)
    if type(v1) == "table" and v1.__class == Percent then
        v1 = v1[1]/100
    end
    if type(v2) == "table" and v2.__class == Percent then
        v2 = v2[1]/100
    end

    return v1^v2
end

Percent.__eq = function(v1, v2)
    return v1[1] == v2[1]
end

Percent.__unm = function(v)
    v[1] = -v[1]
    return v
end

Percent.__le = function(v1, v2)
    if type(v1) == "table" and v1.__class == Percent then
        v1 = v1[1]/100
    end
    if type(v2) == "table" and v2.__class == Percent then
        v2 = v2[1]/100
    end

    return v1 <= v2
end

Percent.__lt = function(v1, v2)
    if type(v1) == "table" and v1.__class == Percent then
        v1 = v1[1]/100
    end
    if type(v2) == "table" and v2.__class == Percent then
        v2 = v2[1]/100
    end

    return v1 < v2
end

Percent.__tostring = function(v)
    return v[1] .. "%"
end
	
setmetatable(Percent, {
	__call = function(class, num)
	    return setmetatable({num}, class)
	end
})

return Percent