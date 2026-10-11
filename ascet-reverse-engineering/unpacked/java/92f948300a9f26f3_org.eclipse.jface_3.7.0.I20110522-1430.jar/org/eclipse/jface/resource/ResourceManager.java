/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.swt.SWTException
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.RGB
 */
package org.eclipse.jface.resource;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.resource.ColorDescriptor;
import org.eclipse.jface.resource.DeviceResourceDescriptor;
import org.eclipse.jface.resource.DeviceResourceException;
import org.eclipse.jface.resource.FontDescriptor;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.RGBColorDescriptor;
import org.eclipse.jface.util.Policy;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.RGB;

public abstract class ResourceManager {
    private List disposeExecs = null;

    public abstract Device getDevice();

    public abstract Object create(DeviceResourceDescriptor var1);

    public abstract void destroy(DeviceResourceDescriptor var1);

    public final Object get(DeviceResourceDescriptor descriptor) {
        Object result = this.find(descriptor);
        if (result == null) {
            result = this.create(descriptor);
        }
        return result;
    }

    public final Image createImage(ImageDescriptor descriptor) {
        Assert.isNotNull((Object)descriptor);
        return (Image)this.create(descriptor);
    }

    public final Image createImageWithDefault(ImageDescriptor descriptor) {
        if (descriptor == null) {
            return this.getDefaultImage();
        }
        try {
            return (Image)this.create(descriptor);
        }
        catch (DeviceResourceException e) {
            Policy.getLog().log((IStatus)new Status(2, "org.eclipse.jface", 0, "The image could not be loaded: " + descriptor, (Throwable)e));
            return this.getDefaultImage();
        }
        catch (SWTException e) {
            Policy.getLog().log((IStatus)new Status(2, "org.eclipse.jface", 0, "The image could not be loaded: " + descriptor, (Throwable)e));
            return this.getDefaultImage();
        }
    }

    protected abstract Image getDefaultImage();

    public final void destroyImage(ImageDescriptor descriptor) {
        this.destroy(descriptor);
    }

    public final Color createColor(ColorDescriptor descriptor) {
        return (Color)this.create(descriptor);
    }

    public final Color createColor(RGB descriptor) {
        return this.createColor(new RGBColorDescriptor(descriptor));
    }

    public final void destroyColor(RGB descriptor) {
        this.destroyColor(new RGBColorDescriptor(descriptor));
    }

    public final void destroyColor(ColorDescriptor descriptor) {
        this.destroy(descriptor);
    }

    public final Font createFont(FontDescriptor descriptor) {
        return (Font)this.create(descriptor);
    }

    public final void destroyFont(FontDescriptor descriptor) {
        this.destroy(descriptor);
    }

    public void dispose() {
        if (this.disposeExecs == null) {
            return;
        }
        RuntimeException foundException = null;
        Runnable[] execs = this.disposeExecs.toArray(new Runnable[this.disposeExecs.size()]);
        int i = 0;
        while (i < execs.length) {
            Runnable exec = execs[i];
            try {
                exec.run();
            }
            catch (RuntimeException e) {
                foundException = e;
            }
            ++i;
        }
        if (foundException != null) {
            throw foundException;
        }
    }

    public abstract Object find(DeviceResourceDescriptor var1);

    public void disposeExec(Runnable r) {
        Assert.isNotNull((Object)r);
        if (this.disposeExecs == null) {
            this.disposeExecs = new ArrayList();
        }
        this.disposeExecs.add(r);
    }

    public void cancelDisposeExec(Runnable r) {
        Assert.isNotNull((Object)r);
        if (this.disposeExecs == null) {
            return;
        }
        this.disposeExecs.remove(r);
        if (this.disposeExecs.isEmpty()) {
            this.disposeExecs = null;
        }
    }
}

