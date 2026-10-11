/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.ui.IPropertyListener
 *  org.eclipse.ui.IWorkbenchPart
 *  org.eclipse.ui.IWorkbenchPartSite
 */
package org.eclipse.ui.internal.console;

import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.console.IConsole;

public class ConsoleWorkbenchPart
implements IWorkbenchPart {
    private IConsole fConsole = null;
    private IWorkbenchPartSite fSite = null;

    public boolean equals(Object obj) {
        return obj instanceof ConsoleWorkbenchPart && this.fConsole.equals(((ConsoleWorkbenchPart)obj).fConsole);
    }

    public int hashCode() {
        return this.fConsole.hashCode();
    }

    public ConsoleWorkbenchPart(IConsole console, IWorkbenchPartSite site) {
        this.fConsole = console;
        this.fSite = site;
    }

    public void addPropertyListener(IPropertyListener listener) {
    }

    public void createPartControl(Composite parent) {
    }

    public void dispose() {
    }

    public IWorkbenchPartSite getSite() {
        return this.fSite;
    }

    public String getTitle() {
        return "";
    }

    public Image getTitleImage() {
        return null;
    }

    public String getTitleToolTip() {
        return "";
    }

    public void removePropertyListener(IPropertyListener listener) {
    }

    public void setFocus() {
    }

    public Object getAdapter(Class adapter) {
        return null;
    }

    protected IConsole getConsole() {
        return this.fConsole;
    }
}

