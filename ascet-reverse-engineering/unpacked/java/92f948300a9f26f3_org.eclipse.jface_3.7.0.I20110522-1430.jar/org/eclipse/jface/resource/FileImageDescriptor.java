/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.swt.SWTException
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.ImageData
 */
package org.eclipse.jface.resource;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.Path;
import org.eclipse.jface.internal.InternalPolicy;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.util.Policy;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;

class FileImageDescriptor
extends ImageDescriptor {
    private Class location;
    private String name;

    FileImageDescriptor(Class clazz, String filename) {
        this.location = clazz;
        this.name = filename;
    }

    public boolean equals(Object o) {
        if (!(o instanceof FileImageDescriptor)) {
            return false;
        }
        FileImageDescriptor other = (FileImageDescriptor)o;
        if (this.location != null ? !this.location.equals(other.location) : other.location != null) {
            return false;
        }
        return this.name.equals(other.name);
    }

    public ImageData getImageData() {
        ImageData result;
        block13: {
            InputStream in = this.getStream();
            result = null;
            if (in != null) {
                try {
                    try {
                        result = new ImageData(in);
                    }
                    catch (SWTException e) {
                        if (e.code != 40) {
                            throw e;
                        }
                        try {
                            in.close();
                        }
                        catch (IOException iOException) {}
                        break block13;
                    }
                }
                catch (Throwable throwable) {
                    try {
                        in.close();
                    }
                    catch (IOException iOException) {}
                    throw throwable;
                }
                try {
                    in.close();
                }
                catch (IOException iOException) {}
            }
        }
        return result;
    }

    private InputStream getStream() {
        InputStream is = null;
        if (this.location != null) {
            is = this.location.getResourceAsStream(this.name);
        } else {
            try {
                is = new FileInputStream(this.name);
            }
            catch (FileNotFoundException fileNotFoundException) {
                return null;
            }
        }
        if (is == null) {
            return null;
        }
        return new BufferedInputStream(is);
    }

    public int hashCode() {
        int code = this.name.hashCode();
        if (this.location != null) {
            code += this.location.hashCode();
        }
        return code;
    }

    public String toString() {
        return "FileImageDescriptor(location=" + this.location + ", name=" + this.name + ")";
    }

    public Image createImage(boolean returnMissingImageOnError, Device device) {
        String path = this.getFilePath();
        if (path == null) {
            return this.createDefaultImage(returnMissingImageOnError, device);
        }
        try {
            return new Image(device, path);
        }
        catch (SWTException sWTException) {
            return super.createImage(returnMissingImageOnError, device);
        }
    }

    private Image createDefaultImage(boolean returnMissingImageOnError, Device device) {
        try {
            if (returnMissingImageOnError) {
                return new Image(device, DEFAULT_IMAGE_DATA);
            }
        }
        catch (SWTException sWTException) {
            return null;
        }
        return null;
    }

    private String getFilePath() {
        if (this.location == null) {
            return new Path(this.name).toOSString();
        }
        URL resource = this.location.getResource(this.name);
        if (resource == null) {
            return null;
        }
        try {
            if (!InternalPolicy.OSGI_AVAILABLE) {
                return new Path(resource.getFile()).toOSString();
            }
            return new Path(FileLocator.toFileURL((URL)resource).getPath()).toOSString();
        }
        catch (IOException e) {
            Policy.logException(e);
            return null;
        }
    }
}

