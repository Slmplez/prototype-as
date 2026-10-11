/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.ImageData
 *  org.eclipse.swt.graphics.PaletteData
 *  org.eclipse.swt.graphics.RGB
 */
package org.eclipse.ui.internal.decorators;

import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.RGB;

class DecorationImageBuilder {
    private static final int TOP_LEFT = 0;
    private static final int TOP_RIGHT = 1;
    private static final int BOTTOM_LEFT = 2;
    private static final int BOTTOM_RIGHT = 3;
    private static final int UNDERLAY = 4;
    private static final PaletteData ALPHA_PALETTE;
    private static final PaletteData BW_PALETTE;

    static {
        RGB[] rgbs = new RGB[256];
        int i = 0;
        while (i < rgbs.length) {
            rgbs[i] = new RGB(i, i, i);
            ++i;
        }
        ALPHA_PALETTE = new PaletteData(rgbs);
        BW_PALETTE = new PaletteData(new RGB[]{new RGB(0, 0, 0), new RGB(255, 255, 255)});
    }

    DecorationImageBuilder() {
    }

    private static int getTransparencyDepth(ImageData data) {
        if (data.maskData != null && data.depth == 32) {
            int i = 0;
            while (i < data.data.length) {
                if (data.data[i] != 0) {
                    return 8;
                }
                i += 4;
            }
        }
        if (data.maskData != null || data.transparentPixel != -1) {
            return 1;
        }
        if (data.alpha != -1 || data.alphaData != null) {
            return 8;
        }
        return 0;
    }

    private static ImageData getTransparency(ImageData data, int transparencyDepth) {
        if (data == null) {
            return null;
        }
        if (transparencyDepth == 1) {
            return data.getTransparencyMask();
        }
        ImageData mask = null;
        if (data.maskData != null && data.depth == 32) {
            ImageData m = data.getTransparencyMask();
            mask = new ImageData(data.width, data.height, 8, ALPHA_PALETTE, data.width, new byte[data.width * data.height]);
            int y = 0;
            while (y < data.height) {
                int x = 0;
                while (x < data.width) {
                    int alpha = data.getPixel(x, y) & 0xFF;
                    if (alpha == 0 && m.getPixel(x, y) != 0) {
                        alpha = 255;
                    }
                    mask.setPixel(x, y, alpha);
                    ++x;
                }
                ++y;
            }
        } else if (data.maskData != null || data.transparentPixel != -1) {
            ImageData m = data.getTransparencyMask();
            mask = new ImageData(data.width, data.height, 8, ALPHA_PALETTE, data.width, new byte[data.width * data.height]);
            int y = 0;
            while (y < mask.height) {
                int x = 0;
                while (x < mask.width) {
                    mask.setPixel(x, y, m.getPixel(x, y) != 0 ? -1 : 0);
                    ++x;
                }
                ++y;
            }
        } else if (data.alpha != -1) {
            mask = new ImageData(data.width, data.height, 8, ALPHA_PALETTE, data.width, new byte[data.width * data.height]);
            int i = 0;
            while (i < mask.data.length) {
                mask.data[i] = (byte)data.alpha;
                ++i;
            }
        } else if (data.alphaData != null) {
            mask = new ImageData(data.width, data.height, 8, ALPHA_PALETTE, data.width, data.alphaData);
        } else {
            mask = new ImageData(data.width, data.height, 8, ALPHA_PALETTE, data.width, new byte[data.width * data.height]);
            int i = 0;
            while (i < mask.data.length) {
                mask.data[i] = -1;
                ++i;
            }
        }
        return mask;
    }

    private static void composite(ImageData dst, ImageData src, int xOffset, int yOffset) {
        block7: {
            block6: {
                if (dst.depth != 1) break block6;
                int y = 0;
                int dstY = y + yOffset;
                while (y < src.height) {
                    int x = 0;
                    int dstX = x + xOffset;
                    while (x < src.width) {
                        if (dstX >= 0 && dstX < dst.width && dstY >= 0 && dstY < dst.height && src.getPixel(x, y) != 0) {
                            dst.setPixel(dstX, dstY, 1);
                        }
                        ++x;
                        ++dstX;
                    }
                    ++y;
                    ++dstY;
                }
                break block7;
            }
            if (dst.depth != 8) break block7;
            int y = 0;
            int dstY = y + yOffset;
            while (y < src.height) {
                int x = 0;
                int dstX = x + xOffset;
                while (x < src.width) {
                    if (dstX >= 0 && dstX < dst.width && dstY >= 0 && dstY < dst.height) {
                        int srcAlpha = src.getPixel(x, y);
                        int dstAlpha = dst.getPixel(dstX, dstY);
                        dstAlpha += (srcAlpha - dstAlpha) * srcAlpha / 255;
                        dst.setPixel(dstX, dstY, dstAlpha);
                    }
                    ++x;
                    ++dstX;
                }
                ++y;
                ++dstY;
            }
        }
    }

