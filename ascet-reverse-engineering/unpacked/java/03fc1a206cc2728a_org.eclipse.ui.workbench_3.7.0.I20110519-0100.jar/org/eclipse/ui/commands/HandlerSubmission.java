/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.commands;

import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.commands.IHandler;
import org.eclipse.ui.commands.Priority;
import org.eclipse.ui.internal.util.Util;

public final class HandlerSubmission
implements Comparable {
    private final String activePartId;
    private final Shell activeShell;
    private final IWorkbenchPartSite activeWorkbenchPartSite;
    private final String commandId;
    private final IHandler handler;
    private final Priority priority;
    private transient String string;

    public HandlerSubmission(String activePartId, Shell activeShell, IWorkbenchPartSite activeWorkbenchPartSite, String commandId, IHandler handler, Priority priority) {
        if (commandId == null || handler == null || priority == null) {
            throw new NullPointerException();
        }
        this.activePartId = activePartId;
        this.activeShell = activeShell;
        this.activeWorkbenchPartSite = activeWorkbenchPartSite;
        this.commandId = commandId;
        this.handler = handler;
        this.priority = priority;
    }

    public int compareTo(Object object) {
        HandlerSubmission castedObject = (HandlerSubmission)object;
        int compareTo = Util.compare(this.activeWorkbenchPartSite, castedObject.activeWorkbenchPartSite);
        if (compareTo == 0 && (compareTo = Util.compare((Comparable)((Object)this.activePartId), (Comparable)((Object)castedObject.activePartId))) == 0 && (compareTo = Util.compare(this.activeShell, castedObject.activeShell)) == 0 && (compareTo = Util.compare(this.priority, castedObject.priority)) == 0 && (compareTo = Util.compare((Comparable)((Object)this.commandId), (Comparable)((Object)castedObject.commandId))) == 0) {
            compareTo = Util.compare(this.handler, castedObject.handler);
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

    public String getCommandId() {
        return this.commandId;
    }

    public IHandler getHandler() {
        return this.handler;
    }

    public Priority getPriority() {
        return this.priority;
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
            stringBuffer.append(",commandId=");
            stringBuffer.append(this.commandId);
            stringBuffer.append(",handler=");
            stringBuffer.append(this.handler);
            stringBuffer.append(",priority=");
            stringBuffer.append(this.priority);
            stringBuffer.append(']');
            this.string = stringBuffer.toString();
        }
        return this.string;
    }
}

