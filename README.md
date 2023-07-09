# Setup
(I might automate this process to make it more user-friendly)

- Make sure Steam is completely closed when doing this
- Make two copies of `appmanifest_526870.acf` located in `Steam/steamapps` folder and paste it relative to the script file, name it `appmanifest_526870.EA` and `appmanifest_526870.EX`
- Open `appmanifest_526870.EA` and set `Installdir` to `SatisfactoryEA`
- Open `appmanifest_526870.EX` and set `Installdir` to `SatisfactoryEX`
- Open `appmanifest_526870.acf` and set `Installdir` to `SatisfactoryEA` or `SatisfactoryEX` if you're on experimental branch 
- Rename `Satisfactory` (located in `Steam/steamapps/common`) folder to `SatisfactoryEA` or `SatisfactoryEX` if you're on experimental branch
- Copy that folder and set to the other anme
- There should be two folders, `SatisfactoryEA` for Early Access and `SatisfactoryEX` for Experimental
- Replace path in script file to your path for `appmanifest_526870.acf`