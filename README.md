# yt-dlp-helper
batch file for guiding users in the command prompt to downloading music from websites using yt-dlp. This is my first program that im publishing so pls tell me if something is wrong.

## This will throw a warning from windows saying that the file is unsigned - do not worry, that's normal for this. ##

# what is it?
read the description 
no but seriously its just a simple batch file that uses yt-dlp to download music \
if you want more customization you can use yt-dlp from the command line - this batch file is NOT required to run yt-dlp or any other varient, this exists solely to have a simpler time using yt-dlp if you just want an easier time. 
# Dependencies:
- yt-dlp (must be renamed to yt-dlp.exe)
- yt-dlp.exe install folder MUST be on PATH and the folder must contain yt-dlp in it.
- This script (for now) is Windows only 
# Installation Instructions 
### grab yt-dlp from the [official distro](https://github.com/yt-dlp/yt-dlp)
usually this will be _yt-dlp_x86.exe_ 
### move yt-dlp to any folder that contains the name yt-dlp inside it 
(mine is "yt-dlp (soundcloud downloader)")
### add folder containing yt-dlp into windows PATH
this is hard for people who haven't dealt with windows environment variables

go to windows settings ( Win+I )\
follow this: System > About > Advanced System Settings > Environment Variables... > PATH ( or Path )\
click edit, then select "New" and paste the path to your install folder inside the new line

<sub>**DO NOT DELETE OR MODIFY ANY OTHER LINES IN THIS VARIABLE** </sub>

![image of path example](https://i.imgur.com/3zvbwhT.png)\
Hit OK on all dialog boxes

This makes yt-dlp avaliable from anywhere in your system, not just the download folder. 
## how to use?
To run you double click the file in file explorer or you can run the batch file in a command prompt or in powershell\
An incorrect installation will appear as follows:\
![https://i.imgur.com/UApRbxf.png](https://i.imgur.com/UApRbxf.png)\
A correct installation will appear as follows:\
![https://i.imgur.com/WdT8DhL.png](https://i.imgur.com/WdT8DhL.png)\
Input the URL of the song you want eg. "https://soundcloud.com/aloboi/its-ok-just-raw" \
copy and paste (highlight and right click) the correct format you want to download\
input where you want to save this file ( Default is C:\Users\username\Downloads )\
<sup>**if you want to use the default, then press enter**</sup>\
Thats it. The program will ask if you want to open the location it saved it to, and then exit.


Hope that if someone stumbles upon this repository that you have a good day 😁
