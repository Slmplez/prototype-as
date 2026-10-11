/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.internal.dtree;

import org.eclipse.core.runtime.IPath;

public class DataTreeLookup {
    public IPath key;
    public boolean isPresent;
    public Object data;
    public boolean foundInFirstDelta;
    private static final int POOL_SIZE = 100;
    private static DataTreeLookup[] instancePool;
    private static int nextFree;

    static {
        nextFree = 0;
        instancePool = new DataTreeLookup[100];
        int i = 0;
        while (i < 100) {
            DataTreeLookup.instancePool[i] = new DataTreeLookup();
            ++i;
        }
    }

    private DataTreeLookup() {
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static DataTreeLookup newLookup(IPath nodeKey, boolean isPresent, Object data) {
        DataTreeLookup[] dataTreeLookupArray = instancePool;
        synchronized (instancePool) {
            DataTreeLookup instance = instancePool[nextFree];
            ++nextFree;
            nextFree %= 100;
            // ** MonitorExit[var4_3] (shouldn't be in output)
            instance.key = nodeKey;
            instance.isPresent = isPresent;
            instance.data = data;
            instance.foundInFirstDelta = false;
            return instance;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static DataTreeLookup newLookup(IPath nodeKey, boolean isPresent, Object data, boolean foundInFirstDelta) {
        DataTreeLookup[] dataTreeLookupArray = instancePool;
        synchronized (instancePool) {
            DataTreeLookup instance = instancePool[nextFree];
            ++nextFree;
            nextFree %= 100;
            // ** MonitorExit[var5_4] (shouldn't be in output)
            instance.key = nodeKey;
            instance.isPresent = isPresent;
            instance.data = data;
            instance.foundInFirstDelta = foundInFirstDelta;
            return instance;
        }
    }
}

