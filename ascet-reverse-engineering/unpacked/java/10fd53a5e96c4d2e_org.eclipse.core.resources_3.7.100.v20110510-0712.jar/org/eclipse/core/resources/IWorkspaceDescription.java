/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.resources;

public interface IWorkspaceDescription {
    public String[] getBuildOrder();

    public long getFileStateLongevity();

    public int getMaxBuildIterations();

    public int getMaxFileStates();

    public long getMaxFileStateSize();

    public boolean isApplyFileStatePolicy();

    public long getSnapshotInterval();

    public boolean isAutoBuilding();

    public void setAutoBuilding(boolean var1);

    public void setBuildOrder(String[] var1);

    public void setFileStateLongevity(long var1);

    public void setMaxBuildIterations(int var1);

    public void setMaxFileStates(int var1);

    public void setMaxFileStateSize(long var1);

    public void setApplyFileStatePolicy(boolean var1);

    public void setSnapshotInterval(long var1);
}

