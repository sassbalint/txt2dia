# txt2dia
Convert simple txt content to "Diatar" `.dia` format.

## usage

```
make process
```

to create `outs/out.dia` processing all `.txt` files in directory `txts`, or

```
make process I="txts/0[14569]* txts/1[01]*" O=outs/out_c.dia
```

to create `outs/out_c.dia` from the same data omitting the unchanging parts.

```
make 20241020
```

to create `outs/20241020.dia` for this particular Sunday

```
cat FILES | python3 script/txt2dia.py | sed "s/$/^M/" > outs/OUTPUT.dia
```

to process arbitrary input FILES.

## input format

The input have to be a series of slides.

A slide consists of:
 * a caption line beginning with `caption=`; and
 * simple text (or empty) lines.

## requirements

Ubuntu. May work on other linuxes. May work on Windows somehow.

