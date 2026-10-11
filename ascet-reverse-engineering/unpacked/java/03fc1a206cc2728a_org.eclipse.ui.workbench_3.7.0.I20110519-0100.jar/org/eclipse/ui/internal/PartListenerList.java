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
import org.eclipse.ui.IPartListener;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.internal.misc.UIStats;

public class PartListenerList
extends EventManager {
    public void addPartListener(IPartListener l) {
        this.addListenerObject(l);
    }

    private void fireEvent(SafeRunnable runnable, IPartListener listener, IWorkbenchPart part, String description) {
        String label = null;
        if (UIStats.isDebugging(9)) {
            label = String.valueOf(description) + part.getTitle();
            UIStats.start(9, label);
        }
        Platform.run((ISafeRunnable)runnable);
        if (UIStats.isDebugging(9)) {
            UIStats.end(9, listener, label);
        }
    }

    public void firePartActivated(final IWorkbenchPart part) {
        Object[] array = this.getListeners();
        int i = 0;
        while (i < array.length) {
            final IPartListener l = (IPartListener)array[i];
            this.fireEvent(new SafeRunnable(){

                public void run() {
                    l.partActivated(part);
                }
            }, l, part, "activated::");
            ++i;
        }
    }

    public void firePartBroughtToTop(final IWorkbenchPart part) {
        Object[] array = this.getListeners();
        int i = 0;
        while (i < array.length) {
            final IPartListener l = (IPartListener)array[i];
            this.fireEvent(new SafeRunnable(){

                public void run() {
                    l.partBroughtToTop(part);
                }
            }, l, part, "broughtToTop::");
            ++i;
        }
    }

    public void firePartClosed(final IWorkbenchPart part) {
        Object[] array = this.getListeners();
        int i = 0;
        while (i < array.length) {
            final IPartListener l = (IPartListener)array[i];
            this.fireEvent(new SafeRunnable(){

                public void run() {
                    l.partClosed(part);
                }
            }, l, part, "closed::");
            ++i;
        }
    }

    public void firePartDeactivated(final IWorkbenchPart part) {
        Object[] array = this.getListeners();
        int i = 0;
        while (i < array.length) {
            final IPartListener l = (IPartListener)array[i];
            this.fireEvent(new SafeRunnable(){

                public void run() {
                    l.partDeactivated(part);
                }
            }, l, part, "deactivated::");
            ++i;
        }
    }

    public void firePartOpened(final IWorkbenchPart part) {
        Object[] array = this.getListeners();
        int i = 0;
        while (i < array.length) {
            final IPartListener l = (IPartListener)array[i];
            this.fireEvent(new SafeRunnable(){

                public void run() {
                    l.partOpened(part);
                }
            }, l, part, "opened::");
            ++i;
        }
    }

    public void removePartListener(IPartListener l) {
        this.removeListenerObject(l);
    }
}

