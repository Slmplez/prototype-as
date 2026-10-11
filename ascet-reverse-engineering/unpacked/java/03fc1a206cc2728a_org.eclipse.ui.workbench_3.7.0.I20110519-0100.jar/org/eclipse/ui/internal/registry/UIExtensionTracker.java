/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.dynamichelpers.ExtensionTracker
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal.registry;

import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.dynamichelpers.ExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.internal.WorkbenchPlugin;

public class UIExtensionTracker
extends ExtensionTracker {
    private Display display;

    public UIExtensionTracker(Display display) {
        this.display = display;
    }

    protected void applyRemove(final IExtensionChangeHandler handler, final IExtension removedExtension, final Object[] objects) {
        if (this.display.isDisposed()) {
            return;
        }
        this.display.syncExec(new Runnable(){

            public void run() {
                try {
                    handler.removeExtension(removedExtension, objects);
                }
                catch (Exception e) {
                    WorkbenchPlugin.log(this.getClass(), "doRemove", e);
                }
            }
        });
    }

    protected void applyAdd(final IExtensionChangeHandler handler, final IExtension addedExtension) {
        if (this.display.isDisposed()) {
            return;
        }
        this.display.syncExec(new Runnable(){

            public void run() {
                try {
                    handler.addExtension((IExtensionTracker)UIExtensionTracker.this, addedExtension);
                }
                catch (Exception e) {
                    WorkbenchPlugin.log(this.getClass(), "doAdd", e);
                }
            }
        });
    }
}

