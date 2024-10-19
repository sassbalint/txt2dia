"""
Convert simple txt content (coming from stdin) to "Diatar" `.dia` format (on stdout).
see https://github.com/diatar/diatar-lazarus
"""

import sys

def main():
    """Main."""

    slides = [] # list of list of lines

    for line in map(lambda x: x.strip(), sys.stdin):
        if line.startswith('caption=') or line.startswith('kep='):
            slides.append([])
        slides[-1].append(line)

    # header
    print(f"""[main]
diaszam={len(slides)}
utf8=1""")

    # slides
    for cnt_slide, slide in enumerate(slides):

        print(f"\n[{cnt_slide+1}]")

        caption = slide.pop(0)
        print(f"{caption} ") # add space

        if len(slide) > 0: print(f"lines={len(slide)}")

        for cnt_line, line in enumerate(slide):
            print(f"line{cnt_line}={line} ") # add space

        print("soundfile=")
        print("fotofile=")


if __name__ == '__main__':
    main()
