def prime(x):
    if x < 2: return False
    if x == 2: return True

    if x % 2 == 0: return False
    else:
        for n in range(3, int(x ** 0.5)+1, 2):
            if x % n == 0:
                return False
        return True




def gap(g, m, n):
    prime_numbers = []
    primes = []
    a = None
    for x in range(m, n + 1):
        if prime(x):
            if a is not None and x - a == g:
                print(a, x)
                return [a, x]
            a = x
    return None









gap(6, 1, 50)
gap(2,1,110)
gap(6,100,110)
#
gap(2, 352447, 361447)
