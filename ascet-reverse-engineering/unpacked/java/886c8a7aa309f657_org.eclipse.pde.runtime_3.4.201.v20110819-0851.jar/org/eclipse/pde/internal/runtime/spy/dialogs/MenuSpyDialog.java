/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.dialogs.PopupDialog
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.ui.PlatformUI
 *  org.eclipse.ui.forms.widgets.ScrolledForm
 *  org.eclipse.ui.forms.widgets.TableWrapLayout
 */
package org.eclipse.pde.internal.runtime.spy.dialogs;

import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.dialogs.PopupDialog;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.pde.internal.runtime.PDERuntimeMessages;
import org.eclipse.pde.internal.runtime.PDERuntimePluginImages;
import org.eclipse.pde.internal.runtime.spy.SpyFormToolkit;
import org.eclipse.pde.internal.runtime.spy.sections.ActiveMenuSection;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.forms.widgets.ScrolledForm;
import org.eclipse.ui.forms.widgets.TableWrapLayout;

public class MenuSpyDialog
extends PopupDialog {
    private Event event;
    private Point fAnchor;
    private Composite composite;
    private SpyFormToolkit toolkit;

    public MenuSpyDialog(Shell parent, Event event, Point point) {
        super(parent, 0, true, true, false, false, false, null, null);
        this.event = event;
        this.fAnchor = point;
        this.toolkit = new SpyFormToolkit(this);
    }

    protected void configureShell(Shell shell) {
        super.configureShell(shell);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)shell, "org.eclipse.pde.doc.user.spy_dialog");
    }

    protected Control createContents(Composite parent) {
        this.getShell().setBackground(this.getShell().getDisplay().getSystemColor(16));
        this.initializeBounds();
        return this.createDialogArea(parent);
    }

    protected Control createDialogArea(Composite parent) {
        this.composite = (Composite)super.createDialogArea(parent);
        ScrolledForm form = this.toolkit.createScrolledForm(this.composite);
        this.toolkit.decorateFormHeading(form.getForm());
        form.setText(PDERuntimeMessages.MenuSpyDialog_title);
        Image image = PDERuntimePluginImages.get("pdespy_obj.gif");
        form.setImage(image);
        form.getToolBarManager().add((IAction)new CloseAction());
        form.getToolBarManager().update(true);
        TableWrapLayout layout = new TableWrapLayout();
        layout.leftMargin = 10;
        layout.rightMargin = 10;
        layout.topMargin = 10;
        layout.verticalSpacing = 10;
        form.getBody().setLayout((Layout)layout);
        ActiveMenuSection section = new ActiveMenuSection();
        section.build(form, this.toolkit, this.event);
        parent.pack();
        return this.composite;
    }

    protected Point getInitialLocation(Point size) {
        if (this.fAnchor == null) {
            return super.getInitialLocation(size);
        }
        Point point = this.fAnchor;
        Rectangle monitor = this.getShell().getMonitor().getClientArea();
        if (monitor.width < point.x + size.x) {
            point.x = Math.max(0, point.x - size.x);
        }
        if (monitor.height < point.y + size.y) {
            point.y = Math.max(0, point.y - size.y);
        }
        return point;
    }

    public boolean close() {
        if (this.toolkit != null) {
            this.toolkit.dispose();
        }
        this.toolkit = null;
        return super.close();
    }

    protected Control getFocusControl() {
        return this.composite;
    }

    private class CloseAction
    extends Action {
        private CloseAction() {
        }

        public ImageDescriptor getImageDescriptor() {
            return PlatformUI.getWorkbench().getSharedImages().getImageDescriptor("IMG_TOOL_DELETE");
        }

        public String getToolTipText() {
            return PDERuntimeMessages.SpyDialog_close;
        }

        public void run() {
            MenuSpyDialog.this.close();
        }
    }
}

