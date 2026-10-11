/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.jobs.ILock
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.team.internal.core;

import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.jobs.ILock;
import org.eclipse.osgi.util.NLS;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.variants.CachedResourceVariant;
import org.eclipse.team.internal.core.Messages;
import org.eclipse.team.internal.core.Policy;
import org.eclipse.team.internal.core.ResourceVariantCache;

public class ResourceVariantCacheEntry {
    public static final int UNINITIALIZED = 0;
    public static final int READY = 1;
    public static final int DISPOSED = 2;
    private String id;
    private String filePath;
    private ResourceVariantCache cache;
    private int state = 0;
    private long lastAccess;
    private CachedResourceVariant resourceVariant;
    private ILock lock;

    public ResourceVariantCacheEntry(ResourceVariantCache cache, ILock lock, String id, String filePath) {
        this.lock = lock;
        this.state = 0;
        this.cache = cache;
        this.id = id;
        this.filePath = filePath;
        this.registerHit();
    }

    public InputStream getContents() throws TeamException {
        if (this.state != 1) {
            return null;
        }
        this.registerHit();
        File ioFile = this.getFile();
        try {
            if (ioFile.exists()) {
                return new FileInputStream(ioFile);
            }
        }
        catch (IOException e) {
            try {
                this.cache.purgeFromCache(this);
                throw e;
            }
            catch (IOException e2) {
                throw new TeamException(NLS.bind((String)Messages.RemoteContentsCache_fileError, (Object[])new String[]{ioFile.getAbsolutePath()}), e2);
            }
        }
        return new ByteArrayInputStream(new byte[0]);
    }

    protected File getFile() {
        return new File(this.cache.getCachePath().toFile(), this.filePath);
    }

    public void setContents(InputStream stream, IProgressMonitor monitor) throws TeamException {
        this.beginOperation();
        try {
            this.internalSetContents(stream, monitor);
        }
        finally {
            this.endOperation();
        }
    }

    private void endOperation() {
        this.lock.release();
    }

    private void beginOperation() {
        this.lock.acquire();
    }

    private void internalSetContents(InputStream stream, IProgressMonitor monitor) throws TeamException {
        if (this.state == 2) {
            throw new TeamException(NLS.bind((String)Messages.RemoteContentsCacheEntry_3, (Object[])new String[]{this.cache.getName(), this.id}));
        }
        this.registerHit();
        File ioFile = this.getFile();
        try {
            try {
                OutputStream out;
                try {
                    out = this.state == 0 ? new BufferedOutputStream(new FileOutputStream(ioFile)) : new ByteArrayOutputStream();
                }
                catch (FileNotFoundException e) {
                    throw new TeamException(NLS.bind((String)Messages.RemoteContentsCache_fileError, (Object[])new String[]{ioFile.getAbsolutePath()}), e);
                }
                try {
                    try {
                        int read;
                        byte[] buffer = new byte[1024];
                        while ((read = stream.read(buffer)) >= 0) {
                            Policy.checkCanceled(monitor);
                            out.write(buffer, 0, read);
                        }
                    }
                    finally {
                        out.close();
                    }
                }
                catch (IOException e) {
                    this.cache.purgeFromCache(this);
                    throw e;
                }
                this.state = 1;
            }
            catch (IOException e) {
                throw new TeamException(NLS.bind((String)Messages.RemoteContentsCache_fileError, (Object[])new String[]{ioFile.getAbsolutePath()}), e);
            }
        }
        catch (Throwable throwable) {
            try {
                stream.close();
            }
            catch (IOException iOException) {}
            throw throwable;
        }
        try {
            stream.close();
        }
        catch (IOException iOException) {}
    }

    public int getState() {
        return this.state;
    }

    public long getSize() {
        if (this.state != 1) {
            return 0L;
        }
        File ioFile = this.getFile();
        if (ioFile.exists()) {
            return ioFile.length();
        }
        return 0L;
    }

    public long getLastAccessTimeStamp() {
        return this.lastAccess;
    }

    protected void registerHit() {
        this.lastAccess = new Date().getTime();
    }

    public void dispose() {
        this.beginOperation();
        try {
            this.state = 2;
            this.cache.purgeFromCache(this);
        }
        finally {
            this.endOperation();
        }
    }

    public String getId() {
        return this.id;
    }

    public CachedResourceVariant getResourceVariant() {
        return this.resourceVariant;
    }

    public void setResourceVariant(CachedResourceVariant resourceVariant) {
        this.resourceVariant = resourceVariant;
    }
}

