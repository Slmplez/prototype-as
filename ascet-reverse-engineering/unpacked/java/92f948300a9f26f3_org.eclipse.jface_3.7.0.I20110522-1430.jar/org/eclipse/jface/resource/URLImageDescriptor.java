/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.swt.SWTException
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.ImageData
 */
package org.eclipse.jface.resource;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.internal.InternalPolicy;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.util.Policy;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;

class URLImageDescriptor
extends ImageDescriptor {
    private static final String FILE_PROTOCOL = "file";
    private URL url;

    URLImageDescriptor(URL url) {
        this.url = url;
    }

    public boolean equals(Object o) {
        if (!(o instanceof URLImageDescriptor)) {
            return false;
        }
        return ((URLImageDescriptor)o).url.toExternalForm().equals(this.url.toExternalForm());
    }

    public ImageData getImageData() {
        ImageData result = null;
        InputStream in = this.getStream();
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
                    catch (IOException e2) {
                        Policy.getLog().log((IStatus)new Status(4, "org.eclipse.jface", e2.getLocalizedMessage(), (Throwable)e2));
                    }
                }
            }
            finally {
                try {
                    in.close();
                }
                catch (IOException e) {
                    Policy.getLog().log((IStatus)new Status(4, "org.eclipse.jface", e.getLocalizedMessage(), (Throwable)e));
                }
            }
        }
        return result;
    }

    protected InputStream getStream() {
        try {
            return new BufferedInputStream(this.url.openStream());
        }
        catch (IOException iOException) {
            return null;
        }
    }

    public int hashCode() {
        return this.url.toExternalForm().hashCode();
    }

    public String toString() {
        return "URLImageDescriptor(" + this.url + ")";
    }

    private String getFilePath() {
        block5: {
            try {
                if (InternalPolicy.OSGI_AVAILABLE) break block5;
                if (FILE_PROTOCOL.equalsIgnoreCase(this.url.getProtocol())) {
                    return new Path(this.url.getFile()).toOSString();
                }
                return null;
            }
            catch (IOException e) {
                Policy.logException(e);
                return null;
            }
        }
        URL locatedURL = FileLocator.toFileURL((URL)this.url);
        if (FILE_PROTOCOL.equalsIgnoreCase(locatedURL.getProtocol())) {
            return new Path(locatedURL.getPath()).toOSString();
        }
        return null;
    }

    public Image createImage(boolean returnMissingImageOnError, Device device) {
        String path = this.getFilePath();
        if (path == null) {
            return super.createImage(returnMissingImageOnError, device);
        }
        try {
            return new Image(device, path);
        }
        catch (SWTException sWTException) {
            return super.createImage(returnMissingImageOnError, device);
        }
    }
}

