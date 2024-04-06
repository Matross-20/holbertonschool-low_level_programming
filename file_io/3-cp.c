#include "main.h"
#include <stdlib.h>

/**
 * main - copies one file to another
 * @argc: number of arguments
 * @argv: filenames to reference
 *
 * Return: 1 on success, -1 on failure
 */

int main(int argc, char *argv[])
{
int fd1, fd2;
ssize_t written, writeCheck;
char buf[1024];

if (argc != 3)
dprintf(STDERR_FILENO, "Usage: cp file_from file_to\n"), exit(97);
fd1 = open(argv[1], O_RDONLY);
if (fd1 == -1)
{
dprintf(STDERR_FILENO, "Error: Can't read from file %s\n", argv[1]);
exit(98);
}
fd2 = open(argv[2], O_WRONLY | O_CREAT | O_TRUNC, 0664);
if (fd2 < 0)
dprintf(STDERR_FILENO, "Error: Can't write to %s\n", argv[2]), exit(99);
do {
written = read(fd1, buf, 1024);
if (written == -1)
{
dprintf(STDERR_FILENO, "Error: Can't read from file %s\n", argv[1]);
exit(98);
}
writeCheck = write(fd2, buf, written);
if (writeCheck == -1)
dprintf(STDERR_FILENO, "Error: Can't write to %s\n", argv[2]), exit(99);
} while (written == 1024);
if (close(fd1) == -1)
dprintf(STDERR_FILENO, "Error: Can't close fd %d", fd1), exit(100);
if (close(fd2) == -1)
dprintf(STDERR_FILENO, "Error: Can't close fd %d", fd2), exit(100);
return (0);
}
