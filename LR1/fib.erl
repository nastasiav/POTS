-module(fib).
-export([fib_p/1, fib_g/1, tail_fib/1]).

% Сalc fibonacci numbers with common recursion
fib_p(N) ->
if
    N == 0 -> 0;
    N == 1 -> 1;
    N >= 2 -> fib_p(N-1) + fib_p(N-2)
end.

% Calc fibonacci numbers with common recursion and when
fib_g(N) when N == 0 -> 0;
fib_g(N) when N == 1 -> 1;
fib_g(N) when N >=2 -> fib_g(N-1) + fib_g(N-2).

% Calc fibonacci numbers with tail recursion
tail_fib(N) -> tail(N, 0, 1).
tail(0, Result, _) -> Result;
tail(1, _, Result) -> Result;
tail(N, Prev, Result) when N >= 2 -> tail(N - 1, Result, Result + Prev).