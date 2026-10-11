/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.baseadaptor;

import java.io.IOException;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.framework.adaptor.BundleData;
import org.eclipse.osgi.framework.adaptor.BundleOperation;
import org.eclipse.osgi.internal.baseadaptor.AdaptorMsg;
import org.eclipse.osgi.internal.baseadaptor.BaseStorage;
import org.eclipse.osgi.internal.baseadaptor.BaseStorageHook;
import org.osgi.framework.BundleException;

public class BundleUninstall
implements BundleOperation {
    private BaseData data;
    private BaseStorage storage;

    public BundleUninstall(BaseData data, BaseStorage storage) {
        this.data = data;
        this.storage = storage;
    }

    public BundleData begin() throws BundleException {
        return this.data;
    }

    public void commit(boolean postpone) throws BundleException {
        BaseStorageHook storageHook = (BaseStorageHook)this.data.getStorageHook(BaseStorageHook.KEY);
        try {
            storageHook.delete(postpone, 1);
        }
        catch (IOException iOException) {}
        this.storage.processExtension(this.data, (byte)4);
        this.data.setLastModified(System.currentTimeMillis());
        this.storage.updateState(this.data, 16);
        this.data.setDirty(true);
        try {
            this.data.save();
        }
        catch (IOException e) {
            throw new BundleException(AdaptorMsg.ADAPTOR_STORAGE_EXCEPTION, e);
        }
    }

    public void undo() throws BundleException {
    }
}

