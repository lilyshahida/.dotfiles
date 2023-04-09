# My Dotfiles
         These are my dotfile configuration files for different software in Bash.
#Vimrc

My vimrc file is a configuration file. Inside, I have included different settings that will affect how Vim treats text files. 
	Commands: 
	'syntax on': enables syntax highlighting, which highlights different elements of the code based on their type (e.g. keywords, strings, comments, etc.) to make it easier to read and understand.
	'set number': displays line numbers in the left-hand margin of the editor window, making it easier to navigate through a file.
	'set autoindent': automatically indents new lines 
	'set ruler': displays a ruler at the bottom of the editor and shows file type 
	'color elflord': sets the color scheme to "elflord"
	'autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0': sets certain parameters specifically for "make" files. Disables the use of tabs for indentation, makes each indentation 8 spaces wide. 


#bashrccustom
	Environment Variables: sets the environment variable called PATH to include the current directory. 

	Aliases: (essentially quick commands) 
	'cdd': moves up one directory level
	'lsa': lists all files and directories
	'lsl': list files and directories in long form
	'lsal': lists all files and directories (including hidden ones) in long form
	'targz': creates a compressed archive of a directory 
	'untar': decompresses a compressed archive 
	'alias cselab="ssh -p 222 lshahida@L-1D43-03.cse.sc.edu"': defines the alias to connect to the remote server. 
	'trash': moves files and directories to a trash directory instead of permanently deleting them.

Functions: 
	'targzfunc': takes a directory name and compresses the contents into a tarball.
	'untarfunc': decompresses a tarball 

#cleanup.sh
	This script:
	1. Removes the .vimrc file from the home directory
	2. Removes a line from the .bashrc file in the home directory of the user who executes the script. The line being removed is specified using the 'sed' command and removes any instance of 'source ~/.dotfiles/etc/bashrc custom' from the file. 
	3. Removes the .TRASH directory from the home directory.

#linux.sh
	This script: 
	1. Checks if the operating system is Linux. If not, there will be an error message.
	2. If the directory '$HOME/.TRASH' does not exist, the script creates it. 
	3. If a file named '.vimrc' exists in the home directory, the script renames it to '.bup vimrc'
	4. The script copies '/etc/vimrc' to the .vimrc file 
	5. The script appends the line 'source ~/.dotfiles/etc/bashrccustom to the .bashrc file. 

#Makefile
	This Makefile: 
	1. Sets two variables that specify the paths to 2 scripts 
	2. Defines two targets
	3. The 'linux' target depends on the 'clean' target and is executed first. It sets the execution permission ('chmod +x') on the 'LINUX SCRIPT' and then runs it. 
	4. The 'clean' target sets the execution permission ('chmod +x') on the 'CLEAN SCRIPT) and then runs it. 
