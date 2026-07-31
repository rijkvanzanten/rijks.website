const needsCalcSize = !CSS.supports(
	"block-size",
	"calc-size(auto, size)",
);

if (needsCalcSize) calcSizePolyfill();

function calcSizePolyfill() {
	const images = document.querySelectorAll(
		"#content > :is(p, figure) > img",
	);

	if (!images.length) return;

	const observer = new ResizeObserver((entries) => {
		const rhythm = parseFloat(
			getComputedStyle(document.documentElement).lineHeight,
		);

		for (const { target: image } of entries) {
			if (!image.naturalWidth) continue;

			const naturalHeight =
				image.clientWidth * image.naturalHeight / image.naturalWidth;

			const blockSize =
				`${Math.round(naturalHeight / rhythm) * rhythm}px`;

			if (image.style.blockSize !== blockSize) {
				image.style.blockSize = blockSize;
			}
		}
	});

	images.forEach((image) => observer.observe(image));
}
