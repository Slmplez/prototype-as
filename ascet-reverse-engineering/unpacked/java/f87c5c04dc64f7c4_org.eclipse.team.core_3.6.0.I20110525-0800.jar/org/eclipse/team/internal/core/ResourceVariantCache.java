/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.jobs.ILock
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.team.internal.core;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.jobs.ILock;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.osgi.util.NLS;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.variants.CachedResourceVariant;
import org.eclipse.team.internal.core.Messages;
import org.eclipse.team.internal.core.ResourceVariantCacheEntry;
import org.eclipse.team.internal.core.TeamPlugin;

public class ResourceVariantCache {
    private static final String CACHE_DIRECTORY = ".cache";
    private static final long CACHE_FILE_LIFESPAN = 3600000L;
    private static Map caches = new HashMap();
    private String name;
    private Map cacheEntries;
    private long lastCacheCleanup;
    private int cacheDirSize;
    private ILock lock = Job.getJobManager().newLock();

    public static synchronized void enableCaching(String cacheId) {
        if (ResourceVariantCache.isCachingEnabled(cacheId)) {
            return;
        }
        ResourceVariantCache cache = new ResourceVariantCache(cacheId);
        cache.createCacheDirectory();
        caches.put(cacheId, cache);
    }

    public static boolean isCachingEnabled(String cacheId) {
        return ResourceVariantCache.getCache(cacheId) != null;
    }

    public static void disableCache(String cacheId) {
        ResourceVariantCache cache = ResourceVariantCache.getCache(cacheId);
        if (cache == null) {
            return;
        }
        caches.remove(cacheId);
        cache.deleteCacheDirectory();
    }

    public static synchronized ResourceVariantCache getCache(String cacheId) {
        return (ResourceVariantCache)caches.get(cacheId);
    }

    public static synchronized void shutdown() {
        String[] keys = caches.keySet().toArray(new String[caches.size()]);
        int i = 0;
        while (i < keys.length) {
            String id = keys[i];
            ResourceVariantCache.disableCache(id);
            ++i;
        }
    }

    private ResourceVariantCache(String name) {
        this.name = name;
    }

    public boolean hasEntry(String id) {
        return this.internalGetCacheEntry(id) != null;
    }

    protected IPath getCachePath() {
        return this.getStateLocation().append(CACHE_DIRECTORY).append(this.name);
    }

    private IPath getStateLocation() {
        return TeamPlugin.getPlugin().getStateLocation();
    }

    private synchronized void clearOldCacheEntries() {
        ResourceVariantCacheEntry entry;
        long current = new Date().getTime();
        if (this.lastCacheCleanup != -1L && current - this.lastCacheCleanup < 3600000L) {
            return;
        }
        ArrayList<ResourceVariantCacheEntry> stale = new ArrayList<ResourceVariantCacheEntry>();
        Iterator<Object> iter = this.cacheEntries.values().iterator();
        while (iter.hasNext()) {
            entry = (ResourceVariantCacheEntry)iter.next();
            long lastHit = entry.getLastAccessTimeStamp();
            if (current - lastHit <= 3600000L) continue;
            stale.add(entry);
        }
        iter = stale.iterator();
        while (iter.hasNext()) {
            entry = (ResourceVariantCacheEntry)iter.next();
            entry.dispose();
        }
    }

    private synchronized void purgeFromCache(String id) {
        ResourceVariantCacheEntry entry = (ResourceVariantCacheEntry)this.cacheEntries.get(id);
        File f = entry.getFile();
        try {
            this.deleteFile(f);
        }
        catch (TeamException teamException) {}
        this.cacheEntries.remove(id);
    }

    private synchronized void createCacheDirectory() {
        File file;
        block4: {
            IPath cacheLocation = this.getCachePath();
            file = cacheLocation.toFile();
            if (file.exists()) {
                try {
                    this.deleteFile(file);
                }
                catch (TeamException e) {
                    if (!file.exists() || file.isDirectory() && file.listFiles().length == 0) break block4;
                    TeamPlugin.log(e);
                }
            }
        }
        if (!file.exists() && !file.mkdirs()) {
            TeamPlugin.log(new TeamException(NLS.bind((String)Messages.RemoteContentsCache_fileError, (Object[])new String[]{file.getAbsolutePath()})));
        }
        this.cacheEntries = new HashMap();
        this.lastCacheCleanup = -1L;
        this.cacheDirSize = 0;
    }

    private synchronized void deleteCacheDirectory() {
        this.cacheEntries = null;
        this.lastCacheCleanup = -1L;
        this.cacheDirSize = 0;
        IPath cacheLocation = this.getCachePath();
        File file = cacheLocation.toFile();
        if (file.exists()) {
            try {
                this.deleteFile(file);
            }
            catch (TeamException teamException) {}
        }
    }

    private void deleteFile(File file) throws TeamException {
        if (file.isDirectory()) {
            File[] children = file.listFiles();
            int i = 0;
            while (i < children.length) {
                this.deleteFile(children[i]);
                ++i;
            }
        }
        if (!file.delete()) {
            throw new TeamException(NLS.bind((String)Messages.RemoteContentsCache_fileError, (Object[])new String[]{file.getAbsolutePath()}));
        }
    }

    protected void purgeFromCache(ResourceVariantCacheEntry entry) {
        this.purgeFromCache(entry.getId());
    }

    private synchronized ResourceVariantCacheEntry internalGetCacheEntry(String id) {
        if (this.cacheEntries == null) {
            throw new IllegalStateException(NLS.bind((String)Messages.RemoteContentsCache_cacheDisposed, (Object[])new String[]{this.name}));
        }
        ResourceVariantCacheEntry entry = (ResourceVariantCacheEntry)this.cacheEntries.get(id);
        if (entry != null) {
            entry.registerHit();
        }
        return entry;
    }

    public ResourceVariantCacheEntry getCacheEntry(String id) {
        return this.internalGetCacheEntry(id);
    }

    public synchronized ResourceVariantCacheEntry add(String id, CachedResourceVariant resource) {
        this.clearOldCacheEntries();
        String filePath = String.valueOf(this.cacheDirSize++);
        ResourceVariantCacheEntry entry = new ResourceVariantCacheEntry(this, this.lock, id, filePath);
        entry.setResourceVariant(resource);
        this.cacheEntries.put(id, entry);
        return entry;
    }

    public String getName() {
        return this.name;
    }

    public ResourceVariantCacheEntry[] getEntries() {
        return this.cacheEntries.values().toArray(new ResourceVariantCacheEntry[this.cacheEntries.size()]);
    }
}

