typedef unsigned int size_t;
extern void *memcpy ( );
extern void *memmove(unsigned char *, const unsigned char *, int);
extern int memcmp ( );
extern void *memchr (const unsigned char *, unsigned char, int);
extern void *memset ( );
extern void *bcopy(const unsigned char *, unsigned char *, int);
extern void *bzero(unsigned char *, int);
extern int bcmp (const unsigned char *, const unsigned char *, int);
extern char *strcat (char *, const char *);
extern char *strncat(char *, const char *, int);
extern int strcmp ( );
extern int strncmp(const char *,const char *, int);
extern char *strcpy ( );
extern char *strncpy(char *, const char *, int);
extern unsigned int strlen ( );
extern char *index (const char *, char);
extern char *rindex (const char *, char);
extern char *strchr (const char *, char);
extern char *strrchr(const char *, char);
extern char *strpbrk(const char *, const char *);
extern int strspn (const char *, const char *);
extern int strcspn(const char *, const char *);
extern char *strtok (char *, const char *);
extern char *strstr (const char *, const char *);
