/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.update.internal.configurator;

import org.eclipse.osgi.util.NLS;
import org.eclipse.update.internal.configurator.Messages;
import org.eclipse.update.internal.configurator.Utils;
import org.eclipse.update.internal.configurator.VersionedIdentifier;

public class PluginEntry {
    private String pluginId;
    private String pluginVersion;
    private boolean isFragment = false;
    private VersionedIdentifier versionId;
    private String url;

    public String getURL() {
        return this.url;
    }

    public void setURL(String url) {
        this.url = url;
    }

    public String getPluginIdentifier() {
        return this.pluginId;
    }

    public String getPluginVersion() {
        return this.pluginVersion;
    }

    public boolean isFragment() {
        return this.isFragment;
    }

    void setPluginIdentifier(String pluginId) {
        this.pluginId = pluginId;
    }

    void setPluginVersion(String pluginVersion) {
        this.pluginVersion = pluginVersion;
    }

    public void isFragment(boolean isFragment) {
        this.isFragment = isFragment;
    }

    public String toString() {
        String msg = this.getPluginIdentifier() != null ? this.getPluginIdentifier().toString() : "";
        msg = String.valueOf(msg) + (this.getPluginVersion() != null ? " " + this.getPluginVersion().toString() : "");
        msg = String.valueOf(msg) + (this.isFragment() ? " fragment" : " plugin");
        return msg;
    }

    public VersionedIdentifier getVersionedIdentifier() {
        if (this.versionId != null) {
            return this.versionId;
        }
        String id = this.getPluginIdentifier();
        String ver = this.getPluginVersion();
        if (id != null && ver != null) {
            try {
                this.versionId = new VersionedIdentifier(id, ver);
                return this.versionId;
            }
            catch (Exception exception) {
                Utils.log(NLS.bind((String)Messages.PluginEntry_versionError, (Object[])new String[]{id, ver}));
            }
        }
        this.versionId = new VersionedIdentifier("", null);
        return this.versionId;
    }

    void setVersionedIdentifier(VersionedIdentifier identifier) {
        this.setPluginIdentifier(identifier.getIdentifier());
        this.setPluginVersion(identifier.getVersion().toString());
    }

    public boolean equals(Object object) {
        if (!(object instanceof PluginEntry)) {
            return false;
        }
        PluginEntry e = (PluginEntry)object;
        return this.getVersionedIdentifier().equals(e.getVersionedIdentifier());
    }

    public int hashCode() {
        return this.getVersionedIdentifier().hashCode();
    }
}

