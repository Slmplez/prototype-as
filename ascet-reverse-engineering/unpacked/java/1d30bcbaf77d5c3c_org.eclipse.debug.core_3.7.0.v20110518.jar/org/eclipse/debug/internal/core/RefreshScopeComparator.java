/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.internal.core;

import java.util.Comparator;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.RefreshUtil;

public class RefreshScopeComparator
implements Comparator {
    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public int compare(Object o1, Object o2) {
        String m1 = (String)o1;
        String m2 = (String)o2;
        try {
            IResource[] r1 = RefreshUtil.toResources(m1);
            IResource[] r2 = RefreshUtil.toResources(m2);
            if (r1.length != r2.length) return -1;
            int i = 0;
            while (true) {
                if (i >= r2.length) {
                    return 0;
                }
                if (!r1[i].equals((Object)r2[i])) {
                    return -1;
                }
                ++i;
            }
        }
        catch (CoreException coreException) {
            return -1;
        }
    }
}

