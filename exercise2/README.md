1. docker ps
2. docker commit + id
3. ta första 10 tecken i sha256:a0ebb8efa6d7387303ee915ecf632204a77ef3f3897025c1568d582b6d5ea56f
4. a0ebb8efa6
5. Starta container
6. docker run --name exercise2 -it -v F:\Fuzzing-Module:/Fuzzing-Module a0ebb8efa6

# OBS - går att köra i den tidigare containers också (behöver inte göra ny, detta är bara träning) - sleepy_wiles

7. cd exercise2
8. mkdir build
9. cd build
10. CC=/AFLplusplus/afl-clang-fast CXX=/AFLplusplus/afl-clang-fast++ ..
11. make
12. cd ..
13. mkdir seeds
14. cd seeds
15. dd if=/dev/urandom of=seed_i bs=64 count=10
16. cd ..
17. cd build
18. /AFLplusplus/afl-fuzz -i /Fuzzing-Module/exercise2/seeds -o out -m none -d -- /Fuzzing-Module/exercise2/build/medium
19. gdb ./medium
20. run
