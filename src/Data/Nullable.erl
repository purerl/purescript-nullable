-module(data_nullable@foreign).
-export([null/0, nullable/0, notNull/1]).

null() -> null.

nullable() -> fun (A, R, _F) when A =:= null -> R;
                  (A, _R, F) -> F(A)
              end.

notNull(X) -> X.
