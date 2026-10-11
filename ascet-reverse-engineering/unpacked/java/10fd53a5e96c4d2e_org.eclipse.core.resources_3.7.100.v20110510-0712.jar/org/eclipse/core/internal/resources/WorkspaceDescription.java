/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.preferences.DefaultScope
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 */
package org.eclipse.core.internal.resources;

import org.eclipse.core.internal.resources.ModelObject;
import org.eclipse.core.resources.IWorkspaceDescription;
import org.eclipse.core.runtime.preferences.DefaultScope;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;

public class WorkspaceDescription
extends ModelObject
implements IWorkspaceDescription {
    protected boolean autoBuilding;
    protected String[] buildOrder;
    protected long fileStateLongevity;
    protected int maxBuildIterations;
    protected int maxFileStates;
    protected long maxFileStateSize;
    protected boolean applyFileStatePolicy;
    private long snapshotInterval;
    protected int operationsPerSnapshot;
    protected long deltaExpiration;

    public WorkspaceDescription(String name) {
        super(name);
        IEclipsePreferences node = new DefaultScope().getNode("org.eclipse.core.resources");
        this.autoBuilding = node.getBoolean("description.autobuilding", true);
        this.maxBuildIterations = node.getInt("description.maxbuilditerations", 10);
        this.applyFileStatePolicy = node.getBoolean("description.applyfilestatepolicy", true);
        this.fileStateLongevity = node.getLong("description.filestatelongevity", 604800000L);
        this.maxFileStates = node.getInt("description.maxfilestates", 50);
        this.maxFileStateSize = node.getLong("description.maxfilestatesize", 0x100000L);
        this.snapshotInterval = node.getLong("description.snapshotinterval", 300000L);
        this.operationsPerSnapshot = node.getInt("snapshots.operations", 100);
        this.deltaExpiration = node.getLong("delta.expiration", 2592000000L);
    }

    public String[] getBuildOrder() {
        return this.getBuildOrder(true);
    }

    public String[] getBuildOrder(boolean makeCopy) {
        if (this.buildOrder == null) {
            return null;
        }
        return makeCopy ? (String[])this.buildOrder.clone() : this.buildOrder;
    }

    public long getDeltaExpiration() {
        return this.deltaExpiration;
    }

    public void setDeltaExpiration(long value) {
        this.deltaExpiration = value;
    }

    public long getFileStateLongevity() {
        return this.fileStateLongevity;
    }

    public int getMaxBuildIterations() {
        return this.maxBuildIterations;
    }

    public int getMaxFileStates() {
        return this.maxFileStates;
    }

    public long getMaxFileStateSize() {
        return this.maxFileStateSize;
    }

    public boolean isApplyFileStatePolicy() {
        return this.applyFileStatePolicy;
    }

    public int getOperationsPerSnapshot() {
        return this.operationsPerSnapshot;
    }

    public long getSnapshotInterval() {
        return this.snapshotInterval;
    }

    public void internalSetBuildOrder(String[] value) {
        this.buildOrder = value;
    }

    public boolean isAutoBuilding() {
        return this.autoBuilding;
    }

    public void setOperationsPerSnapshot(int value) {
        this.operationsPerSnapshot = value;
    }

    public void setAutoBuilding(boolean value) {
        this.autoBuilding = value;
    }

    public void setBuildOrder(String[] value) {
        this.buildOrder = value == null ? null : (String[])value.clone();
    }

    public void setFileStateLongevity(long time) {
        this.fileStateLongevity = time;
    }

    public void setMaxBuildIterations(int number) {
        this.maxBuildIterations = number;
    }

    public void setMaxFileStates(int number) {
        this.maxFileStates = number;
    }

    public void setMaxFileStateSize(long size) {
        this.maxFileStateSize = size;
    }

    public void setApplyFileStatePolicy(boolean apply) {
        this.applyFileStatePolicy = apply;
    }

    public void setSnapshotInterval(long snapshotInterval) {
        this.snapshotInterval = snapshotInterval;
    }
}

