/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.pde.internal.build.tasks;

import org.eclipse.core.runtime.IStatus;

public class TaskHelper {
    public static StringBuffer statusToString(IStatus status, StringBuffer b) {
        IStatus[] nestedStatus = status.getChildren();
        if (b == null) {
            b = new StringBuffer();
        }
        b.append(status.getMessage());
        int i = 0;
        while (i < nestedStatus.length) {
            b.append('\n');
            b.append(TaskHelper.statusToString(nestedStatus[i], b));
            ++i;
        }
        return b;
    }
}

