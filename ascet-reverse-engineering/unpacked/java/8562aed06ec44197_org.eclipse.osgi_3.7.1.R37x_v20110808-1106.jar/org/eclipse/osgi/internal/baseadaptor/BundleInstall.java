/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.baseadaptor;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.Dictionary;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.hooks.StorageHook;
import org.eclipse.osgi.framework.adaptor.BundleData;
import org.eclipse.osgi.framework.adaptor.BundleOperation;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.internal.core.ReferenceInputStream;
import org.eclipse.osgi.internal.baseadaptor.AdaptorMsg;
import org.eclipse.osgi.internal.baseadaptor.AdaptorUtil;
import org.eclipse.osgi.internal.baseadaptor.BaseStorage;
import org.eclipse.osgi.internal.baseadaptor.BaseStorageHook;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleException;

public class BundleInstall
implements BundleOperation {
    private BaseData data;
    private URLConnection source;
    private BaseStorage storage;

    public BundleInstall(BaseData data, URLConnection source, BaseStorage storage) {
        this.data = data;
        this.source = source;
        this.storage = storage;
    }

    public BundleData begin() throws BundleException {
        try {
            InputStream in = null;
            try {
                String protocol;
                this.data.setLastModified(System.currentTimeMillis());
                this.data.setStartLevel(this.storage.getInitialBundleStartLevel());
                StorageHook[] storageHooks = this.data.getAdaptor().getHookRegistry().getStorageHooks();
                StorageHook[] instanceHooks = new StorageHook[storageHooks.length];
                int i = 0;
                while (i < storageHooks.length) {
                    instanceHooks[i] = storageHooks[i].create(this.data);
                    ++i;
                }
                this.data.setStorageHooks(instanceHooks);
                BaseStorageHook storageHook = (BaseStorageHook)this.data.getStorageHook(BaseStorageHook.KEY);
                in = this.source.getInputStream();
                URL sourceURL = this.source.getURL();
                String string = protocol = sourceURL == null ? null : sourceURL.getProtocol();
                if (in instanceof ReferenceInputStream) {
                    URL reference = ((ReferenceInputStream)in).getReference();
                    if (!"file".equals(reference.getProtocol())) {
                        throw new BundleException(NLS.bind(AdaptorMsg.ADAPTOR_URL_CREATE_EXCEPTION, reference));
                    }
                    storageHook.setReference(true);
                    storageHook.setFileName(reference.getPath());
                } else {
                    File genDir = storageHook.createGenerationDir();
                    if (!genDir.exists()) {
                        throw new IOException(NLS.bind(AdaptorMsg.ADAPTOR_DIRECTORY_CREATE_EXCEPTION, genDir.getPath()));
                    }
                    storageHook.setReference(false);
                    storageHook.setFileName("bundlefile");
                    File outFile = new File(genDir, storageHook.getFileName());
                    if ("file".equals(protocol)) {
                        File inFile = new File(this.source.getURL().getPath());
                        if (inFile.isDirectory()) {
                            AdaptorUtil.copyDir(inFile, outFile);
                        } else {
                            AdaptorUtil.readFile(in, outFile);
                        }
                    } else {
                        AdaptorUtil.readFile(in, outFile);
                    }
                }
                Dictionary<String, String> manifest = this.storage.loadManifest(this.data, true);
                int i2 = 0;
                while (i2 < instanceHooks.length) {
                    instanceHooks[i2].initialize(manifest);
                    ++i2;
                }
            }
            catch (Throwable throwable) {
                try {
                    if (in != null) {
                        in.close();
                    }
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                if (in != null) {
                    in.close();
                }
            }
            catch (IOException iOException) {}
        }
        catch (IOException ioe) {
            throw new BundleException(AdaptorMsg.BUNDLE_READ_EXCEPTION, 11, ioe);
        }
        return this.data;
    }

    public void undo() {
        block7: {
            if (this.data != null) {
                try {
                    this.data.close();
                }
                catch (IOException e) {
                    if (!Debug.DEBUG_GENERAL) break block7;
                    Debug.println("Unable to close " + this.data + ": " + e.getMessage());
                }
            }
        }
        if (this.data != null) {
            BaseStorageHook storageHook = (BaseStorageHook)this.data.getStorageHook(BaseStorageHook.KEY);
            try {
                if (storageHook != null) {
                    storageHook.delete(false, 1);
                }
            }
            catch (IOException e) {
                this.data.getAdaptor().getEventPublisher().publishFrameworkEvent(2, this.data.getBundle(), e);
            }
        }
    }

    public void commit(boolean postpone) throws BundleException {
        this.storage.processExtension(this.data, (byte)2);
        this.storage.updateState(this.data, 1);
        try {
            this.data.save();
        }
        catch (IOException e) {
            throw new BundleException(AdaptorMsg.ADAPTOR_STORAGE_EXCEPTION, e);
        }
    }
}

