euler :: Int  -> Double
euler x = 2.0 + 1.0 / (eulerReal 1.0 (fromIntegral x :: Double))

eulerReal :: Double -> Double -> Double
eulerReal x y
	| x == y = 1.0
	| otherwise = x + (x / (eulerReal (x + 1) y))

main :: IO ()
main = do 
	print (euler 100000)
