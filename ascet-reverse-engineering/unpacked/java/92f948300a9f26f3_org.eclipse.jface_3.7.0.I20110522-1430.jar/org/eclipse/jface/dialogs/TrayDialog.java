/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.ControlAdapter
 *  org.eclipse.swt.events.ControlEvent
 *  org.eclipse.swt.events.ControlListener
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Link
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Sash
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.jface.dialogs;

import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.DialogTray;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.window.IShellProvider;
import org.eclipse.swt.events.ControlAdapter;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Link;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Sash;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;

public abstract class TrayDialog
extends Dialog {
    private static boolean dialogHelpAvailable;
    private DialogTray tray;
    private Control trayControl;
    private Control nonTrayFocusControl;
    private Label leftSeparator;
    private Label rightSeparator;
    private Sash sash;
    private boolean helpAvailable = TrayDialog.isDialogHelpAvailable();
    private int shellWidth;
    private ControlAdapter resizeListener;
    private ToolItem fHelpButton;

    protected TrayDialog(Shell shell) {
        super(shell);
    }

    protected TrayDialog(IShellProvider parentShell) {
        super(parentShell);
    }

    public void closeTray() throws IllegalStateException {
        if (this.getTray() == null) {
            throw new IllegalStateException("Tray was not open");
        }
        Shell shell = this.getShell();
        Control focusControl = shell.getDisplay().getFocusControl();
        if (focusControl != null && this.isContained(this.trayControl, focusControl)) {
            if (this.nonTrayFocusControl != null && !this.nonTrayFocusControl.isDisposed()) {
                this.nonTrayFocusControl.setFocus();
            } else {
                shell.setFocus();
            }
        }
        this.nonTrayFocusControl = null;
        shell.removeControlListener((ControlListener)this.resizeListener);
        this.resizeListener = null;
        int trayWidth = this.trayControl.getSize().x + this.leftSeparator.getSize().x + this.sash.getSize().x + this.rightSeparator.getSize().x;
        this.trayControl.dispose();
        this.trayControl = null;
        this.tray = null;
        this.leftSeparator.dispose();
        this.leftSeparator = null;
        this.rightSeparator.dispose();
        this.rightSeparator = null;
        this.sash.dispose();
        this.sash = null;
        Rectangle bounds = shell.getBounds();
        shell.setBounds(bounds.x + (TrayDialog.getDefaultOrientation() == 0x4000000 ? trayWidth : 0), bounds.y, bounds.width - trayWidth, bounds.height);
        if (this.fHelpButton != null) {
            this.fHelpButton.setSelection(false);
        }
    }

    private boolean isContained(Control container, Control control) {
        Composite parent;
        while ((parent = control.getParent()) != null) {
            if (parent == container) {
                return true;
            }
            control = parent;
        }
        return false;
    }

    public boolean close() {
        if (this.getTray() != null) {
            this.closeTray();
        }
        return super.close();
    }

    protected Control createButtonBar(Composite parent) {
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        layout.horizontalSpacing = 0;
        composite.setLayout((Layout)layout);
        composite.setLayoutData((Object)new GridData(4, 0x1000000, false, false));
        composite.setFont(parent.getFont());
        if (this.isHelpAvailable()) {
            Control helpControl = this.createHelpControl(composite);
            ((GridData)helpControl.getLayoutData()).horizontalIndent = this.convertHorizontalDLUsToPixels(7);
        }
        Control buttonSection = super.createButtonBar(composite);
        ((GridData)buttonSection.getLayoutData()).grabExcessHorizontalSpace = true;
        return composite;
    }

    protected Control createHelpControl(Composite parent) {
        Image helpImage = JFaceResources.getImage("dialog_help_image");
        if (helpImage != null) {
            return this.createHelpImageButton(parent, helpImage);
        }
        return this.createHelpLink(parent);
    }

    private ToolBar createHelpImageButton(Composite parent, Image image) {
        ToolBar toolBar = new ToolBar(parent, 0x880000);
        ++((GridLayout)parent.getLayout()).numColumns;
        toolBar.setLayoutData((Object)new GridData(64));
        final Cursor cursor = new Cursor((Device)parent.getDisplay(), 21);
        toolBar.setCursor(cursor);
        toolBar.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                cursor.dispose();
            }
        });
        this.fHelpButton = new ToolItem(toolBar, 32);
        this.fHelpButton.setImage(image);
        this.fHelpButton.setToolTipText(JFaceResources.getString("helpToolTip"));
        this.fHelpButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                TrayDialog.this.helpPressed();
            }
        });
        return toolBar;
    }

    private Link createHelpLink(Composite parent) {
        Link link = new Link(parent, 524352);
        ++((GridLayout)parent.getLayout()).numColumns;
        link.setLayoutData((Object)new GridData(64));
        link.setText("<a>" + IDialogConstants.HELP_LABEL + "</a>");
        link.setToolTipText(IDialogConstants.HELP_LABEL);
        link.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                TrayDialog.this.helpPressed();
            }
        });
        return link;
    }

    private boolean isCompatibleLayout(Layout layout) {
        if (layout != null && layout instanceof GridLayout) {
            GridLayout grid = (GridLayout)layout;
            return !grid.makeColumnsEqualWidth && grid.horizontalSpacing == 0 && grid.marginWidth == 0 && grid.marginHeight == 0 && grid.numColumns == 5;
        }
        return false;
    }

    public boolean isHelpAvailable() {
        return this.helpAvailable;
    }

    protected Layout getLayout() {
        GridLayout layout = (GridLayout)super.getLayout();
        layout.numColumns = 5;
        layout.horizontalSpacing = 0;
        return layout;
    }

    public DialogTray getTray() {
        return this.tray;
    }

    private void helpPressed() {
        if (this.getTray() == null || this.fHelpButton != null && this.fHelpButton.getSelection()) {
            if (this.getShell() != null) {
                Control c = this.getShell().getDisplay().getFocusControl();
                while (c != null) {
                    if (c.isListening(28)) {
                        c.notifyListeners(28, new Event());
                        break;
                    }
                    c = c.getParent();
                }
                if (this.fHelpButton != null && this.getTray() != null) {
                    this.fHelpButton.setSelection(true);
                }
            }
        } else {
            this.closeTray();
        }
    }

    public void openTray(DialogTray tray) throws IllegalStateException, UnsupportedOperationException {
        if (tray == null) {
            throw new NullPointerException("Tray was null");
        }
        if (this.getTray() != null) {
            throw new IllegalStateException("Tray was already open");
        }
        if (!this.isCompatibleLayout(this.getShell().getLayout())) {
            throw new UnsupportedOperationException("Trays not supported with custom layouts");
        }
        final Shell shell = this.getShell();
        Control focusControl = shell.getDisplay().getFocusControl();
        if (focusControl != null && this.isContained((Control)shell, focusControl)) {
            this.nonTrayFocusControl = focusControl;
        }
        this.leftSeparator = new Label((Composite)shell, 514);
        this.leftSeparator.setLayoutData((Object)new GridData(1040));
        this.sash = new Sash((Composite)shell, 512);
        this.sash.setLayoutData((Object)new GridData(1040));
        this.rightSeparator = new Label((Composite)shell, 514);
        this.rightSeparator.setLayoutData((Object)new GridData(1040));
        this.trayControl = tray.createContents((Composite)shell);
        Rectangle clientArea = shell.getClientArea();
        final GridData data = new GridData(1040);
        data.widthHint = this.trayControl.computeSize((int)-1, (int)clientArea.height).x;
        this.trayControl.setLayoutData((Object)data);
        int trayWidth = this.leftSeparator.computeSize((int)-1, (int)clientArea.height).x + this.sash.computeSize((int)-1, (int)clientArea.height).x + this.rightSeparator.computeSize((int)-1, (int)clientArea.height).x + data.widthHint;
        Rectangle bounds = shell.getBounds();
        shell.setBounds(bounds.x - (TrayDialog.getDefaultOrientation() == 0x4000000 ? trayWidth : 0), bounds.y, bounds.width + trayWidth, bounds.height);
        this.sash.addListener(13, new Listener(){

            public void handleEvent(Event event) {
                if (event.detail != 1) {
                    Rectangle clientArea = shell.getClientArea();
                    int newWidth = clientArea.width - event.x - (((TrayDialog)TrayDialog.this).sash.getSize().x + ((TrayDialog)TrayDialog.this).rightSeparator.getSize().x);
                    if (newWidth != data.widthHint) {
                        data.widthHint = newWidth;
                        shell.layout();
                    }
                }
            }
        });
        this.shellWidth = shell.getSize().x;
        this.resizeListener = new ResizeListener(data, shell);
        shell.addControlListener((ControlListener)this.resizeListener);
        this.tray = tray;
    }

    public void setHelpAvailable(boolean helpAvailable) {
        this.helpAvailable = helpAvailable;
    }

    public static boolean isDialogHelpAvailable() {
        return dialogHelpAvailable;
    }

    public static void setDialogHelpAvailable(boolean helpAvailable) {
        dialogHelpAvailable = helpAvailable;
    }

    private final class ResizeListener
    extends ControlAdapter {
        private final GridData data;
        private final Shell shell;
        private final int TRAY_RATIO = 100;
        private int remainder = 0;

        private ResizeListener(GridData data, Shell shell) {
            this.data = data;
            this.shell = shell;
        }

        public void controlResized(ControlEvent event) {
            int newWidth = this.shell.getSize().x;
            if (newWidth != TrayDialog.this.shellWidth) {
                int shellWidthIncrease = newWidth - TrayDialog.this.shellWidth;
                int trayWidthIncreaseTimes100 = shellWidthIncrease * 100 + this.remainder;
                int trayWidthIncrease = trayWidthIncreaseTimes100 / 100;
                this.remainder = trayWidthIncreaseTimes100 - 100 * trayWidthIncrease;
                this.data.widthHint += trayWidthIncrease;
                TrayDialog.this.shellWidth = newWidth;
                if (!this.shell.isDisposed()) {
                    this.shell.layout();
                }
            }
        }
    }
}

