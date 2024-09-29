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

25. Tryck på New Project i Sourcetrail
26. Namege ditt projekt: sourcetrail
27. Projektets filsökväg, i detta fall: /home/kali/Fuzzing-Module/exercise3
28. Tryck på "Add Source Group"
29. Välj C/C++ from Compilation Database*
30. Tryck på de tre prickarna *** vilket öppnar exercise3
31. Välj sedan compile_commands.json
32. Tryck på Open
33. Tryck på Create
34. Tryck på Start

35. Med tanke på att vi gjorde steg 21-24 i vår VM och inte innan vi clonade ner behöver vi göra en SSH-nyckel, följ dessa steg:
36. ssh-keygen -t ed25519 -C "DINEMAIL@gmail.com"\n
37. eval "$(ssh-agent -s)"\nssh-add ~/.ssh/id_ed25519\n
38. cat ~/.ssh/id_ed25519.pub\n
39. Gå in på Github -> Settings -> SSH and GPG keys -> New SSH och klista in allt från steg 38
40. Ändra från HTTP till SSH:
git remote set-url origin git@github.com:DITTGITREPO/Fuzzing-Module.git\n
