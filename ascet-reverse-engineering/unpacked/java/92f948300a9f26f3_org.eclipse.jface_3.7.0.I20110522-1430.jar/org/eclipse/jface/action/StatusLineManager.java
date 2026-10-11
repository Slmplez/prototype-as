/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IProgressMonitorWithBlocking
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.action;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IProgressMonitorWithBlocking;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.action.ContributionManager;
import org.eclipse.jface.action.GroupMarker;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IStatusLineManager;
import org.eclipse.jface.action.StatusLine;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;

public class StatusLineManager
extends ContributionManager
implements IStatusLineManager {
    public static final String BEGIN_GROUP = "BEGIN_GROUP";
    public static final String MIDDLE_GROUP = "MIDDLE_GROUP";
    public static final String END_GROUP = "END_GROUP";
    private Composite statusLine = null;

    public StatusLineManager() {
        this.add(new GroupMarker(BEGIN_GROUP));
        this.add(new GroupMarker(MIDDLE_GROUP));
        this.add(new GroupMarker(END_GROUP));
    }

    public Control createControl(Composite parent) {
        return this.createControl(parent, 0);
    }

    public Control createControl(Composite parent, int style) {
        if (!this.statusLineExist() && parent != null) {
            this.statusLine = new StatusLine(parent, style);
            this.update(false);
        }
        return this.statusLine;
    }

    public void dispose() {
        if (this.statusLineExist()) {
            this.statusLine.dispose();
        }
        this.statusLine = null;
        IContributionItem[] items = this.getItems();
        int i = 0;
        while (i < items.length) {
            items[i].dispose();
            ++i;
        }
    }

    public Control getControl() {
        return this.statusLine;
    }

    protected IProgressMonitor getProgressMonitorDelegate() {
        return (IProgressMonitor)this.getControl();
    }

    public IProgressMonitor getProgressMonitor() {
        return new IProgressMonitorWithBlocking(){
            IProgressMonitor progressDelegate;
            {
                this.progressDelegate = StatusLineManager.this.getProgressMonitorDelegate();
            }

            public void beginTask(String name, int totalWork) {
                this.progressDelegate.beginTask(name, totalWork);
            }

            public void done() {
                this.progressDelegate.done();
            }

            public void internalWorked(double work) {
                this.progressDelegate.internalWorked(work);
            }

            public boolean isCanceled() {
                return this.progressDelegate.isCanceled();
            }

            public void setCanceled(boolean value) {
                if (StatusLineManager.this.statusLineExist()) {
                    this.progressDelegate.setCanceled(value);
                }
            }

            public void setTaskName(String name) {
                this.progressDelegate.setTaskName(name);
            }

            public void subTask(String name) {
                this.progressDelegate.subTask(name);
            }

            public void worked(int work) {
                this.progressDelegate.worked(work);
            }

            public void clearBlocked() {
            }

            public void setBlocked(IStatus reason) {
            }
        };
    }

    public boolean isCancelEnabled() {
        return this.statusLineExist() && ((StatusLine)this.statusLine).isCancelEnabled();
    }

    public void setCancelEnabled(boolean enabled) {
        if (this.statusLineExist()) {
            ((StatusLine)this.statusLine).setCancelEnabled(enabled);
        }
    }

    public void setErrorMessage(String message) {
        if (this.statusLineExist()) {
            ((StatusLine)this.statusLine).setErrorMessage(message);
        }
    }

    public void setErrorMessage(Image image, String message) {
        if (this.statusLineExist()) {
            ((StatusLine)this.statusLine).setErrorMessage(image, message);
        }
    }

    public void setMessage(String message) {
        if (this.statusLineExist()) {
            ((StatusLine)this.statusLine).setMessage(message);
        }
    }

    public void setMessage(Image image, String message) {
        if (this.statusLineExist()) {
            ((StatusLine)this.statusLine).setMessage(image, message);
        }
    }

    private boolean statusLineExist() {
        return this.statusLine != null && !this.statusLine.isDisposed();
    }

    public void update(boolean force) {
        if ((this.isDirty() || force) && this.statusLineExist()) {
            this.statusLine.setRedraw(false);
            Control[] ws = this.statusLine.getChildren();
            int i = 0;
            while (i < ws.length) {
                Control w = ws[i];
                Object data = w.getData();
                if (data instanceof IContributionItem) {
                    w.dispose();
                }
                ++i;
            }
            int oldChildCount = this.statusLine.getChildren().length;
            IContributionItem[] items = this.getItems();
            int i2 = 0;
            while (i2 < items.length) {
                IContributionItem ci = items[i2];
                if (ci.isVisible()) {
                    ci.fill(this.statusLine);
                    Control[] newChildren = this.statusLine.getChildren();
                    int j = oldChildCount;
                    while (j < newChildren.length) {
                        newChildren[j].setData((Object)ci);
                        ++j;
                    }
                    oldChildCount = newChildren.length;
                }
                ++i2;
            }
            this.setDirty(false);
            this.statusLine.layout();
            this.statusLine.setRedraw(true);
        }
    }
}

