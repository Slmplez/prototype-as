/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.EventManager
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.util.SafeRunnable
 */
package org.eclipse.ui.internal;

import org.eclipse.core.commands.common.EventManager;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.ui.IPageListener;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.internal.misc.UIStats;

public class PageListenerList
extends EventManager {
    public void addPageListener(IPageListener l) {
        this.addListenerObject(l);
    }

    private void fireEvent(SafeRunnable runnable, IPageListener listener, IWorkbenchPage page, String description) {
        String label = null;
        if (UIStats.isDebugging(11)) {
            label = String.valueOf(description) + page.getLabel();
            UIStats.start(11, label);
        }
        Platform.run((ISafeRunnable)runnable);
        if (UIStats.isDebugging(11)) {
            UIStats.end(11, listener, label);
        }
    }

    public void firePageActivated(final IWorkbenchPage page) {
        Object[] array = this.getListeners();
        int i = 0;
        while (i < array.length) {
            final IPageListener l = (IPageListener)array[i];
            this.fireEvent(new SafeRunnable(){

                public void run() {
                    l.pageActivated(page);
                }
            }, l, page, "activated::");
            ++i;
        }
    }

    public void firePageClosed(final IWorkbenchPage page) {
        Object[] array = this.getListeners();
        int i = 0;
        while (i < array.length) {
            final IPageListener l = (IPageListener)array[i];
            this.fireEvent(new SafeRunnable(){

                public void run() {
                    l.pageClosed(page);
                }
            }, l, page, "closed::");
            ++i;
        }
    }

    public void firePageOpened(final IWorkbenchPage page) {
        Object[] listeners = this.getListeners();
        int i = 0;
        while (i < listeners.length) {
            final IPageListener l = (IPageListener)listeners[i];
            this.fireEvent(new SafeRunnable(){

                public void run() {
                    l.pageOpened(page);
                }
            }, l, page, "opened::");
            ++i;
        }
    }

    public void removePageListener(IPageListener l) {
        this.removeListenerObject(l);
    }
}

