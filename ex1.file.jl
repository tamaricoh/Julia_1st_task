# Tamar Cohen

using Pkg
Pkg.add("Plots")
Pkg.add("LinearAlgebra")

# 1
function ex1()
    println("Hello world")
    end

# 2
for i in 1:50
        println(i)
end

# 3
function bisection(f,a,b,n)
    output="not found"
    for i in 1:n
        c = (a+b)/2
        if f(a)*f(c)<0
            b=c
        elseif f(b)*f(c)<0
            a=c
        elseif (f(c)==0)
            output = c
        end
    end
    println(output)    
end

# 4
function newton(f,fp,x,n)
    output="not found"
    for i in 1:n 
        if (f(x)==0)
            output=x
            break
        else
            x=x-f(x)/fp(x)
        end 
    end
    println(output)
end



# 5
bisection(sin,2,4,30)
newton(sin,cos,2,30)
# function bisection(f,a,b,n)
#     output="not found"
#     for i in 1:n
#         c = (a+b)/2
#         if f(a)*f(c-π)<0
#             b=c
#         elseif f(b)*f(c-π)<0
#             a=c
#         elseif (f(c-π)==0)
#             output = c
#         end
#     end
#     println(output)    
# end


# 6
using Plots
x = range(1.92, 2.08, length=30)
# y = x->x^9-18x^8+144x^7-672x^6+2016x^5-4032x^4+5376x^3-4608x^2+2304x-512
y=(x)->(x-2)^9
plot(x, y)