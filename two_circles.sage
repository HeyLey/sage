def two_circles(x1, y1, r1, x2, y2, r2):
    c1 = circle((x1, y1), r1)
    c2 = circle((x2, y2), r2)
    if x1==x2 and y1==y2 and r1 == r2:
        c3 = circle((x1, y1), r1, rgbcolor=(1,0,0))
        print("two circles are the same")
        show(c3)
    else:
        x, y = var('x, y')
        sols = solve([(x-x1)^2 + (y-y1)^2 == r1^2, (x-x2)^2 + (y-y2)^2 == r2^2], x, y, solution_dict=True)
        coords = []
        for s in sols:
            c = ((s[x], s[y]))
            coords.append(c)
            print c
        p = point(coords, size=35, rgbcolor=(1,0,0))
        show(p + c1 + c2)


# two_circles(3, 4, 5, 4, 3, 4)