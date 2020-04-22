module secant

"Returns root of given function using secant method"

function my_secant(f, x1, x2, eps)
    xm = 0
    x0 = 0
    c = 0

    if(f(x1) * f(x2) < 0)
        while true
            x0 = (x1 * f(x2) - x2 * f(x1)) / (f(x2) - f(x1))
            c = f(x1) * f(x0)

            x1 = x2
            x2 = x0

            if(c == 0)
                break
            end

            xm = (x1 * f(x2) - x2 * f(x1)) / (f(x2) - f(x1))

            if(abs(xm - x0) < eps)
                break
            end
        end
        return x0
    else println("Can not find a root")
    end
end

export my_secant

end # module
