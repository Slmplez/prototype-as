/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.resources;

import java.util.Properties;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.resources.ResourcesPlugin;

public class TestingSupport {
    public static Properties getMasterTable() {
        return ((Workspace)ResourcesPlugin.getWorkspace()).getSaveManager().getMasterTable();
    }

    public static void waitForSnapshot() {
        try {
            ((Workspace)ResourcesPlugin.getWorkspace()).getSaveManager().snapshotJob.join();
        }
        catch (InterruptedException e) {
            e.printStackTrace();
            throw new RuntimeException("Interrupted while waiting for snapshot");
        }
    }

    private TestingSupport() {
    }
}

