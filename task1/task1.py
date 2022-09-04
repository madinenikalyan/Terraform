Import os
Import threading

Def replace():
Texttofind='Docker'
Texttoreplace='K8S'
Source path = os.listdir('folder1/')

For file in sourcepath:

  Inputfile='folder1/'+file
  Print('conversion is going for:'+ inputfile)

With open (inputfile,'r') as inputfile:
Filedata=inputfile.read()
Freq=0
Freq=filedata.count(texttofind)

Destinationpath='folder2/'+file
Filedata= filedata.replace(texttofind,texttoreplace)

With open(destinationpath,'w') as file:
File.write(filedata)
Print(Total %d record replaced' %freq)

t1=threading.thread(target=replace,args())

t1.start()