/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.DeviceResourceDescriptor
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.LocalResourceManager
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.ImageData
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal.forms.widgets;

import java.util.Arrays;
import java.util.HashMap;
import org.eclipse.jface.resource.DeviceResourceDescriptor;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.LocalResourceManager;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.internal.forms.widgets.ResourceManagerManger;

public class FormImages {
    private static FormImages instance;
    private ResourceManagerManger manager = new ResourceManagerManger();
    private HashMap descriptors;

    public static FormImages getInstance() {
        if (instance == null) {
            instance = new FormImages();
        }
        return instance;
    }

    private FormImages() {
    }

    public Image getGradient(Color color1, Color color2, int realtheight, int theight, int marginHeight, Display display) {
        if (color1 == null || color1.isDisposed() || color2 == null || color2.isDisposed()) {
            return null;
        }
        SimpleImageDescriptor desc = new SimpleImageDescriptor(color1, color2, realtheight, theight, marginHeight);
        return this.getGradient(desc, display);
    }

    public Image getGradient(Color[] colors, int[] percents, int length, boolean vertical, Color bg, Display display) {
        if (colors.length == 0) {
            return null;
        }
        int i = 0;
        while (i < colors.length) {
            if (colors[i] == null || colors[i].isDisposed()) {
                return null;
            }
            ++i;
        }
        if (bg != null && bg.isDisposed()) {
            return null;
        }
        ComplexImageDescriptor desc = new ComplexImageDescriptor(colors, length, percents, vertical, bg);
        return this.getGradient(desc, display);
    }

    private synchronized Image getGradient(AbstractImageDescriptor desc, Display display) {
        this.checkHashMaps();
        Image result = this.manager.getResourceManager(display).createImage((ImageDescriptor)desc);
        this.descriptors.put(result, desc);
        return result;
    }

    public synchronized boolean markFinished(Image image, Display display) {
        this.checkHashMaps();
        AbstractImageDescriptor desc = (AbstractImageDescriptor)((Object)this.descriptors.get(image));
        if (desc != null) {
            LocalResourceManager resourceManager = this.manager.getResourceManager(display);
            resourceManager.destroyImage((ImageDescriptor)desc);
            if (resourceManager.find((DeviceResourceDescriptor)desc) == null) {
                this.descriptors.remove(image);
                this.validateHashMaps();
            }
            return true;
        }
        image.dispose();
        return false;
    }

    private void checkHashMaps() {
        if (this.descriptors == null) {
            this.descriptors = new HashMap();
        }
    }

    private void validateHashMaps() {
        if (this.descriptors.size() == 0) {
            this.descriptors = null;
        }
    }

    private abstract class AbstractImageDescriptor
    extends ImageDescriptor {
        RGB[] fRGBs;
        int fLength;

        AbstractImageDescriptor(Color[] colors, int length) {
            this.fRGBs = new RGB[colors.length];
            int i = 0;
            while (i < colors.length) {
                Color color = colors[i];
                this.fRGBs[i] = color == null ? null : color.getRGB();
                ++i;
            }
            this.fLength = length;
        }

        public boolean equals(Object obj) {
            if (obj instanceof AbstractImageDescriptor) {
                AbstractImageDescriptor id = (AbstractImageDescriptor)((Object)obj);
                if (id.fRGBs.length == this.fRGBs.length) {
                    boolean result = id.fLength == this.fLength;
                    int i = 0;
                    while (i < this.fRGBs.length && result) {
                        result = result && id.fRGBs[i].equals((Object)this.fRGBs[i]);
                        ++i;
                    }
                    return result;
                }
            }
            return false;
        }

        public int hashCode() {
            int hash = 0;
            int i = 0;
            while (i < this.fRGBs.length) {
                hash = hash * 7 + this.fRGBs[i].hashCode();
                ++i;
            }
            hash = hash * 7 + this.fLength;
            return hash;
        }
    }

