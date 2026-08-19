---
title: "Vertical Rhythm"
date: 2026-08-18
---

When building out the CSS for this website, I took some extra time to perfect the vertical rhythm. This is very often overlooked, and is one of those things you can't really tell, but definitely feel.

If you look closely, you might notice how the date of this article aligns with the home link in the left nav. You might also notice how the intro paragraph aligns exactly with the projects link.

This same vertical rhythm applies to everything. All the spacing and alignment is done based on a line-height-based grid.

<button onclick="document.body.classList.toggle('line-height-grid')">Toggle grid</button>

Back in the day, this was a huge pain in the ass to achieve. Different typefaces have different bounding boxes, and no two font sizes are the same, so you never had any solid idea of what the x-height or cap height of a given piece of text was.
I've done many hacky implementations in the past to make this work with negative margins and paddings. Luckily nowadays implementing something like this has become a lot easier. There are basically three ingredients to make this work:

## 1. The `rlh` unit

Starting in the [level 4](https://www.w3.org/TR/css-values-4/#font-relative-lengths) CSS spec, the `lh` and `rlh` (line-height and root-line-height respectively) units can be used to match the exact line-height of a piece of text. While I initially kinda treated it as a _make an inline thumbnail match the text height_ utility, I later realized this is a magic key in making margins and paddings vertically consistent. Previously I'd have a single `--space` variable which I'd use in a `calc()` to make sure it was always a multiple of a shared starting point, but by using the `lh` unit you kinda get that behavior out of the box.

## 2. Text box trimming

The biggest issue used to be the inconsistent box around type. The size of a line of text is.. well... it's a bit of a mystery to me. It's technically a formula of glyph bounds and leading, but in reality I've found myself oftentimes fighting the inconsistencies in type. Oftentimes the actual box size of a line of text feels completely arbitrary. You might have found yourself looking puzzled at something like this in the DevTools yourself.

![Text box trim example 1](/assets/260815A/text-box-trim-1.svg)

When it comes to designing a vertical rhythm, this makes it very difficult to have a consistent set of margins. The `margin-bottom` of a piece of text like this is calculated from the bottom of the text line box, not the baseline of the text itself.

Luckily, modern CSS has a solution baked in: `text-box`. This property allows you to cut off the over and under edges of the text line box. On this very website, I use `text-box: trim-both cap alphabetic;` to make sure the text box doesn't extend from the cap height and baseline on the top and bottom respectively:

![Text box trim example 2](/assets/260815A/text-box-trim-2.svg)

That in turn means that the margin bottom on those headings set in `rlh` makes the next lines of text align perfectly to the rhythm grid.

## 3. Image heights

The hardest part of making this grid consistent is dynamically sized images. I wanted to make sure that:

- image heights always round to the closest rlh value
- image widths never exceed the max number of grid columns at that breakpoint
- never get clipped — I'd rather them shrink below the grid column width than have them cut off oddly

I immediately assumed this was going to be a JavaScript exercise — and I was partially right for polyfill reasons — but here again modern CSS came to the rescue. I had no idea the specs around this were as far along as they were, which was a pleasant surprise.

[`calc-size`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/calc-size) combined with the `round` function allows us to round the height of images to the nearest multiple of 1rlh, which makes it align perfectly to the grid.

Note: as of time of writing, this syntax is only supported on Chromium-based browsers. That already covers a large chunk of web-users, but isn't fool proof. You could decide to just gracefully degrade and not care about the exact vertical rhythm, or you could add a relatively simple polyfill in JS. On this particular page, that polyfill looks as follows:

```js
const needsCalcSize = !CSS.supports("block-size", "calc-size(auto, size)");

if (needsCalcSize) calcSizePolyfill();

function calcSizePolyfill() {
	const images = document.querySelectorAll("#content > :is(p, figure) > img");

	if (!images.length) return;

	const observer = new ResizeObserver((entries) => {
		const rhythm = parseFloat(getComputedStyle(document.documentElement).lineHeight);

		for (const { target: image } of entries) {
			if (!image.naturalWidth) continue;

			const naturalHeight = (image.clientWidth * image.naturalHeight) / image.naturalWidth;

			const blockSize = `${Math.round(naturalHeight / rhythm) * rhythm}px`;

			if (image.style.blockSize !== blockSize) {
				image.style.blockSize = blockSize;
			}
		}
	});

	images.forEach((image) => observer.observe(image));
}
```

---

Good vertical rhythm is something that the reader doesn't notice, but definitely can feel. Historically it was unreasonably difficult to actually get right, and was therefore often overlooked or omitted on purpose. With modern CSS (finally) making this level of polish relatively straightforward, there really isn't a good reason anymore to ignore the vertical rhythm of your designs.