    static Image compositeImage(Device device, ImageData base, ImageData[] overlay) {
        Image img;
        if (base == null) {
            return null;
        }
        Image image = new Image(device, new ImageData(base.width, base.height, 24, new PaletteData(255, 65280, 0xFF00000)));
        GC gc = new GC((Drawable)image);
        int maskDepth = 0;
        int baseMaskDepth = 0;
        ImageData src = overlay.length > 4 ? overlay[4] : null;
        ImageData underlay = src;
        if (src != null) {
            maskDepth = Math.max(maskDepth, DecorationImageBuilder.getTransparencyDepth(src));
            img = new Image(device, src);
            gc.drawImage(img, 0, 0);
            img.dispose();
        }
        src = base;
        if (base != null) {
            baseMaskDepth = DecorationImageBuilder.getTransparencyDepth(src);
            maskDepth = Math.max(maskDepth, baseMaskDepth);
            img = new Image(device, src);
            gc.drawImage(img, 0, 0);
            img.dispose();
        }
        ImageData topLeft = src = overlay[0];
        if (src != null) {
            maskDepth = Math.max(maskDepth, DecorationImageBuilder.getTransparencyDepth(src));
            Image img2 = new Image(device, src);
            gc.drawImage(img2, 0, 0);
            img2.dispose();
        }
        ImageData topRight = src = overlay[1];
        if (src != null) {
            maskDepth = Math.max(maskDepth, DecorationImageBuilder.getTransparencyDepth(src));
            Image img3 = new Image(device, src);
            gc.drawImage(img3, base.width - src.width, 0);
            img3.dispose();
        }
        ImageData bottomLeft = src = overlay[2];
        if (src != null) {
            maskDepth = Math.max(maskDepth, DecorationImageBuilder.getTransparencyDepth(src));
            Image img4 = new Image(device, src);
            gc.drawImage(img4, 0, base.height - src.height);
            img4.dispose();
        }
        ImageData bottomRight = src = overlay[3];
        if (src != null) {
            maskDepth = Math.max(maskDepth, DecorationImageBuilder.getTransparencyDepth(src));
            Image img5 = new Image(device, src);
            gc.drawImage(img5, base.width - src.width, base.height - src.height);
            img5.dispose();
        }
        gc.dispose();
        if (baseMaskDepth > 0) {
            ImageData newData = image.getImageData();
            image.dispose();
            ImageData mask = null;
            switch (maskDepth) {
                case 1: {
                    mask = new ImageData(base.width, base.height, maskDepth, BW_PALETTE);
                    break;
                }
                case 8: {
                    mask = new ImageData(base.width, base.height, maskDepth, ALPHA_PALETTE, base.width, new byte[base.width * base.height]);
                }
            }
            src = DecorationImageBuilder.getTransparency(underlay, maskDepth);
            if (src != null) {
                DecorationImageBuilder.composite(mask, src, 0, 0);
            }
            if ((src = DecorationImageBuilder.getTransparency(base, maskDepth)) != null) {
                DecorationImageBuilder.composite(mask, src, 0, 0);
            }
            if ((src = DecorationImageBuilder.getTransparency(topLeft, maskDepth)) != null) {
                DecorationImageBuilder.composite(mask, src, 0, 0);
            }
            if ((src = DecorationImageBuilder.getTransparency(topRight, maskDepth)) != null) {
                DecorationImageBuilder.composite(mask, src, mask.width - src.width, 0);
            }
            if ((src = DecorationImageBuilder.getTransparency(bottomLeft, maskDepth)) != null) {
                DecorationImageBuilder.composite(mask, src, 0, mask.height - src.height);
            }
            if ((src = DecorationImageBuilder.getTransparency(bottomRight, maskDepth)) != null) {
                DecorationImageBuilder.composite(mask, src, mask.width - src.width, mask.height - src.height);
            }
            switch (maskDepth) {
                case 1: {
                    newData.maskData = mask.data;
                    newData.maskPad = mask.scanlinePad;
                    break;
                }
                case 8: {
                    newData.alphaData = mask.data;
                }
            }
            image = new Image(device, newData);
        }
        return image;
    }
}

