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
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IPerspectiveListener;
import org.eclipse.ui.IPerspectiveListener2;
import org.eclipse.ui.IPerspectiveListener3;
import org.eclipse.ui.IPerspectiveListener4;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.internal.misc.UIStats;

public class PerspectiveListenerList
extends EventManager {
    public void addPerspectiveListener(IPerspectiveListener l) {
        this.addListenerObject(l);
    }

    private void fireEvent(SafeRunnable runnable, IPerspectiveListener listener, IPerspectiveDescriptor perspective, String description) {
        String label = null;
        if (UIStats.isDebugging(12)) {
            label = String.valueOf(description) + perspective.getId();
            UIStats.start(12, label);
        }
        Platform.run((ISafeRunnable)runnable);
        if (UIStats.isDebugging(12)) {
            UIStats.end(12, listener, label);
        }
    }

    public void firePerspectiveActivated(final IWorkbenchPage page, final IPerspectiveDescriptor perspective) {
        Object[] array = this.getListeners();
        int nX = 0;
        while (nX < array.length) {
            final IPerspectiveListener l = (IPerspectiveListener)array[nX];
            this.fireEvent(new SafeRunnable(){

                public void run() {
                    l.perspectiveActivated(page, perspective);
                }
            }, l, perspective, "activated::");
            ++nX;
        }
    }

    public void firePerspectivePreDeactivate(final IWorkbenchPage page, final IPerspectiveDescriptor perspective) {
        Object[] array = this.getListeners();
        int nX = 0;
        while (nX < array.length) {
            if (array[nX] instanceof IPerspectiveListener4) {
                final IPerspectiveListener4 l4 = (IPerspectiveListener4)array[nX];
                this.fireEvent(new SafeRunnable(){

                    public void run() {
                        l4.perspectivePreDeactivate(page, perspective);
                    }
                }, l4, perspective, "pre-deactivate::");
            }
            ++nX;
        }
    }

    public void firePerspectiveDeactivated(final IWorkbenchPage page, final IPerspectiveDescriptor perspective) {
        Object[] array = this.getListeners();
        int nX = 0;
        while (nX < array.length) {
            if (array[nX] instanceof IPerspectiveListener3) {
                final IPerspectiveListener3 l3 = (IPerspectiveListener3)array[nX];
                this.fireEvent(new SafeRunnable(){

                    public void run() {
                        l3.perspectiveDeactivated(page, perspective);
                    }
                }, l3, perspective, "deactivated::");
            }
            ++nX;
        }
    }

    public void firePerspectiveChanged(final IWorkbenchPage page, final IPerspectiveDescriptor perspective, final String changeId) {
        Object[] array = this.getListeners();
        int nX = 0;
        while (nX < array.length) {
            final IPerspectiveListener l = (IPerspectiveListener)array[nX];
            this.fireEvent(new SafeRunnable(){

                public void run() {
                    l.perspectiveChanged(page, perspective, changeId);
                }
            }, l, perspective, "changed::");
            ++nX;
        }
    }

    public void firePerspectiveChanged(final IWorkbenchPage page, final IPerspectiveDescriptor perspective, final IWorkbenchPartReference partRef, final String changeId) {
        Object[] array = this.getListeners();
        int nX = 0;
        while (nX < array.length) {
            if (array[nX] instanceof IPerspectiveListener2) {
                final IPerspectiveListener2 l2 = (IPerspectiveListener2)array[nX];
                this.fireEvent(new SafeRunnable(){

                    public void run() {
                        l2.perspectiveChanged(page, perspective, partRef, changeId);
                    }
                }, l2, perspective, "changed::");
            }
            ++nX;
        }
    }

    public void firePerspectiveClosed(final IWorkbenchPage page, final IPerspectiveDescriptor perspective) {
        Object[] array = this.getListeners();
        int nX = 0;
        while (nX < array.length) {
            if (array[nX] instanceof IPerspectiveListener3) {
                final IPerspectiveListener3 l3 = (IPerspectiveListener3)array[nX];
                this.fireEvent(new SafeRunnable(){

                    public void run() {
                        l3.perspectiveClosed(page, perspective);
                    }
                }, l3, perspective, "closed::");
            }
            ++nX;
        }
    }

    public void firePerspectiveOpened(final IWorkbenchPage page, final IPerspectiveDescriptor perspective) {
        Object[] array = this.getListeners();
        int nX = 0;
        while (nX < array.length) {
            if (array[nX] instanceof IPerspectiveListener3) {
                final IPerspectiveListener3 l3 = (IPerspectiveListener3)array[nX];
                this.fireEvent(new SafeRunnable(){

                    public void run() {
                        l3.perspectiveOpened(page, perspective);
                    }
                }, l3, perspective, "opened::");
            }
            ++nX;
        }
    }

    public void firePerspectiveSavedAs(final IWorkbenchPage page, final IPerspectiveDescriptor oldPerspective, final IPerspectiveDescriptor newPerspective) {
        Object[] array = this.getListeners();
        int nX = 0;
        while (nX < array.length) {
            if (array[nX] instanceof IPerspectiveListener3) {
                final IPerspectiveListener3 l3 = (IPerspectiveListener3)array[nX];
                this.fireEvent(new SafeRunnable(){

                    public void run() {
                        l3.perspectiveSavedAs(page, oldPerspective, newPerspective);
                    }
                }, l3, newPerspective, "saveAs::");
            }
            ++nX;
        }
    }

    public void removePerspectiveListener(IPerspectiveListener l) {
        this.removeListenerObject(l);
    }
}

