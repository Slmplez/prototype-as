/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.accessibility.AccessibleAdapter
 *  org.eclipse.swt.accessibility.AccessibleEvent
 *  org.eclipse.swt.accessibility.AccessibleListener
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.dialogs;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.layout.GridDataFactory;
import org.eclipse.jface.layout.GridLayoutFactory;
import org.eclipse.jface.layout.LayoutConstants;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.accessibility.AccessibleListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Shell;

public abstract class IconAndMessageDialog
extends Dialog {
    protected String message;
    protected Label messageLabel;
    protected Label imageLabel;

    public IconAndMessageDialog(Shell parentShell) {
        super(parentShell);
    }

    protected Control createMessageArea(Composite composite) {
        Image image = this.getImage();
        if (image != null) {
            this.imageLabel = new Label(composite, 0);
            image.setBackground(this.imageLabel.getBackground());
            this.imageLabel.setImage(image);
            this.addAccessibleListeners(this.imageLabel, image);
            GridDataFactory.fillDefaults().align(0x1000000, 1).applyTo((Control)this.imageLabel);
        }
        if (this.message != null) {
            this.messageLabel = new Label(composite, this.getMessageLabelStyle());
            this.messageLabel.setText(this.message);
            GridDataFactory.fillDefaults().align(4, 1).grab(true, false).hint(this.convertHorizontalDLUsToPixels(300), -1).applyTo((Control)this.messageLabel);
        }
        return composite;
    }

    private String getAccessibleMessageFor(Image image) {
        if (image.equals((Object)this.getErrorImage())) {
            return JFaceResources.getString("error");
        }
        if (image.equals((Object)this.getWarningImage())) {
            return JFaceResources.getString("warning");
        }
        if (image.equals((Object)this.getInfoImage())) {
            return JFaceResources.getString("info");
        }
        if (image.equals((Object)this.getQuestionImage())) {
            return JFaceResources.getString("question");
        }
        return null;
    }

    private void addAccessibleListeners(Label label, final Image image) {
        label.getAccessible().addAccessibleListener((AccessibleListener)new AccessibleAdapter(){

            public void getName(AccessibleEvent event) {
                String accessibleMessage = IconAndMessageDialog.this.getAccessibleMessageFor(image);
                if (accessibleMessage == null) {
                    return;
                }
                event.result = accessibleMessage;
            }
        });
    }

    protected int getMessageLabelStyle() {
        return 64;
    }

    protected Control createButtonBar(Composite parent) {
        Composite composite = new Composite(parent, 0);
        GridLayoutFactory.fillDefaults().numColumns(0).equalWidth(true).applyTo(composite);
        GridDataFactory.fillDefaults().align(0x1000008, 0x1000000).span(2, 1).applyTo((Control)composite);
        composite.setFont(parent.getFont());
        this.createButtonsForButtonBar(composite);
        return composite;
    }

    protected abstract Image getImage();

    protected Control createContents(Composite parent) {
        this.initializeDialogUnits((Control)parent);
        Point defaultSpacing = LayoutConstants.getSpacing();
        GridLayoutFactory.fillDefaults().margins(LayoutConstants.getMargins()).spacing(defaultSpacing.x * 2, defaultSpacing.y).numColumns(this.getColumnCount()).applyTo(parent);
        GridDataFactory.fillDefaults().grab(true, true).applyTo((Control)parent);
        this.createDialogAndButtonArea(parent);
        return parent;
    }

    int getColumnCount() {
        return 2;
    }

    protected void createDialogAndButtonArea(Composite parent) {
        this.dialogArea = this.createDialogArea(parent);
        this.buttonBar = this.createButtonBar(parent);
        IconAndMessageDialog.applyDialogFont((Control)parent);
    }

    public Image getErrorImage() {
        return this.getSWTImage(1);
    }

    public Image getWarningImage() {
        return this.getSWTImage(8);
    }

    public Image getInfoImage() {
        return this.getSWTImage(2);
    }

    public Image getQuestionImage() {
        return this.getSWTImage(4);
    }

    private Image getSWTImage(final int imageID) {
        Display display;
        Shell shell = this.getShell();
        if (shell == null || shell.isDisposed()) {
            shell = this.getParentShell();
        }
        if (shell == null || shell.isDisposed()) {
            display = Display.getCurrent();
            Assert.isNotNull((Object)display, (String)"The dialog should be created in UI thread");
        } else {
            display = shell.getDisplay();
        }
        final Image[] image = new Image[1];
        display.syncExec(new Runnable(){

            public void run() {
                image[0] = display.getSystemImage(imageID);
            }
        });
        return image[0];
    }
}

