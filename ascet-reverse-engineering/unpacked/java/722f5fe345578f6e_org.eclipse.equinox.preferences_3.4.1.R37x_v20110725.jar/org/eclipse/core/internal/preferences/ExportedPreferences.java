/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.preferences;

import org.eclipse.core.internal.preferences.EclipsePreferences;
import org.eclipse.core.runtime.preferences.IExportedPreferences;

public class ExportedPreferences
extends EclipsePreferences
implements IExportedPreferences {
    private boolean isExportRoot = false;
    private String version;

    public static IExportedPreferences newRoot() {
        return new ExportedPreferences(null, "");
    }

    protected ExportedPreferences(EclipsePreferences parent, String name) {
        super(parent, name);
    }

    public boolean isExportRoot() {
        return this.isExportRoot;
    }

    public void setExportRoot() {
        this.isExportRoot = true;
    }

    public String getVersion() {
        return this.version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    protected EclipsePreferences internalCreate(EclipsePreferences nodeParent, String nodeName, Object context) {
        return new ExportedPreferences(nodeParent, nodeName);
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        if (this.isExportRoot) {
            buffer.append("* ");
        }
        buffer.append(this.absolutePath());
        if (this.version != null) {
            buffer.append(" (" + this.version + ')');
        }
        return buffer.toString();
    }
}

