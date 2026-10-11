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
import org.eclipse.osgi.framework.internal.core.ReferenceInputStream;
import org.eclipse.osgi.internal.baseadaptor.AdaptorMsg;
import org.eclipse.osgi.internal.baseadaptor.AdaptorUtil;
import org.eclipse.osgi.internal.baseadaptor.BaseStorage;
import org.eclipse.osgi.internal.baseadaptor.BaseStorageHook;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleException;

public class BundleUpdate
implements BundleOperation {
    private BaseData data;
    private BaseData newData;
    private URLConnection source;
    private BaseStorage storage;

    public BundleUpdate(BaseData data, URLConnection source, BaseStorage storage) {
        this.data = data;
        this.source = source;
        this.storage = storage;
    }

    public BundleData begin() throws BundleException {
        try {
            this.newData = this.storage.createBaseData(this.data.getBundleID(), this.data.getLocation());
            this.newData.setLastModified(System.currentTimeMillis());
            this.newData.setStartLevel(this.data.getStartLevel());
            this.newData.setStatus(this.data.getStatus());
            StorageHook[] storageHooks = this.data.getAdaptor().getHookRegistry().getStorageHooks();
            StorageHook[] instanceHooks = new StorageHook[storageHooks.length];
            int i = 0;
            while (i < storageHooks.length) {
                instanceHooks[i] = storageHooks[i].create(this.newData);
                instanceHooks[i].copy(this.data.getStorageHook((String)instanceHooks[i].getKey()));
                ++i;
            }
            this.newData.setStorageHooks(instanceHooks);
            BaseStorageHook newStorageHook = (BaseStorageHook)this.newData.getStorageHook(BaseStorageHook.KEY);
            InputStream in = this.source.getInputStream();
            URL sourceURL = this.source.getURL();
            String protocol = sourceURL == null ? null : sourceURL.getProtocol();
            try {
                if (in instanceof ReferenceInputStream) {
                    URL reference = ((ReferenceInputStream)in).getReference();
                    if (!"file".equals(reference.getProtocol())) {
                        throw new BundleException(NLS.bind(AdaptorMsg.ADAPTOR_URL_CREATE_EXCEPTION, reference));
                    }
                    String path = reference.getPath();
                    newStorageHook.setReference(true);
                    newStorageHook.setFileName(path);
                } else {
                    File genDir = newStorageHook.createGenerationDir();
                    if (!genDir.exists()) {
                        throw new BundleException(NLS.bind(AdaptorMsg.ADAPTOR_DIRECTORY_CREATE_EXCEPTION, genDir.getPath()));
                    }
                    newStorageHook.setReference(false);
                    newStorageHook.setFileName("bundlefile");
                    File outFile = new File(genDir, newStorageHook.getFileName());
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
                Dictionary<String, String> manifest = this.storage.loadManifest(this.newData, true);
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
        catch (IOException e) {
            throw new BundleException(AdaptorMsg.BUNDLE_READ_EXCEPTION, 11, e);
        }
        return this.newData;
    }

    public void commit(boolean postpone) throws BundleException {
        this.storage.processExtension(this.data, (byte)4);
        this.storage.processExtension(this.newData, (byte)8);
        this.newData.setLastModified(System.currentTimeMillis());
        this.storage.updateState(this.newData, 8);
        try {
            this.newData.save();
        }
        catch (IOException e) {
            throw new BundleException(AdaptorMsg.ADAPTOR_STORAGE_EXCEPTION, e);
        }
        BaseStorageHook oldStorageHook = (BaseStorageHook)this.data.getStorageHook(BaseStorageHook.KEY);
        try {
            oldStorageHook.delete(postpone, 2);
        }
        catch (IOException e) {
            this.data.getAdaptor().getEventPublisher().publishFrameworkEvent(2, this.data.getBundle(), e);
        }
    }

    public void undo() throws BundleException {
        if (this.newData != null) {
            BaseStorageHook newStorageHook = (BaseStorageHook)this.newData.getStorageHook(BaseStorageHook.KEY);
            try {
                if (newStorageHook != null) {
                    newStorageHook.delete(false, 2);
                }
            }
            catch (IOException e) {
                this.data.getAdaptor().getEventPublisher().publishFrameworkEvent(2, this.data.getBundle(), e);
            }
        }
    }
}

