-- Definisikan variabel yang merepresentasikan list dari 1 hingga 15.
bilanganList :: [Int]
bilanganList = [1..15]

-- Buatlah fungsi untuk menggandakan bilangan genap dengan guards.
gandakanGenap :: Integral a => a -> a
gandakanGenap angka = 
    case angka `mod` 2 of
        0 -> angka * 2
        _ -> angka

-- Buatlah fungsi untuk mengategorikan bilangan berdasarkan nilainya.
kategori :: (Ord a, Num a) => a -> String
kategori angka
    | angka < rendah = "Rendah"
    | angka < sedang = "Sedang"
    | otherwise = "Tinggi"
    where rendah = 10
          sedang = 20

-- Buat variabel yang mengombinasikan semuanya dengan map dan filter.
hasil :: [String]
hasil = map kategori $ map gandakanGenap $ filter((>10).gandakanGenap)bilanganList


-- Fungsi utama
main :: IO ()
main = do
    putStrLn "Kategori bilangan setelah diproses:"
    print hasil
