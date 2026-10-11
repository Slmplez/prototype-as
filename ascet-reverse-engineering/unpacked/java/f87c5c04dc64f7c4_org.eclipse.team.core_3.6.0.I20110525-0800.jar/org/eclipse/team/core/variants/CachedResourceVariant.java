/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IEncodedStorage
 *  org.eclipse.core.resources.IStorage
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.team.core.variants;

import java.io.IOException;
import java.io.InputStream;
import org.eclipse.core.resources.IEncodedStorage;
import org.eclipse.core.resources.IStorage;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.variants.IResourceVariant;
import org.eclipse.team.internal.core.Messages;
import org.eclipse.team.internal.core.ResourceVariantCache;
import org.eclipse.team.internal.core.ResourceVariantCacheEntry;
import org.eclipse.team.internal.core.TeamPlugin;

public abstract class CachedResourceVariant
extends PlatformObject
implements IResourceVariant {
    private IStorage storage;

    public IStorage getStorage(IProgressMonitor monitor) throws TeamException {
        if (this.isContainer()) {
            return null;
        }
        this.ensureContentsCached(monitor);
        if (this.storage == null) {
            this.storage = new ResourceVariantStorage();
        }
        return this.storage;
    }

    private void ensureContentsCached(IProgressMonitor monitor) throws TeamException {
        if (!this.isContentsCached()) {
            this.fetchContents(monitor);
        }
    }

    protected abstract void fetchContents(IProgressMonitor var1) throws TeamException;

    protected void setContents(InputStream stream, IProgressMonitor monitor) throws TeamException {
        Assert.isTrue((!this.isContainer() ? 1 : 0) != 0);
        if (!this.isHandleCached()) {
            this.cacheHandle();
        }
        this.getCacheEntry().setContents(stream, monitor);
    }

    private ResourceVariantCacheEntry getCacheEntry() {
        return this.getCache().getCacheEntry(this.getCachePath());
    }

    public boolean isContentsCached() {
        if (this.isContainer() || !this.isHandleCached()) {
            return false;
        }
        ResourceVariantCacheEntry entry = this.getCache().getCacheEntry(this.getCachePath());
        return entry.getState() == 1;
    }

    protected InputStream getCachedContents() throws TeamException {
        if (this.isContainer() || !this.isContentsCached()) {
            return null;
        }
        return this.getCache().getCacheEntry(this.getCachePath()).getContents();
    }

    protected boolean isHandleCached() {
        return this.getCache().hasEntry(this.getCachePath());
    }

    protected abstract String getCachePath();

    public long getSize() {
        if (this.isContainer() || !this.isContentsCached()) {
            return 0L;
        }
        ResourceVariantCacheEntry entry = this.getCacheEntry();
        if (entry == null || entry.getState() != 1) {
            return 0L;
        }
        return entry.getSize();
    }

    private ResourceVariantCache getCache() {
        ResourceVariantCache.enableCaching(this.getCacheId());
        return ResourceVariantCache.getCache(this.getCacheId());
    }

    protected abstract String getCacheId();

    protected CachedResourceVariant getCachedHandle() {
        ResourceVariantCacheEntry entry = this.getCacheEntry();
        if (entry == null) {
            return null;
        }
        return entry.getResourceVariant();
    }

    protected void cacheHandle() {
        this.getCache().add(this.getCachePath(), this);
    }

    public IPath getDisplayPath() {
        return new Path(null, this.getCachePath());
    }

    class ResourceVariantStorage
    implements IEncodedStorage {
        ResourceVariantStorage() {
        }

        public InputStream getContents() throws CoreException {
            if (!CachedResourceVariant.this.isContentsCached()) {
                throw new TeamException(NLS.bind((String)Messages.CachedResourceVariant_0, (Object[])new String[]{CachedResourceVariant.this.getCachePath()}));
            }
            return CachedResourceVariant.this.getCachedContents();
        }

        public IPath getFullPath() {
            return CachedResourceVariant.this.getDisplayPath();
        }

        public String getName() {
            return CachedResourceVariant.this.getName();
        }

        public boolean isReadOnly() {
            return true;
        }

        public Object getAdapter(Class adapter) {
            return CachedResourceVariant.this.getAdapter(adapter);
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        public String getCharset() throws CoreException {
            String string;
            InputStream contents = this.getContents();
            try {
                String charSet;
                string = charSet = TeamPlugin.getCharset(this.getName(), contents);
            }
            catch (IOException e) {
                try {
                    throw new TeamException((IStatus)new Status(4, "org.eclipse.team.core", 381, NLS.bind((String)Messages.CachedResourceVariant_1, (Object[])new String[]{this.getFullPath().toString()}), (Throwable)e));
                }
                catch (Throwable throwable) {
                    try {
                        contents.close();
                        throw throwable;
                    }
                    catch (IOException iOException) {}
                    throw throwable;
                }
            }
            try {
                contents.close();
                return string;
            }
            catch (IOException iOException) {}
            return string;
        }
    }
}

