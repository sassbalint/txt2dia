# txt2dia
Convert simple txt content to "Diatar" `.dia` format.

## usage

```
make process
```

to create `out.dia` processing all `.txt` files in directory `txts`, or

```
make process I="txts/0[14569]* txts/1[01]*" O=out_c.dia
```

to create `out_c.dia` from the same data omitting the unchanging parts.

```
cat FILES | python3 script/txt2dia.py | sed "s/$/^M/" > OUTPUT.dia
```

to process arbitrary input FILES.

## input format

The input have to be a series of slides.

A slide consists of:
 * a caption line beginning with `caption=`; and
 * simple text (or empty) lines.

## requirements

Ubuntu. May work on other linuxes. May work on Windows somehow.

