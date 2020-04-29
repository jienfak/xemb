<mkconfig

CFLAGS =
LDFLAGS = -lm

SRC = `{ls *.c}
OBJ = ${SRC:%.c=%.o}
TGT = $NAME

all :Q: $TGT 
	echo -n
$TGT : $OBJ
	$LD $LDFLAGS -o $target $prereq
%.o :V: %.c
	$CC $CFLAGS -c -o $target $prereq
%.c :
	
%.h :
	
clean :V:
	rm -rf $TGT *.o
install :V: $TGT
	cp $TGT $ROOT/bin
	chmod 0755 $ROOT/bin/$TGT
	cp $TGT.1 $ROOT/share/man/man1
	chmod 0644 $ROOT/share/man/man1/$TGT.1
