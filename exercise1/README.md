# Alla steg för att köra
Kör i git bash vid ubuntu eller powershell vid windows!

# How to create an AFL++ Docker Container
1. docker pull aflplusplus/aflplusplus 
2. docker run --name fuzztest -it aflplusplus/aflplusplus
3. skriv make i terminalen för att göra AFLplusplus executables

# How to create Target Docker Container
4. docker ps 
5. docker commit + dockercontainer id
Simon@Ved MINGW64 ~
$ docker commit d7ea5396672a
sha256:1455afdf07fb97c3f5a2b3897b8231edd94fb50ce1eec39a757543c65ce26f83 ta sedan den 7-10 första tecknen: "1455afdf07" 
6. Then type: docker run --rm -it -v $(pwd):/[name of the directory you are adding to the container] [the commit hash that you copied in the previous step]

# (Alternativ för Windows utan mellanslag i sökvägar) Ange --name om du vill!
docker run -it -v F:\Fuzzing-Module:/Fuzzing-Module 1455afdf07

# Ubuntu / Git bash
docker run -it -v $(pwd):/Fuzzing-Module 1455afdf07

# How to Run AFL++ on Exercise 1
7. Gå in i volymen som skapats "Fuzzing-Module"
8. mkdir build
9. cd build
10. CC=/AFLplusplus/afl-clang-fast CXX=/AFLplusplus/afl-clang-fast++ cmake ..
11. make
12. cd ..
13. mkdir seeds
14. cd seeds
15. for i in {0..4}; do dd if=/dev/urandom of=seed_$i bs=64 count=10; done
cd ..
cd build
16. Tillsist kör kommando enligt följande (OBS ändra, se rad 39!!!):
/AFLplusplus/afl-fuzz -i [full path to your seeds directory] -o out -m none -d -- [full path to the executable]

Detta körde jag!
/AFLplusplus/afl-fuzz -i /Fuzzing-Module/exercise1/seeds -o out -m none -d -- /Fuzzing-Module/exercise1/build/simple_crash

# Analyzing the crashes - vi använde gdb
17. Ange vilken bugger du vill använda: gdb
18. Ta fram en crash i mappen: build/default/crashes
19. gdb ./simple_crash 
20. När gdb startar kör: run
21. Se alla crashar genom att skriva: bt 
22. break (ange raden där det crasha, i detta fall rad 26)
23. Restarta buggern
24. run ./simple_crash
25. ange input string genom att gå till build/out/default/crashes/
26. ta en crash, jag tog denna: id000000,sig06,src000000,time300,execs151,ophavoc,rep16