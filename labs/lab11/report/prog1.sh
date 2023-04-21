#!/bin/bash
iflag=0; oflag=0; pflag=0; Cflag=0; nflag=0;    #Инициализация переменных-флагов, присваиваем им 0
while getopts i:o:p:Cn optletter                #Анализируем командную строку на наличие опций
do case $optletter in                           #Если опция присутствует в строке, то присваиваем ей 1
       i) iflag=1; ival=$OPTARG;;
       o) oflag=1; oval=$OPTARG;;
       p) pflag=1; pval=$OPTARG;;
       C) Cflag=1;;
       n) nflag=1;;
       *) echo illegal option $optletter
   esac
done
if (($pflag==0))                                #Проверка, указан ли шаблон для поиска   
then echo "Шаблон не найден"
else
    if (($iflag==0))
    then echo "Файл не найден"
    else
	if ((oflag==0))
	then if (($Cflag==0))
	     then if ((nflag==0))
		  then grep $pval $ival
		  else grep -n $pval $ival
		  fi
	     else if (($nflag==0))
		  then grep -i $pval $ival
		  else grep -i -n $pval $ival
		  fi
	     fi
	else if (($Cflag==0))
	     then if (($nflag==0))
		  then grep $pval $ival > $oval
		  else grep -n $pval $ival > $oval
		  fi
	     else if (($nflag==0))
		  then grep -i $pval $ival > $oval
		  else grep -i -n $pval $ival > $oval
		  fi
	     fi
	fi
    fi
fi  

