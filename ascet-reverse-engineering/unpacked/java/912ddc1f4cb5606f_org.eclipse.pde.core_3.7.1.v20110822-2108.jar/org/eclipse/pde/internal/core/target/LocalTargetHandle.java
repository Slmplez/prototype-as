/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.core.target;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.net.URISyntaxException;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.target.AbstractTargetHandle;
import org.eclipse.pde.internal.core.target.Messages;
import org.eclipse.pde.internal.core.target.P2TargetUtils;
import org.eclipse.pde.internal.core.target.TargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.ITargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.ITargetHandle;

public class LocalTargetHandle
extends AbstractTargetHandle {
    private long fTimeStamp;
    private static long fgLastStamp = -1L;
    static final String SCHEME = "local";
    static final IPath LOCAL_TARGET_CONTAINER_PATH = PDECore.getDefault().getStateLocation().append(".local_targets");

    static synchronized long nextTimeStamp() {
        long stamp = System.currentTimeMillis();
        if (stamp == fgLastStamp) {
            ++stamp;
        }
        fgLastStamp = stamp;
        return stamp;
    }

    static ITargetHandle restoreHandle(URI uri) throws CoreException {
        String part = uri.getSchemeSpecificPart();
        try {
            Path path = new Path(part);
            String name = path.lastSegment();
            if (name.endsWith("target")) {
                String lng = name.substring(0, name.length() - "target".length() - 1);
                long stamp = Long.parseLong(lng);
                return new LocalTargetHandle(stamp);
            }
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.LocalTargetHandle_0, null));
        }
        catch (NumberFormatException e) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.LocalTargetHandle_0, (Throwable)e));
        }
    }

    LocalTargetHandle() {
        this.fTimeStamp = LocalTargetHandle.nextTimeStamp();
    }

    private LocalTargetHandle(long stamp) {
        this.fTimeStamp = stamp;
    }

    protected InputStream getInputStream() throws CoreException {
        try {
            return new BufferedInputStream(new FileInputStream(this.getFile()));
        }
        catch (FileNotFoundException e) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.LocalTargetHandle_1, (Throwable)e));
        }
    }

    public String getMemento() throws CoreException {
        try {
            URI uri = new URI(SCHEME, this.getFile().getName(), null);
            return uri.toString();
        }
        catch (URISyntaxException e) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.LocalTargetHandle_2, (Throwable)e));
        }
    }

    public boolean exists() {
        return this.getFile().exists();
    }

    private File getFile() {
        StringBuffer name = new StringBuffer();
        name.append(Long.toString(this.fTimeStamp));
        name.append('.');
        name.append("target");
        return LOCAL_TARGET_CONTAINER_PATH.append(name.toString()).toFile();
    }

    public boolean equals(Object obj) {
        if (obj instanceof LocalTargetHandle) {
            LocalTargetHandle handle = (LocalTargetHandle)obj;
            return handle.fTimeStamp == this.fTimeStamp;
        }
        return false;
    }

    public int hashCode() {
        return (int)this.fTimeStamp;
    }

    void delete() throws CoreException {
        File file = this.getFile();
        if (file.exists()) {
            file.delete();
            if (file.exists()) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", NLS.bind((String)Messages.LocalTargetHandle_3, (Object)file.getName())));
            }
        }
        P2TargetUtils.deleteProfile(this);
    }

    protected OutputStream getOutputStream() throws CoreException {
        try {
            File file = this.getFile();
            if (!file.exists()) {
                file.getParentFile().mkdirs();
                file.createNewFile();
            }
            return new BufferedOutputStream(new FileOutputStream(file));
        }
        catch (FileNotFoundException e) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.LocalTargetHandle_1, (Throwable)e));
        }
        catch (IOException e) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.LocalTargetHandle_5, (Throwable)e));
        }
    }

    void save(ITargetDefinition definition) throws CoreException {
        OutputStream stream = this.getOutputStream();
        ((TargetDefinition)definition).write(stream);
        try {
            stream.close();
        }
        catch (IOException e) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", NLS.bind((String)Messages.LocalTargetHandle_4, (Object)this.getFile().getName()), (Throwable)e));
        }
    }

    public String toString() {
        return this.getFile().getName();
    }
}

