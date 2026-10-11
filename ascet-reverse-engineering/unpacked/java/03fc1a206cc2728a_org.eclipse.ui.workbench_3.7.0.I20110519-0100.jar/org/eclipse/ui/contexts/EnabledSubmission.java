/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.contexts;

import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.internal.util.Util;

public final class EnabledSubmission
implements Comparable {
    private final String activePartId;
    private final Shell activeShell;
    private final IWorkbenchPartSite activeWorkbenchPartSite;
    private final String contextId;
    private transient String string = null;

    public EnabledSubmission(String activePartId, Shell activeShell, IWorkbenchPartSite activeWorkbenchPartSite, String contextId) {
        if (contextId == null) {
            throw new NullPointerException();
        }
        this.activePartId = activePartId;
        this.activeShell = activeShell;
        this.activeWorkbenchPartSite = activeWorkbenchPartSite;
        this.contextId = contextId;
    }

    public int compareTo(Object object) {
        EnabledSubmission castedObject = (EnabledSubmission)object;
        int compareTo = Util.compare(this.activeWorkbenchPartSite, castedObject.activeWorkbenchPartSite);
        if (compareTo == 0 && (compareTo = Util.compare((Comparable)((Object)this.activePartId), (Comparable)((Object)castedObject.activePartId))) == 0 && (compareTo = Util.compare(this.activeShell, castedObject.activeShell)) == 0) {
            compareTo = Util.compare((Comparable)((Object)this.contextId), (Comparable)((Object)castedObject.contextId));
        }
        return compareTo;
    }

    public String getActivePartId() {
        return this.activePartId;
    }

    public Shell getActiveShell() {
        return this.activeShell;
    }

    public IWorkbenchPartSite getActiveWorkbenchPartSite() {
        return this.activeWorkbenchPartSite;
    }

    public String getContextId() {
        return this.contextId;
    }

    public String toString() {
        if (this.string == null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("[activePartId=");
            stringBuffer.append(this.activePartId);
            stringBuffer.append(",activeShell=");
            stringBuffer.append(this.activeShell);
            stringBuffer.append(",activeWorkbenchSite=");
            stringBuffer.append(this.activeWorkbenchPartSite);
            stringBuffer.append(",contextId=");
            stringBuffer.append(this.contextId);
            stringBuffer.append(']');
            this.string = stringBuffer.toString();
        }
        return this.string;
    }
}

