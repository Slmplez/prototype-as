/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 */
package org.eclipse.jdt.internal.core;

import java.text.NumberFormat;
import java.util.Enumeration;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.IBufferFactory;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.internal.core.Buffer;
import org.eclipse.jdt.internal.core.BufferCache;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.NullBuffer;
import org.eclipse.jdt.internal.core.Openable;

public class BufferManager {
    protected static BufferManager DEFAULT_BUFFER_MANAGER;
    protected static boolean VERBOSE;
    private BufferCache openBuffers = new BufferCache(60);
    protected IBufferFactory defaultBufferFactory = new IBufferFactory(){

        public IBuffer createBuffer(IOpenable owner) {
            return BufferManager.createBuffer(owner);
        }
    };

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void addBuffer(IBuffer buffer) {
        if (VERBOSE) {
            String owner = ((Openable)buffer.getOwner()).toStringWithAncestors();
            System.out.println("Adding buffer for " + owner);
        }
        BufferCache bufferCache = this.openBuffers;
        synchronized (bufferCache) {
            this.openBuffers.put(buffer.getOwner(), buffer);
        }
        this.openBuffers.closeBuffers();
        if (VERBOSE) {
            System.out.println("-> Buffer cache filling ratio = " + NumberFormat.getInstance().format(this.openBuffers.fillingRatio()) + "%");
        }
    }

    public static IBuffer createBuffer(IOpenable owner) {
        JavaElement element = (JavaElement)((Object)owner);
        IResource resource = element.resource();
        return new Buffer(resource instanceof IFile ? (IFile)resource : null, owner, element.isReadOnly());
    }

    public static IBuffer createNullBuffer(IOpenable owner) {
        JavaElement element = (JavaElement)((Object)owner);
        IResource resource = element.resource();
        return new NullBuffer(resource instanceof IFile ? (IFile)resource : null, owner, element.isReadOnly());
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IBuffer getBuffer(IOpenable owner) {
        BufferCache bufferCache = this.openBuffers;
        synchronized (bufferCache) {
            return (IBuffer)this.openBuffers.get(owner);
        }
    }

    public static synchronized BufferManager getDefaultBufferManager() {
        if (DEFAULT_BUFFER_MANAGER == null) {
            DEFAULT_BUFFER_MANAGER = new BufferManager();
        }
        return DEFAULT_BUFFER_MANAGER;
    }

    public IBufferFactory getDefaultBufferFactory() {
        return this.defaultBufferFactory;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Enumeration getOpenBuffers() {
        Enumeration result;
        BufferCache bufferCache = this.openBuffers;
        synchronized (bufferCache) {
            this.openBuffers.shrink();
            result = this.openBuffers.elements();
        }
        this.openBuffers.closeBuffers();
        return result;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void removeBuffer(IBuffer buffer) {
        if (VERBOSE) {
            String owner = ((Openable)buffer.getOwner()).toStringWithAncestors();
            System.out.println("Removing buffer for " + owner);
        }
        BufferCache bufferCache = this.openBuffers;
        synchronized (bufferCache) {
            this.openBuffers.remove(buffer.getOwner());
        }
        this.openBuffers.closeBuffers();
        if (VERBOSE) {
            System.out.println("-> Buffer cache filling ratio = " + NumberFormat.getInstance().format(this.openBuffers.fillingRatio()) + "%");
        }
    }
}

