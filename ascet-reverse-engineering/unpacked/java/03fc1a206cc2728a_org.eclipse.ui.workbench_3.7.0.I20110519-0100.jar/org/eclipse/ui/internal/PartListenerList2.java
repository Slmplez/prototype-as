/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.EventManager
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.dialogs.IPageChangedListener
 *  org.eclipse.jface.dialogs.PageChangedEvent
 *  org.eclipse.jface.util.SafeRunnable
 */
package org.eclipse.ui.internal;

import org.eclipse.core.commands.common.EventManager;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.dialogs.IPageChangedListener;
import org.eclipse.jface.dialogs.PageChangedEvent;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.ui.IPartListener2;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.internal.misc.UIStats;

public class PartListenerList2
extends EventManager {
    public void addPartListener(IPartListener2 l) {
        this.addListenerObject(l);
    }

    private void fireEvent(SafeRunnable runnable, IPartListener2 listener, IWorkbenchPartReference ref, String string) {
        String label = null;
        if (UIStats.isDebugging(9)) {
            label = String.valueOf(string) + ref.getTitle();
            UIStats.start(9, label);
        }
        Platform.run((ISafeRunnable)runnable);
        if (UIStats.isDebugging(9)) {
            UIStats.end(9, listener, label);
        }
    }

    public void firePartActivated(final IWorkbenchPartReference ref) {
        Object[] array = this.getListeners();
        int i = 0;
        while (i < array.length) {
            final IPartListener2 l = (IPartListener2)array[i];
            this.fireEvent(new SafeRunnable(){

                public void run() {
                    l.partActivated(ref);
                }
            }, l, ref, "activated::");
            ++i;
        }
    }

    public void firePartBroughtToTop(final IWorkbenchPartReference ref) {
        Object[] array = this.getListeners();
        int i = 0;
        while (i < array.length) {
            final IPartListener2 l = (IPartListener2)array[i];
            this.fireEvent(new SafeRunnable(){

                public void run() {
                    l.partBroughtToTop(ref);
                }
            }, l, ref, "broughtToTop::");
            ++i;
        }
    }

    public void firePartClosed(final IWorkbenchPartReference ref) {
        Object[] array = this.getListeners();
        int i = 0;
        while (i < array.length) {
            final IPartListener2 l = (IPartListener2)array[i];
            this.fireEvent(new SafeRunnable(){

                public void run() {
                    l.partClosed(ref);
                }
            }, l, ref, "closed::");
            ++i;
        }
    }

    public void firePartDeactivated(final IWorkbenchPartReference ref) {
        Object[] array = this.getListeners();
        int i = 0;
        while (i < array.length) {
            final IPartListener2 l = (IPartListener2)array[i];
            this.fireEvent(new SafeRunnable(){

                public void run() {
                    l.partDeactivated(ref);
                }
            }, l, ref, "deactivated::");
            ++i;
        }
    }

    public void firePartOpened(final IWorkbenchPartReference ref) {
        Object[] array = this.getListeners();
        int i = 0;
        while (i < array.length) {
            final IPartListener2 l = (IPartListener2)array[i];
            this.fireEvent(new SafeRunnable(){

                public void run() {
                    l.partOpened(ref);
                }
            }, l, ref, "opened::");
            ++i;
        }
    }

    public void firePartHidden(final IWorkbenchPartReference ref) {
        Object[] array = this.getListeners();
        int i = 0;
        while (i < array.length) {
            if (array[i] instanceof IPartListener2) {
                final IPartListener2 l = (IPartListener2)array[i];
                this.fireEvent(new SafeRunnable(){

                    public void run() {
                        l.partHidden(ref);
                    }
                }, l, ref, "hidden::");
            }
            ++i;
        }
    }

    public void firePartVisible(final IWorkbenchPartReference ref) {
        Object[] array = this.getListeners();
        int i = 0;
        while (i < array.length) {
            if (array[i] instanceof IPartListener2) {
                final IPartListener2 l = (IPartListener2)array[i];
                this.fireEvent(new SafeRunnable(){

                    public void run() {
                        l.partVisible(ref);
                    }
                }, l, ref, "visible::");
            }
            ++i;
        }
    }

    public void firePartInputChanged(final IWorkbenchPartReference ref) {
        Object[] array = this.getListeners();
        int i = 0;
        while (i < array.length) {
            if (array[i] instanceof IPartListener2) {
                final IPartListener2 l = (IPartListener2)array[i];
                this.fireEvent(new SafeRunnable(){

                    public void run() {
                        l.partInputChanged(ref);
                    }
                }, l, ref, "inputChanged::");
            }
            ++i;
        }
    }

    public void removePartListener(IPartListener2 l) {
        this.removeListenerObject(l);
    }

    public void firePageChanged(final PageChangedEvent event) {
        Object[] array = this.getListeners();
        int i = 0;
        while (i < array.length) {
            if (array[i] instanceof IPageChangedListener) {
                final IPageChangedListener l = (IPageChangedListener)array[i];
                SafeRunnable.run((ISafeRunnable)new SafeRunnable(){

                    public void run() {
                        l.pageChanged(event);
                    }
                });
            }
            ++i;
        }
    }
}

