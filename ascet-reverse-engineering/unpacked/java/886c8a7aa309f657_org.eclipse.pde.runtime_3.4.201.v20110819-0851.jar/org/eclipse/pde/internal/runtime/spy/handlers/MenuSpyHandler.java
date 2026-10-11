/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.jface.dialogs.PopupDialog
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.ui.handlers.HandlerUtil
 */
package org.eclipse.pde.internal.runtime.spy.handlers;

import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.jface.dialogs.PopupDialog;
import org.eclipse.pde.internal.runtime.PDERuntimePluginImages;
import org.eclipse.pde.internal.runtime.spy.dialogs.MenuSpyDialog;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.handlers.HandlerUtil;

public class MenuSpyHandler
extends AbstractHandler
implements Listener {
    private PopupDialog INSTANCE = null;
    private Cursor defaultCursor;
    private Cursor spyCursor;

    public Object execute(ExecutionEvent event) {
        if (event != null) {
            Shell shell;
            if (this.INSTANCE != null && this.INSTANCE.getShell() != null && !this.INSTANCE.getShell().isDisposed()) {
                this.INSTANCE.close();
            }
            if ((shell = HandlerUtil.getActiveShell((ExecutionEvent)event)) != null) {
                Display display = shell.getDisplay();
                display.addFilter(13, (Listener)this);
                display.addFilter(1, (Listener)this);
                display.addFilter(22, (Listener)this);
                if (display.getActiveShell() != null) {
                    this.defaultCursor = display.getActiveShell().getCursor();
                    Image image = PDERuntimePluginImages.get("menuspy_obj.gif");
                    this.spyCursor = new Cursor((Device)display, image.getImageData(), 7, 7);
                    display.getActiveShell().setCursor(this.spyCursor);
                }
            }
        }
        return null;
    }

    public void handleEvent(Event event) {
        switch (event.type) {
            case 1: {
                if (event.keyCode == 27) break;
            }
            case 22: {
                Shell shell;
                if (this.spyCursor != null && (shell = event.display.getActiveShell()) != null) {
                    shell.setCursor(this.spyCursor);
                }
                return;
            }
        }
        event.display.removeFilter(13, (Listener)this);
        event.display.removeFilter(1, (Listener)this);
        event.display.removeFilter(22, (Listener)this);
        if (this.spyCursor != null && event.display.getActiveShell() != null) {
            event.display.getActiveShell().setCursor(this.defaultCursor);
            this.defaultCursor = null;
            this.spyCursor.dispose();
            this.spyCursor = null;
        }
        if (event.type == 13) {
            Shell shell = event.display.getActiveShell();
            MenuSpyDialog dialog = new MenuSpyDialog(shell, event, shell.getDisplay().getCursorLocation());
            this.INSTANCE = dialog;
            dialog.create();
            dialog.open();
            event.doit = false;
            event.type = 0;
        }
    }
}

