# txt2dia
Convert simple txt content to "Diatar" `.dia` format.

## usage

```
make process
```

to create `out.dia` processing all `.txt` files in directory `txts`, or

```
cat FILES | python3 script/txt2dia.py | sed "s/$/^M/" > OUTPUT.dia
```

to process arbitrary input FILES.

## input format

The input have to be a series of slides.

A slide consists of:
 * a caption line beginning with `caption=`; and
 * simple text (or empty) lines.

