/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.ImageData
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.resource;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.resource.DeviceResourceException;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.ResourceManager;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.widgets.Display;

public class ImageRegistry {
    private Display display;
    private ResourceManager manager;
    private Map table;
    private Runnable disposeRunnable = new Runnable(){

        public void run() {
            ImageRegistry.this.dispose();
        }
    };

    public ImageRegistry() {
        this(Display.getCurrent());
    }

    public ImageRegistry(ResourceManager manager) {
        Assert.isNotNull((Object)manager);
        Device dev = manager.getDevice();
        if (dev instanceof Display) {
            this.display = (Display)dev;
        }
        this.manager = manager;
        manager.disposeExec(this.disposeRunnable);
    }

    public ImageRegistry(Display display) {
        this(JFaceResources.getResources(display));
    }

    public Image get(String key) {
        Entry entry;
        if (key == null) {
            return null;
        }
        if (this.display != null) {
            int swtKey = -1;
            if (key.equals("dialog_info_imageg")) {
                swtKey = 2;
            }
            if (key.equals("dialog_question_image")) {
                swtKey = 4;
            }
            if (key.equals("dialog_warning_image")) {
                swtKey = 8;
            }
            if (key.equals("dialog_error_image")) {
                swtKey = 1;
            }
            if (swtKey != -1) {
                final Image[] image = new Image[1];
                final int id = swtKey;
                this.display.syncExec(new Runnable(){

                    public void run() {
                        image[0] = ImageRegistry.this.display.getSystemImage(id);
                    }
                });
                return image[0];
            }
        }
        if ((entry = this.getEntry(key)) == null) {
            return null;
        }
        if (entry.image == null) {
            entry.image = this.manager.createImageWithDefault(entry.descriptor);
        }
        return entry.image;
    }

    public ImageDescriptor getDescriptor(String key) {
        Entry entry = this.getEntry(key);
        if (entry == null) {
            return null;
        }
        return entry.descriptor;
    }

    public void put(String key, ImageDescriptor descriptor) {
        Entry entry = this.getEntry(key);
        if (entry == null) {
            entry = new Entry();
            this.getTable().put(key, entry);
        }
        if (entry.image != null) {
            throw new IllegalArgumentException("ImageRegistry key already in use: " + key);
        }
        entry.descriptor = descriptor;
    }

    public void put(String key, Image image) {
        Entry entry = this.getEntry(key);
        if (entry == null) {
            entry = new Entry();
            this.putEntry(key, entry);
        }
        if (entry.image != null || entry.descriptor != null) {
            throw new IllegalArgumentException("ImageRegistry key already in use: " + key);
        }
        Assert.isNotNull((Object)image, (String)"Cannot register a null image.");
        entry.image = image;
        entry.descriptor = new OriginalImageDescriptor(image, this.manager.getDevice());
        try {
            this.manager.create(entry.descriptor);
        }
        catch (DeviceResourceException deviceResourceException) {}
    }

    public void remove(String key) {
        ImageDescriptor descriptor = this.getDescriptor(key);
        if (descriptor != null) {
            this.manager.destroy(descriptor);
            this.getTable().remove(key);
        }
    }

    private Entry getEntry(String key) {
        return (Entry)this.getTable().get(key);
    }

    private void putEntry(String key, Entry entry) {
        this.getTable().put(key, entry);
    }

    private Map getTable() {
        if (this.table == null) {
            this.table = new HashMap(10);
        }
        return this.table;
    }

    public void dispose() {
        this.manager.cancelDisposeExec(this.disposeRunnable);
        if (this.table != null) {
            Iterator i = this.table.values().iterator();
            while (i.hasNext()) {
                Entry entry = (Entry)i.next();
                if (entry.image == null) continue;
                this.manager.destroyImage(entry.descriptor);
            }
            this.table = null;
        }
        this.display = null;
    }

    private static class Entry {
        protected Image image;
        protected ImageDescriptor descriptor;

        private Entry() {
        }
    }

    private static class OriginalImageDescriptor
    extends ImageDescriptor {
        private Image original;
        private int refCount = 0;
        private Device originalDisplay;

        public OriginalImageDescriptor(Image original, Device originalDisplay) {
            this.original = original;
            this.originalDisplay = originalDisplay;
        }

        public Object createResource(Device device) throws DeviceResourceException {
            if (device == this.originalDisplay) {
                ++this.refCount;
                return this.original;
            }
            return super.createResource(device);
        }

        public void destroyResource(Object toDispose) {
            if (this.original == toDispose) {
                --this.refCount;
                if (this.refCount == 0) {
                    this.original.dispose();
                    this.original = null;
                }
            } else {
                super.destroyResource(toDispose);
            }
        }

        public ImageData getImageData() {
            return this.original.getImageData();
        }
    }
}

