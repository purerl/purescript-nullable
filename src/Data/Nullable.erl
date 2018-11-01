-module(data_nullable).
-export([null/0, nullable/3, notNull/1]).

null() -> null.

nullable(A, R, _F) when A =:= null -> R;
nullable(A, _R, F) -> F(A).

notNull(X) -> X.