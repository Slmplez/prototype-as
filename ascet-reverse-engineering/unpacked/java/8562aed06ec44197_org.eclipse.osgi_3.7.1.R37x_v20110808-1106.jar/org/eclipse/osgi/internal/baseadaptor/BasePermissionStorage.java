/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.baseadaptor;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.osgi.framework.adaptor.PermissionStorage;
import org.eclipse.osgi.internal.baseadaptor.BaseStorage;

public class BasePermissionStorage
implements PermissionStorage {
    private Map<String, String[]> locations = new HashMap<String, String[]>();
    private String[] defaultInfos;
    private String[] condPermInfos;
    private BaseStorage storage;
    private boolean dirty;

    BasePermissionStorage(BaseStorage storage) {
        this.storage = storage;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String[] getLocations() throws IOException {
        Map<String, String[]> map = this.locations;
        synchronized (map) {
            String[] result = new String[this.locations.size()];
            int i = 0;
            Iterator<String> iLocs = this.locations.keySet().iterator();
            while (iLocs.hasNext()) {
                result[i] = iLocs.next();
                ++i;
            }
            return result;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String[] getPermissionData(String location) throws IOException {
        if (location == null) {
            return this.defaultInfos;
        }
        Map<String, String[]> map = this.locations;
        synchronized (map) {
            block5: {
                if (this.locations.size() != 0) break block5;
                return null;
            }
            return this.locations.get(location);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void setPermissionData(String location, String[] data) throws IOException {
        if (location == null) {
            this.defaultInfos = data;
            return;
        }
        Map<String, String[]> map = this.locations;
        synchronized (map) {
            if (data == null) {
                this.locations.remove(location);
            } else {
                this.locations.put(location, data);
            }
        }
        this.setDirty(true);
        this.storage.requestSave();
    }

    public void saveConditionalPermissionInfos(String[] infos) throws IOException {
        this.condPermInfos = infos;
        this.setDirty(true);
        this.storage.requestSave();
    }

    public String[] getConditionalPermissionInfos() throws IOException {
        return this.condPermInfos;
    }

    public boolean isDirty() {
        return this.dirty;
    }

    public void setDirty(boolean dirty) {
        this.dirty = dirty;
    }
}

