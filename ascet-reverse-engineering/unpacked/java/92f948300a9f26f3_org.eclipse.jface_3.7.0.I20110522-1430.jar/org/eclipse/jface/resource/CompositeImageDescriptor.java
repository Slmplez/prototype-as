/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.ImageData
 *  org.eclipse.swt.graphics.PaletteData
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.RGB
 */
package org.eclipse.jface.resource;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;

public abstract class CompositeImageDescriptor
extends ImageDescriptor {
    private ImageData imageData;

    protected CompositeImageDescriptor() {
    }

    protected abstract void drawCompositeImage(int var1, int var2);

    protected final void drawImage(ImageData src, int ox, int oy) {
        ImageData dst = this.imageData;
        PaletteData srcPalette = src.palette;
        ImageData srcMask = null;
        int alphaMask = 0;
        int alphaShift = 0;
        if (src.maskData != null) {
            srcMask = src.getTransparencyMask();
            if (src.depth == 32) {
                alphaMask = ~(srcPalette.redMask | srcPalette.greenMask | srcPalette.blueMask);
                while (alphaMask != 0 && (alphaMask >>> alphaShift & 1) == 0) {
                    ++alphaShift;
                }
            }
        }
        int srcY = 0;
        int dstY = srcY + oy;
        while (srcY < src.height) {
            int srcX = 0;
            int dstX = srcX + ox;
            while (srcX < src.width) {
                if (dstX >= 0 && dstX < dst.width && dstY >= 0 && dstY < dst.height) {
                    int srcPixel = src.getPixel(srcX, srcY);
                    int srcAlpha = 255;
                    if (src.maskData != null) {
                        if (src.depth == 32) {
                            srcAlpha = (srcPixel & alphaMask) >>> alphaShift;
                            if (srcAlpha == 0) {
                                srcAlpha = srcMask.getPixel(srcX, srcY) != 0 ? 255 : 0;
                            }
                        } else if (srcMask.getPixel(srcX, srcY) == 0) {
                            srcAlpha = 0;
                        }
                    } else if (src.transparentPixel != -1) {
                        if (src.transparentPixel == srcPixel) {
                            srcAlpha = 0;
                        }
                    } else if (src.alpha != -1) {
                        srcAlpha = src.alpha;
                    } else if (src.alphaData != null) {
                        srcAlpha = src.getAlpha(srcX, srcY);
                    }
                    if (srcAlpha != 0) {
                        int dstAlpha;
                        int dstBlue;
                        int dstGreen;
                        int dstRed;
                        int srcBlue;
                        int srcGreen;
                        int srcRed;
                        if (srcPalette.isDirect) {
                            srcRed = srcPixel & srcPalette.redMask;
                            srcRed = srcPalette.redShift < 0 ? srcRed >>> -srcPalette.redShift : srcRed << srcPalette.redShift;
                            srcGreen = srcPixel & srcPalette.greenMask;
                            srcGreen = srcPalette.greenShift < 0 ? srcGreen >>> -srcPalette.greenShift : srcGreen << srcPalette.greenShift;
                            srcBlue = srcPixel & srcPalette.blueMask;
                            srcBlue = srcPalette.blueShift < 0 ? srcBlue >>> -srcPalette.blueShift : srcBlue << srcPalette.blueShift;
                        } else {
                            RGB rgb = srcPalette.getRGB(srcPixel);
                            srcRed = rgb.red;
                            srcGreen = rgb.green;
                            srcBlue = rgb.blue;
                        }
                        if (srcAlpha == 255) {
                            dstRed = srcRed;
                            dstGreen = srcGreen;
                            dstBlue = srcBlue;
                            dstAlpha = srcAlpha;
                        } else {
                            int dstPixel = dst.getPixel(dstX, dstY);
                            dstAlpha = dst.getAlpha(dstX, dstY);
                            dstRed = (dstPixel & 0xFF) >>> 0;
                            dstGreen = (dstPixel & 0xFF00) >>> 8;
                            dstBlue = (dstPixel & 0xFF0000) >>> 16;
                            if (dstAlpha == 255) {
                                dstRed += (srcRed - dstRed) * srcAlpha / 255;
                                dstGreen += (srcGreen - dstGreen) * srcAlpha / 255;
                                dstBlue += (srcBlue - dstBlue) * srcAlpha / 255;
                            } else {
                                dstRed = srcRed * srcAlpha * 255 + dstRed * dstAlpha * (255 - srcAlpha);
                                dstGreen = srcGreen * srcAlpha * 255 + dstGreen * dstAlpha * (255 - srcAlpha);
                                dstBlue = srcBlue * srcAlpha * 255 + dstBlue * dstAlpha * (255 - srcAlpha);
                                if ((dstAlpha = srcAlpha * 255 + dstAlpha * (255 - srcAlpha)) != 0) {
                                    dstRed /= dstAlpha;
                                    dstGreen /= dstAlpha;
                                    dstBlue /= dstAlpha;
                                    dstAlpha /= 255;
                                }
                            }
                        }
                        dst.setPixel(dstX, dstY, (dstRed & 0xFF) << 0 | (dstGreen & 0xFF) << 8 | (dstBlue & 0xFF) << 16);
                        dst.setAlpha(dstX, dstY, dstAlpha);
                    }
                }
                ++srcX;
                ++dstX;
            }
            ++srcY;
            ++dstY;
        }
    }

    public ImageData getImageData() {
        Point size = this.getSize();
        this.imageData = new ImageData(size.x, size.y, 24, new PaletteData(255, 65280, 0xFF0000));
        this.imageData.alphaData = new byte[this.imageData.width * this.imageData.height];
        this.drawCompositeImage(size.x, size.y);
        boolean transparency = false;
        byte[] alphaData = this.imageData.alphaData;
        int i = 0;
        while (i < alphaData.length) {
            int alpha = alphaData[i] & 0xFF;
            if (alpha != 0 && alpha != 255) {
                return this.imageData;
            }
            if (!transparency && alpha == 0) {
                transparency = true;
            }
            ++i;
        }
        if (transparency) {
            PaletteData palette = new PaletteData(new RGB[]{new RGB(0, 0, 0), new RGB(255, 255, 255)});
            ImageData mask = new ImageData(this.imageData.width, this.imageData.height, 1, palette);
            int y = 0;
            while (y < mask.height) {
                int x = 0;
                while (x < mask.width) {
                    mask.setPixel(x, y, this.imageData.getAlpha(x, y) == 255 ? 1 : 0);
                    ++x;
                }
                ++y;
            }
        } else {
            this.imageData.alphaData = null;
        }
        return this.imageData;
    }

    protected int getTransparentPixel() {
        return 0;
    }

    protected abstract Point getSize();

    protected void setImageData(ImageData imageData) {
        this.imageData = imageData;
    }
}

