/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionDelta
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.IRegistryChangeListener
 *  org.eclipse.core.runtime.RegistryFactory
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.filesystem;

import java.net.URI;
import java.util.HashMap;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.filesystem.IFileSystem;
import org.eclipse.core.filesystem.provider.FileSystem;
import org.eclipse.core.internal.filesystem.Messages;
import org.eclipse.core.internal.filesystem.Policy;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionDelta;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.IRegistryChangeListener;
import org.eclipse.core.runtime.RegistryFactory;
import org.eclipse.osgi.util.NLS;

public class InternalFileSystemCore
implements IRegistryChangeListener {
    private static final InternalFileSystemCore INSTANCE = new InternalFileSystemCore();
    private HashMap fileSystems;

    public static InternalFileSystemCore getInstance() {
        return INSTANCE;
    }

    private InternalFileSystemCore() {
        RegistryFactory.getRegistry().addRegistryChangeListener((IRegistryChangeListener)this);
    }

    public IFileSystem getFileSystem(String scheme) throws CoreException {
        if (scheme == null) {
            throw new NullPointerException();
        }
        HashMap registry = this.getFileSystemRegistry();
        Object result = registry.get(scheme);
        if (result == null) {
            Policy.error(566, NLS.bind((String)Messages.noFileSystem, (Object)scheme));
        }
        if (result instanceof IFileSystem) {
            return (IFileSystem)result;
        }
        try {
            IConfigurationElement element = (IConfigurationElement)result;
            FileSystem fs = (FileSystem)element.createExecutableExtension("run");
            fs.initialize(scheme);
            registry.put(scheme, fs);
            return fs;
        }
        catch (CoreException e) {
            registry.remove(scheme);
            throw e;
        }
    }

    public IFileSystem getLocalFileSystem() {
        try {
            return this.getFileSystem("file");
        }
        catch (CoreException e) {
            throw new Error(e);
        }
    }

    public IFileStore getStore(URI uri) throws CoreException {
        String scheme = uri.getScheme();
        if (scheme == null) {
            Policy.error(566, String.valueOf(Messages.noScheme) + uri);
        }
        return this.getFileSystem(scheme).getStore(uri);
    }

    private synchronized HashMap getFileSystemRegistry() {
        if (this.fileSystems == null) {
            this.fileSystems = new HashMap();
            IExtensionPoint point = RegistryFactory.getRegistry().getExtensionPoint("org.eclipse.core.filesystem", "filesystems");
            IExtension[] extensions = point.getExtensions();
            int i = 0;
            while (i < extensions.length) {
                IConfigurationElement[] elements = extensions[i].getConfigurationElements();
                int j = 0;
                while (j < elements.length) {
                    String scheme;
                    if ("filesystem".equals(elements[j].getName()) && (scheme = elements[j].getAttribute("scheme")) != null) {
                        this.fileSystems.put(scheme, elements[j]);
                    }
                    ++j;
                }
                ++i;
            }
        }
        return this.fileSystems;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void registryChanged(IRegistryChangeEvent event) {
        IExtensionDelta[] changes = event.getExtensionDeltas("org.eclipse.core.filesystem", "filesystems");
        if (changes.length == 0) {
            return;
        }
        InternalFileSystemCore internalFileSystemCore = this;
        synchronized (internalFileSystemCore) {
            this.fileSystems = null;
        }
    }

    public IFileSystem getNullFileSystem() {
        try {
            return this.getFileSystem("null");
        }
        catch (CoreException e) {
            throw new Error(e);
        }
    }
}

