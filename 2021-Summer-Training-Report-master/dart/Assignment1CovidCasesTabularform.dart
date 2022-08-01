

// https://www.covid19india.org/
// CovidCases


import 'dart:io';
void main()
{

  Map Maharashtra={'Confirmed': 6229596, 'Active':94593,'Recovered':6000911, 'Deceased':130753, 'Tested':5546565};
  Map Kerala={'Confirmed': 3187716, 'Active':126396,'Recovered':3045310, 'Deceased':15512,'Tested':554665};
  Map Karanataka={'Confirmed': 2886702, 'Active':26256,'Recovered':2824197, 'Deceased':36226,'Tested':56565};
  Map TamilNadu={'Confirmed': 2539277, 'Active':26717,'Recovered':2478778, 'Deceased':33782,'Tested':554685};
  Map AndhraPradesh={'Confirmed': 1946749, 'Active':23939,'Recovered':1909613, 'Deceased':13197,'Tested':554667565};
  Map UttarPradesh={'Confirmed': 1708005, 'Active':1036,'Recovered':1684230, 'Deceased':22739,'Tested':553565};
  var states={'Maharashtra': Maharashtra,'Kerala': Kerala, 'Karanataka': Karanataka, 'TamilNadu':TamilNadu, 'AndhraPradesh':AndhraPradesh,'UttarPradesh': UttarPradesh};


  List stateskeys=states.keys.toList();
  List statesvalues=states.values.toList();
  // print(stateskeys);
  // print(statesvalues);
  print("#"*155);
  print("\t\t\t\t\tStates with number of cases ");
  print("#"*155);
  
  List caseskeys=statesvalues[0].keys.toList();
    //formatting
  int max=0;
  for(int u=0;u<statesvalues.length;u++)
  {
    
    for(int w=0;w<caseskeys.length;w++)
    {
      if (max<statesvalues[u][caseskeys[w]].toString().length)
      {
        
        max=statesvalues[u][caseskeys[w]].toString().length;

      }
    }
  }
 
  int maxlength=0;
  for(int v=0;v<caseskeys.length;v++)
  {
    if (maxlength<caseskeys[v].length)
    {
      maxlength=caseskeys[v].length;
    }
  }
  
  if (max>maxlength)
  {
    maxlength=max;
  }
  else if(maxlength>max)
  {
    max=maxlength;
  }
   
  stdout.write("| \t States \t |");
  
  for(int r=0;r<caseskeys.length;r++)
  {
    stdout.write(" \t ${caseskeys[r]}");
    if ([caseskeys[r]].length<maxlength)
      {

        int temp4=caseskeys[r].length;
        int temp5=maxlength-temp4;

        for(int y=0;y<temp5;y++)
        {
          stdout.write(" ");
        }
        
        
      }
    stdout.write("\t|");
  }
  

  for(int i=0;i<statesvalues.length;i++)
  {
    stdout.write("\n| \t ${stateskeys[i]} \t |");
    for(int s=0;s<caseskeys.length;s++)
    {
    stdout.write(" \t ${statesvalues[i][caseskeys[s]]}");
    if (statesvalues[i][caseskeys[s]].toString().length<max)
    {
      var temp9=statesvalues[i][caseskeys[s]].toString();
      var temp10=temp9.length;
      int temp3=max-temp10;
      
      for(int y=0;y<temp3;y++)
      {
        stdout.write(" ");
      }
    }
    stdout.write("\t|");
    
    }
    
  }
  print("\n\n");
  print("*"*155);
  print("Types of cases are : ${caseskeys}");
  for(int p=0;p<caseskeys.length;p++)
  {
    print("${caseskeys[p]}: ${p}");
  }

  print("put variable typeofcases value to 0/1/2/3 according to what you need for sorting according to that cases.");

  //Sorting starts
  int typeofcases=1;
  print("for the time being, typeofcases=${typeofcases}--> ${caseskeys[typeofcases]}");
  print("*"*155);
  print("\n\n\n");


  
  for (int j=0;j<statesvalues.length;j++)
  {
    for (int k=j+1; k<statesvalues.length;k++)
    {
      if (statesvalues[k][caseskeys[typeofcases]]<statesvalues[j][caseskeys[typeofcases]])
      {
        
        var temp=statesvalues[j];
        statesvalues[j]=statesvalues[k];
        statesvalues[k]=temp; 
        
        
        String temp2=stateskeys[j];
        stateskeys[j]=stateskeys[k];
        stateskeys[k]=temp2;
      }
    }
  }
  print("#"*155);
  print("\t\t\t\t\tAfter sorting according to the ${caseskeys[typeofcases]} cases in descending order.");
  print("#"*155);
  stdout.write("| \t States \t |");
  
  for(int r=0;r<caseskeys.length;r++)
  {
    stdout.write(" \t ${caseskeys[r]}");
    if ([caseskeys[r]].length<maxlength)
      {

        int temp4=caseskeys[r].length;
        int temp5=maxlength-temp4;

        for(int y=0;y<temp5;y++)
        {
          stdout.write(" ");
        }
        
        
      }
    stdout.write("\t|");
  }
  

  for(int i=0;i<statesvalues.length;i++)
  {
    stdout.write("\n| \t ${stateskeys[i]} \t |");
    for(int s=0;s<caseskeys.length;s++)
    {
    stdout.write(" \t ${statesvalues[i][caseskeys[s]]}");
    if (statesvalues[i][caseskeys[s]].toString().length<max)
    {
      var temp9=statesvalues[i][caseskeys[s]].toString();
      var temp10=temp9.length;
      int temp3=max-temp10;
      
      for(int y=0;y<temp3;y++)
      {
        stdout.write(" ");
      }
    }
    stdout.write("\t|");
    
    }
    
  }
  print("\n"*3);
}
