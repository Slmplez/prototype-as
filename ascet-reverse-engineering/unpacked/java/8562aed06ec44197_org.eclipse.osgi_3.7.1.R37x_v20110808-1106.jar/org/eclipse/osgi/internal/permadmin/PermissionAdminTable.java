/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.permadmin;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.osgi.internal.permadmin.PermissionInfoCollection;
import org.osgi.service.permissionadmin.PermissionInfo;

public class PermissionAdminTable {
    private final Map<String, PermissionInfoCollection> locations = new HashMap<String, PermissionInfoCollection>();

    String[] getLocations() {
        return this.locations.keySet().toArray(new String[this.locations.size()]);
    }

    PermissionInfo[] getPermissions(String location) {
        PermissionInfoCollection collection = this.locations.get(location);
        if (collection != null) {
            return collection.getPermissionInfos();
        }
        return null;
    }

    void setPermissions(String location, PermissionInfo[] permissions) {
        if (permissions == null) {
            this.locations.remove(location);
            return;
        }
        this.locations.put(location, new PermissionInfoCollection(permissions));
    }

    PermissionInfoCollection getCollection(String location) {
        return this.locations.get(location);
    }

    PermissionInfoCollection[] getCollections() {
        String[] currentLocations = this.getLocations();
        PermissionInfoCollection[] results = new PermissionInfoCollection[currentLocations.length];
        int i = 0;
        while (i < results.length) {
            results[i] = this.getCollection(currentLocations[i]);
            ++i;
        }
        return results;
    }
}

