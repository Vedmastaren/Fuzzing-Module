Exercise 3 - Working with multiple files

Many projects that exist are horrible in their own unique way - whether it is how the build system is organized, how the files are organized in subdirectories and modules, or even the style of the code written (if there even is a consistent style). This is an example of a simple "drone" project (it doesn't actually do anything), and the way the files are built is simple and easy to understand. Looking at the `CMakeLists.txt` should be self explanatory, even if you have no experience reading or
writing CMake code yourself.

One thing to note when looking at the `CMakeLists.txt` file is that we have two `add_executable` lines - one of them is for the project as a whole, but we also added a line for a new executable, which was `add_executable(specs-slice specs-slice.cpp specs.cpp)`. This was a line specific to the example slice that we wrote, and it includes the executable name, then the file containing the slice code, then the dependant file from the simple "drone" project. When trying to create your own slice from this example project, follow this guide in order to add an executable for your slice to the `CMakeLists.txt` file. 

If you want to learn more about how CMake works, you can read about it at [this link](https://www.jetbrains.com/help/clion/quick-cmake-tutorial.html).


# Ladda ner en VM samt Kali image
1. Börja med att ladda ner: https://www.virtualbox.org/wiki/Downloads 
2. Ladda ner Kali image, välj VirtualBox: https://www.kali.org/get-kali/#kali-virtual-machines 
3. Lägg 7z-filen där du vill köra din VM: Förslagsvis C- eller F:disken
4. Extrahera filen
5. Starta VirtualBox
6. Tryck Add
7. Välj 7z-filen som heter kali-linux osv...
8. Starta VM
9. Logga in
- username: kali
- password: kali
10. Tryck på applications i din VM
11. Starta terminalen
12. Skriv följande: 
wget https://github.com/CoatiSoftware/Sourcetrail/releases/download/2021.4.19/Sourcetrail_2021_4_19_Linux_64bit.AppImage
13. ge behörig:
chmod +x Sourcetrail_2021_4_19_Linux_64bit.AppImage
14. kör filen:
./Sourcetrail_2021_4_19_Linux_64bit.AppImage
15. installera git om det inte finns:
sudo apt install git
16. OBS !!! Projektet måste vara public
17. clona ner projektet du vill hämta i din VM:
git clone https://github.com/Vedmastaren/Fuzzing-Module.git 
18. I din vm ladda ner följande:
sudo apt update
sudo apt install cmake
cmake --version
19. Ta dig in till ditt nedladdade repo i din VM, i detta fall: Fuzzing-Module
20. cd exercise3
21. mkdir build
22. cd build
23. cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ..
24. Detta ger dig en json fil:
compile_commands.json


# I Ubuntu med sourcetrail
1. Ladda ner sourcetrail: Sourcetrail_2021_4_19_Linux_64bit.tar.gz
2. Cd in till sourcetrail mappen
3. chmod install.sh
4. sudo bash install.sh
5. kör sourcetrail: sourcetrail
6. cd exercise3
7. mkdir build
8. cd build
9. cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ..
10. Detta ger json filen:
compile_commands.json
11. Tryck på New Project i Sourcetrail
12. Namege ditt projekt: sourcetrail
13. Projektets filsökväg, i detta fall: /home/kali/Fuzzing-Module/exercise3
14. Tryck på "Add Source Group"
15. Välj C/C++ from Compilation Database*
16. Tryck på de tre prickarna *** vilket öppnar exercise3
17. Välj sedan compile_commands.json
18. Tryck på Open
19. Tryck på Create
20. Tryck på Start

# I Ubuntu med fuzzing
1. ladda ner afl++ image: sudo docker run --name fuzztest -it aflplusplus/aflplusplus
2. docker ps
3. docker commit + id från ps
4. docker run --name exercise3 -it -v $(pwd):/Fuzzing-Module + sha koden på 10 första tecknen

# Nu är vi inne i docker container
5. cd exercise3 
6. mkdir seeds
7. cd seeds
8. kör detta kommando 5ggr: for i in {0..4}; do dd if=/dev/urandom of=seed_$i bs=64 count=10; done
9. cd ..
10. mkdir build
11. cd build
12. CC=/AFLplusplus/afl-clang-fast CXX=/AFLplusplus/afl-clang-fast++ cmake ..
13. make
14. /AFLplusplus/afl-fuzz -i ../seeds/ -o out -m none -d -- ./specs-slice
