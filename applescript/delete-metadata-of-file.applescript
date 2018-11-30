# Usage: Save this on the desktop as an application. Now, you can drag and drop as a batch operation to delete the metadata key. 
# Ref  : http://hints.macworld.com/article.php?story=20101206161739274

on deleteWhereFrom(fileToClean)
 try
  set posixPath to quoted form of POSIX path of fileToClean
  do shell script "xattr -d com.apple.metadata:kMDItemWhereFroms " & posixPath
 end try
end deleteWhereFrom
on open imgs
 repeat with i in imgs
  deleteWhereFrom(i)
 end repeat
end open
on run
 set imgs to choose file with multiple selections allowed
 repeat with i in imgs
  deleteWhereFrom(i)
 end repeat
end run

