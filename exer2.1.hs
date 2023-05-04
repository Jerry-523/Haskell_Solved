soma :: (Num t, Ord t) => t -> t
soma 0 = 0
soma 1 = 1
soma n = if n > 1 then n + soma (n-1)
            else soma n-1