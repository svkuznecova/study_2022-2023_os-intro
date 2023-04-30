/*
 * client.c - реализация клиента
 *
 * чтобы запустить пример, необходимо:
 * 1. запустить программу server на одной консоли;
 * 2. запустить программу client на другой консоли.
 */

#include "common.h"

#define MESSAGE "Hello Server!!!\n"

int
main()
{
  int msg, len, i; /* дескриптор для записи в FIFO */
  log int t ;
  for (i=0; i<20; i++)
   {
/* использую функцию sleep для приостановки работы клиента  */
     sleep(3);
       t = time(NULL);
      printf("FIFO Client...\n");

  /* получим доступ к FIFO */
  if((msg = open(FIFO_NAME, O_WRONLY)) < 0)
  {
      fprintf(stderr, "%s: Невозможно открыть FIFO (%s)\n",
              __FILE__, strerror(errno));
      exit(-1);
  }

  /* передадим сообщение серверу */
 len = strlen(MESSAGE);
 
if(write(msg, MESSAGE, len) != len)
    {
      fprintf(stderr, "s: Ошибка записи в FIFO (%s)\n",
              __FILE__, strerror(errno));
      exit(-2);
    }

  /* закроем доступ к FIFO */
  close(msg);
}
  exit(0);
}
