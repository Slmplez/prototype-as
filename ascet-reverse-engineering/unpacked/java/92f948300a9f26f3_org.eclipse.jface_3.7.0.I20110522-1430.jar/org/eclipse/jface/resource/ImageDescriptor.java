/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.SWTException
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.ImageData
 *  org.eclipse.swt.graphics.PaletteData
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.resource;

import java.net.URL;
import org.eclipse.jface.resource.DerivedImageDescriptor;
import org.eclipse.jface.resource.DeviceResourceDescriptor;
import org.eclipse.jface.resource.DeviceResourceException;
import org.eclipse.jface.resource.FileImageDescriptor;
import org.eclipse.jface.resource.ImageDataImageDescriptor;
import org.eclipse.jface.resource.MissingImageDescriptor;
import org.eclipse.jface.resource.URLImageDescriptor;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.widgets.Display;

public abstract class ImageDescriptor
extends DeviceResourceDescriptor {
    protected static final ImageData DEFAULT_IMAGE_DATA = new ImageData(6, 6, 1, new PaletteData(new RGB[]{new RGB(255, 0, 0)}));

    protected ImageDescriptor() {
    }

    public static ImageDescriptor createFromFile(Class location, String filename) {
        return new FileImageDescriptor(location, filename);
    }

    public static ImageDescriptor createFromImageData(ImageData data) {
        return new ImageDataImageDescriptor(data);
    }

    public static ImageDescriptor createFromImage(Image img) {
        return new ImageDataImageDescriptor(img);
    }

    public static ImageDescriptor createWithFlags(ImageDescriptor originalImage, int swtFlags) {
        return new DerivedImageDescriptor(originalImage, swtFlags);
    }

    public static ImageDescriptor createFromImage(Image img, Device theDevice) {
        return new ImageDataImageDescriptor(img);
    }

    public static ImageDescriptor createFromURL(URL url) {
        if (url == null) {
            return ImageDescriptor.getMissingImageDescriptor();
        }
        return new URLImageDescriptor(url);
    }

    public Object createResource(Device device) throws DeviceResourceException {
        Image result = this.createImage(false, device);
        if (result == null) {
            throw new DeviceResourceException(this);
        }
        return result;
    }

    public void destroyResource(Object previouslyCreatedObject) {
        ((Image)previouslyCreatedObject).dispose();
    }

    public Image createImage() {
        return this.createImage(true);
    }

    public Image createImage(boolean returnMissingImageOnError) {
        return this.createImage(returnMissingImageOnError, (Device)Display.getCurrent());
    }

    public Image createImage(Device device) {
        return this.createImage(true, device);
    }

    public Image createImage(boolean returnMissingImageOnError, Device device) {
        ImageData data = this.getImageData();
        if (data == null) {
            if (!returnMissingImageOnError) {
                return null;
            }
            data = DEFAULT_IMAGE_DATA;
        }
        try {
            if (data.transparentPixel >= 0) {
                ImageData maskData = data.getTransparencyMask();
                return new Image(device, data, maskData);
            }
            return new Image(device, data);
        }
        catch (SWTException sWTException) {
            if (returnMissingImageOnError) {
                try {
                    return new Image(device, DEFAULT_IMAGE_DATA);
                }
                catch (SWTException sWTException2) {
                    return null;
                }
            }
            return null;
        }
    }

    public abstract ImageData getImageData();

    public static ImageDescriptor getMissingImageDescriptor() {
        return MissingImageDescriptor.getInstance();
    }
}

