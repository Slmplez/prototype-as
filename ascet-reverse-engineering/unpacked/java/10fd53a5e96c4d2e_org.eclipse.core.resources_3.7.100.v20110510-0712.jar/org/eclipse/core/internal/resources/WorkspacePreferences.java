/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Preferences
 *  org.eclipse.core.runtime.Preferences$IPropertyChangeListener
 *  org.eclipse.core.runtime.Preferences$PropertyChangeEvent
 */
package org.eclipse.core.internal.resources;

import java.util.ArrayList;
import java.util.StringTokenizer;
import org.eclipse.core.internal.resources.WorkspaceDescription;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Preferences;

public class WorkspacePreferences
extends WorkspaceDescription {
    public static final String PROJECT_SEPARATOR = "/";
    private Preferences preferences = ResourcesPlugin.getPlugin().getPluginPreferences();

    public static String convertStringArraytoString(String[] array) {
        if (array == null || array.length == 0) {
            return "";
        }
        StringBuffer sb = new StringBuffer();
        int i = 0;
        while (i < array.length) {
            sb.append(array[i]);
            sb.append(PROJECT_SEPARATOR);
            ++i;
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }

    public static String[] convertStringToStringArray(String string, String separator) {
        ArrayList<String> list = new ArrayList<String>();
        StringTokenizer tokenizer = new StringTokenizer(string, separator);
        while (tokenizer.hasMoreTokens()) {
            list.add(tokenizer.nextToken());
        }
        return list.toArray(new String[list.size()]);
    }

    private static void copyFromTo(WorkspaceDescription source, WorkspaceDescription target) {
        target.setAutoBuilding(source.isAutoBuilding());
        target.setBuildOrder(source.getBuildOrder());
        target.setMaxBuildIterations(source.getMaxBuildIterations());
        target.setApplyFileStatePolicy(source.isApplyFileStatePolicy());
        target.setFileStateLongevity(source.getFileStateLongevity());
        target.setMaxFileStates(source.getMaxFileStates());
        target.setMaxFileStateSize(source.getMaxFileStateSize());
        target.setSnapshotInterval(source.getSnapshotInterval());
        target.setOperationsPerSnapshot(source.getOperationsPerSnapshot());
        target.setDeltaExpiration(source.getDeltaExpiration());
    }

    public WorkspacePreferences() {
        super("Workspace");
        String version = this.preferences.getString("version");
        if (!"1".equals(version)) {
            this.upgradeVersion(version);
        }
        super.setAutoBuilding(this.preferences.getBoolean("description.autobuilding"));
        super.setSnapshotInterval(this.preferences.getInt("description.snapshotinterval"));
        super.setMaxBuildIterations(this.preferences.getInt("description.maxbuilditerations"));
        super.setApplyFileStatePolicy(this.preferences.getBoolean("description.applyfilestatepolicy"));
        super.setMaxFileStates(this.preferences.getInt("description.maxfilestates"));
        super.setMaxFileStateSize(this.preferences.getLong("description.maxfilestatesize"));
        super.setFileStateLongevity(this.preferences.getLong("description.filestatelongevity"));
        super.setOperationsPerSnapshot(this.preferences.getInt("snapshots.operations"));
        super.setDeltaExpiration(this.preferences.getLong("delta.expiration"));
        this.preferences.addPropertyChangeListener(new Preferences.IPropertyChangeListener(){

            public void propertyChange(Preferences.PropertyChangeEvent event) {
                WorkspacePreferences.this.synchronizeWithPreferences(event.getProperty());
            }
        });
    }

    public Object clone() {
        throw new UnsupportedOperationException("clone() is not supported in " + this.getClass().getName());
    }

    public void copyFrom(WorkspaceDescription source) {
        WorkspacePreferences.copyFromTo(source, this);
    }

    public void copyTo(WorkspaceDescription target) {
        WorkspacePreferences.copyFromTo(this, target);
    }

    public String[] getBuildOrder() {
        boolean defaultBuildOrder = this.preferences.getBoolean("description.defaultbuildorder");
        if (defaultBuildOrder) {
            return null;
        }
        return WorkspacePreferences.convertStringToStringArray(this.preferences.getString("description.buildorder"), PROJECT_SEPARATOR);
    }

    public String[] getBuildOrder(boolean makeCopy) {
        return this.getBuildOrder();
    }

    public void setAutoBuilding(boolean value) {
        this.preferences.setValue("description.autobuilding", value);
    }

    public void setBuildOrder(String[] value) {
        this.preferences.setValue("description.defaultbuildorder", value == null);
        this.preferences.setValue("description.buildorder", WorkspacePreferences.convertStringArraytoString(value));
    }

    public void setDeltaExpiration(long value) {
        this.preferences.setValue("delta.expiration", value);
    }

    public void setApplyFileStatePolicy(boolean apply) {
        this.preferences.setValue("description.applyfilestatepolicy", apply);
    }

    public void setFileStateLongevity(long time) {
        this.preferences.setValue("description.filestatelongevity", time);
    }

    public void setMaxBuildIterations(int number) {
        this.preferences.setValue("description.maxbuilditerations", number);
    }

    public void setMaxFileStates(int number) {
        this.preferences.setValue("description.maxfilestates", number);
    }

    public void setMaxFileStateSize(long size) {
        this.preferences.setValue("description.maxfilestatesize", size);
    }

    public void setOperationsPerSnapshot(int value) {
        this.preferences.setValue("snapshots.operations", value);
    }

    public void setSnapshotInterval(long delay) {
        this.preferences.setValue("description.snapshotinterval", delay);
    }

    protected void synchronizeWithPreferences(String property) {
        if (property.equals("description.autobuilding")) {
            super.setAutoBuilding(this.preferences.getBoolean("description.autobuilding"));
        } else if (property.equals("description.snapshotinterval")) {
            super.setSnapshotInterval(this.preferences.getLong("description.snapshotinterval"));
        } else if (property.equals("description.maxbuilditerations")) {
            super.setMaxBuildIterations(this.preferences.getInt("description.maxbuilditerations"));
        } else if (property.equals("description.applyfilestatepolicy")) {
            super.setApplyFileStatePolicy(this.preferences.getBoolean("description.applyfilestatepolicy"));
        } else if (property.equals("description.maxfilestates")) {
            super.setMaxFileStates(this.preferences.getInt("description.maxfilestates"));
        } else if (property.equals("description.maxfilestatesize")) {
            super.setMaxFileStateSize(this.preferences.getLong("description.maxfilestatesize"));
        } else if (property.equals("description.filestatelongevity")) {
            super.setFileStateLongevity(this.preferences.getLong("description.filestatelongevity"));
        } else if (property.equals("snapshots.operations")) {
            super.setOperationsPerSnapshot(this.preferences.getInt("snapshots.operations"));
        } else if (property.equals("delta.expiration")) {
            super.setDeltaExpiration(this.preferences.getLong("delta.expiration"));
        }
    }

    private void upgradeVersion(String oldVersion) {
        if (oldVersion.length() == 0 && !this.preferences.getBoolean("description.defaultbuildorder")) {
            String oldOrder = this.preferences.getString("description.buildorder");
            this.setBuildOrder(WorkspacePreferences.convertStringToStringArray(oldOrder, ":"));
        }
        this.preferences.setValue("version", "1");
    }
}

