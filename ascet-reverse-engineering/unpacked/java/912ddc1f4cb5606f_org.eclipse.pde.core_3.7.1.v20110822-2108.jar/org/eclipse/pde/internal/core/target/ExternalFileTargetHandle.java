/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.core.target;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URI;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.core.target.AbstractTargetHandle;
import org.eclipse.pde.internal.core.target.Messages;
import org.eclipse.pde.internal.core.target.TargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.ITargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.ITargetHandle;

public class ExternalFileTargetHandle
extends AbstractTargetHandle {
    static final String SCHEME = "file";
    private URI fURI;
    private File fFile;

    static ITargetHandle restoreHandle(URI uri) {
        return new ExternalFileTargetHandle(uri);
    }

    protected ExternalFileTargetHandle(URI uri) {
        this.fURI = uri;
        this.fFile = URIUtil.toFile((URI)this.fURI);
    }

    void delete() throws CoreException {
    }

    protected InputStream getInputStream() throws CoreException {
        try {
            return this.fURI.toURL().openStream();
        }
        catch (MalformedURLException malformedURLException) {
        }
        catch (IOException iOException) {}
        return null;
    }

    void save(ITargetDefinition definition) throws CoreException {
        try {
            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(this.fFile));
            ((TargetDefinition)definition).write(stream);
            ((OutputStream)stream).close();
        }
        catch (IOException e) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", NLS.bind((String)Messages.LocalTargetHandle_4, (Object)this.fFile.getName()), (Throwable)e));
        }
    }

    public boolean exists() {
        return this.fFile != null && this.fFile.exists();
    }

    public String getMemento() throws CoreException {
        return this.fURI.toString();
    }

    public boolean equals(Object obj) {
        if (obj instanceof ExternalFileTargetHandle) {
            ExternalFileTargetHandle target = (ExternalFileTargetHandle)obj;
            return target.getLocation().equals(this.fURI);
        }
        return super.equals(obj);
    }

    public URI getLocation() {
        return this.fURI;
    }

    public String toString() {
        return this.fURI.toString();
    }
}