    private class ComplexImageDescriptor
    extends AbstractImageDescriptor {
        RGB fBgRGB;
        boolean fVertical;
        int[] fPercents;

        public ComplexImageDescriptor(Color[] colors, int length, int[] percents, boolean vertical, Color bg) {
            super(colors, length);
            this.fBgRGB = bg == null ? null : bg.getRGB();
            this.fVertical = vertical;
            this.fPercents = percents;
        }

        public boolean equals(Object obj) {
            if (obj instanceof ComplexImageDescriptor) {
                ComplexImageDescriptor id = (ComplexImageDescriptor)((Object)obj);
                if (super.equals(obj) && id.fVertical == this.fVertical && Arrays.equals(id.fPercents, this.fPercents)) {
                    if (id.fBgRGB == null && this.fBgRGB == null || id.fBgRGB != null && id.fBgRGB.equals((Object)this.fBgRGB)) {
                        return true;
                    }
                    int sum = 0;
                    int i = 0;
                    while (i < this.fPercents.length) {
                        sum += this.fPercents[i];
                        ++i;
                    }
                    if (sum >= 100) {
                        return true;
                    }
                }
            }
            return false;
        }

        public int hashCode() {
            int hash = super.hashCode();
            hash = hash * 7 + new Boolean(this.fVertical).hashCode();
            int i = 0;
            while (i < this.fPercents.length) {
                hash = hash * 7 + new Integer(this.fPercents[i]).hashCode();
                ++i;
            }
            return hash;
        }

        public ImageData getImageData() {
            return null;
        }

        public Image createImage(boolean returnMissingImageOnError, Device device) {
            int width = this.fVertical ? 1 : this.fLength;
            int height = this.fVertical ? this.fLength : 1;
            Image gradient = new Image(device, Math.max(width, 1), Math.max(height, 1));
            GC gc = new GC((Drawable)gradient);
            Color[] colors = new Color[this.fRGBs.length];
            int i = 0;
            while (i < colors.length) {
                colors[i] = new Color(device, this.fRGBs[i]);
                ++i;
            }
            Color bg = this.fBgRGB == null ? null : new Color(device, this.fBgRGB);
            this.drawTextGradient(gc, width, height, colors, this.fPercents, this.fVertical, bg);
            gc.dispose();
            int i2 = 0;
            while (i2 < colors.length) {
                colors[i2].dispose();
                ++i2;
            }
            if (bg != null) {
                bg.dispose();
            }
            return gradient;
        }

        private void drawTextGradient(GC gc, int width, int height, Color[] colors, int[] percents, boolean vertical, Color bg) {
            Color oldBackground = gc.getBackground();
            if (colors.length == 1) {
                if (colors[0] != null) {
                    gc.setBackground(colors[0]);
                }
                gc.fillRectangle(0, 0, width, height);
            } else {
                Color oldForeground = gc.getForeground();
                Color lastColor = colors[0];
                if (lastColor == null) {
                    lastColor = oldBackground;
                }
                int pos = 0;
                int i = 0;
                while (i < percents.length) {
                    gc.setForeground(lastColor);
                    lastColor = colors[i + 1];
                    if (lastColor == null) {
                        lastColor = oldBackground;
                    }
                    gc.setBackground(lastColor);
                    if (vertical) {
                        int gradientHeight = percents[i] * height / 100;
                        gc.fillGradientRectangle(0, pos, width, gradientHeight, true);
                        pos += gradientHeight;
                    } else {
                        int gradientWidth = percents[i] * width / 100;
                        gc.fillGradientRectangle(pos, 0, gradientWidth, height, false);
                        pos += gradientWidth;
                    }
                    ++i;
                }
                if (vertical && pos < height) {
                    if (bg != null) {
                        gc.setBackground(bg);
                    }
                    gc.fillRectangle(0, pos, width, height - pos);
                }
                if (!vertical && pos < width) {
                    if (bg != null) {
                        gc.setBackground(bg);
                    }
                    gc.fillRectangle(pos, 0, width - pos, height);
                }
                gc.setForeground(oldForeground);
            }
        }
    }

    private class SimpleImageDescriptor
    extends AbstractImageDescriptor {
        private int fTheight;
        private int fMarginHeight;

        SimpleImageDescriptor(Color color1, Color color2, int realtheight, int theight, int marginHeight) {
            super(new Color[]{color1, color2}, realtheight);
            this.fTheight = theight;
            this.fMarginHeight = marginHeight;
        }

        public boolean equals(Object obj) {
            if (obj instanceof SimpleImageDescriptor) {
                SimpleImageDescriptor id = (SimpleImageDescriptor)((Object)obj);
                if (super.equals(obj) && id.fTheight == this.fTheight && id.fMarginHeight == this.fMarginHeight) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            int hash = super.hashCode();
            hash = hash * 7 + new Integer(this.fTheight).hashCode();
            hash = hash * 7 + new Integer(this.fMarginHeight).hashCode();
            return hash;
        }

        public ImageData getImageData() {
            return null;
        }

        public Image createImage(boolean returnMissingImageOnError, Device device) {
            Image image = new Image(device, 1, this.fLength);
            Color color1 = new Color(device, this.fRGBs[0]);
            Color color2 = new Color(device, this.fRGBs[1]);
            image.setBackground(color1);
            GC gc = new GC((Drawable)image);
            gc.setBackground(color1);
            gc.fillRectangle(0, 0, 1, this.fLength);
            gc.setForeground(color2);
            gc.setBackground(color1);
            gc.fillGradientRectangle(0, this.fMarginHeight + 2, 1, this.fTheight - 2, true);
            gc.dispose();
            color1.dispose();
            color2.dispose();
            return image;
        }
    }
}

