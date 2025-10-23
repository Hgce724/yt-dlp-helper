# yt-dlp-helper
>[!NOTE]
>THIS IS NOT REQUIRED FOR yt-dlp AT ALL

Batch file for guiding users in the command prompt to downloading music from websites using yt-dlp. This is my first program that im publishing so pls tell me if something is wrong.

please please please tell me if i got something wrong in the code (make an issue)
# What is it?
Read the description 

No but seriously its just a simple batch file that uses yt-dlp to download music from websites like soundcloud 

If you want more customization you can use yt-dlp from the command line - this batch file is NOT required to run yt-dlp or any other variant, this exists solely to have a simpler time using yt-dlp if you just want an easier time. 

Technically you can download youtube videos but it doesn't work as of version 2025.10.14

I probably should have written this in python but I wanted to learn batch.
# Dependencies:
- [yt-dlp](https://github.com/yt-dlp/yt-dlp) (must be renamed to yt-dlp.exe)
  - while making this, i used yt-dlp 2025.10.14
  - newer versions should work but stuff should be the same on newer versions - _if something goes wrong, use the older version_
- yt-dlp.exe install folder MUST be on PATH and the folder must contain yt-dlp in it.
- This script (for now) is Windows only 
# Installation Instructions 
>[!WARNING]
>Running the batch file will cause it to throw an error initially stating that the program is unsigned.\
> This is fine, you can check the code yourself if you don't trust me.

![https://i.imgur.com/0TjjMEH.png](https://i.imgur.com/0TjjMEH.png)
### Grab yt-dlp from the [official distro](https://github.com/yt-dlp/yt-dlp)
Usually this will be _yt-dlp_x86.exe_  \
Rename it from _yt-dlp_x86.exe_ to yt-dlp.exe\
Download the batch file from the releases tab on the right
### Move yt-dlp to any folder that contains the name yt-dlp inside it 
(mine is "yt-dlp (soundcloud downloader)")\
You might want to put the batch file into the same folder for ease of access
### Add folder containing yt-dlp into windows PATH
>[!NOTE]
>__You may ignore this step if you only run it in the same folder as yt-dlp__
>This just adds functionality for system wide use, like if you wanted to run yt-dlp from anywhere this is the same process

This is hard for people who haven't dealt with windows environment variables

>[!WARNING]
>__DO *NOT* MAKE DOWNLOADS A PATH FOLDER__\
><sub>**DO NOT DELETE OR MODIFY ANY OTHER LINES IN THIS VARIABLE** </sub>

Go to windows settings ( Win+I )\
Follow this: __System > About > Advanced System Settings > Environment Variables... > PATH ( or Path )__\
Click edit, then select "New" and paste the path to your install folder inside the new line



![image of path example](https://i.imgur.com/3zvbwhT.png)\
Hit OK on all dialog boxes

This makes yt-dlp avaliable from anywhere in your system, not just inside the folder. 
## How to use?
To run you double click the file in file explorer or you can run the batch file in a command prompt or in powershell\
An non-PATH installation will appear as follows:\
![https://i.imgur.com/BfAjKBH.png](https://i.imgur.com/BfAjKBH.png)\
A full installation will appear as follows:\
![https://i.imgur.com/WdT8DhL.png](https://i.imgur.com/WdT8DhL.png)
### What to put during execution of the file
Input the URL of the song you want eg. "https://soundcloud.com/aloboi/its-ok-just-raw"

Copy and paste (highlight and right click) the correct format you want to download

Input where you want to save this file ( Default is C:\Users\username\Downloads )\
<sup>**If you want to use the default, then press enter**</sup>


Thats it. The program will ask if you want to open the location it saved it to, and then exit.


Hope that if someone stumbles upon this repository that you have a good day
