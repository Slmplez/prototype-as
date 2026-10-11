/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.dialogs;

import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.IDialogPage;
import org.eclipse.jface.dialogs.IMessageProvider;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;

public abstract class DialogPage
implements IDialogPage,
IMessageProvider {
    private Control control;
    private String title = null;
    private String description = null;
    private Image image = null;
    private ImageDescriptor imageDescriptor = null;
    private String message = null;
    private int messageType = 0;
    private String errorMessage = null;
    private FontMetrics fontMetrics;

    protected DialogPage() {
    }

    protected DialogPage(String title) {
        this.title = title;
    }

    protected DialogPage(String title, ImageDescriptor image) {
        this(title);
        this.imageDescriptor = image;
    }

    protected int convertHeightInCharsToPixels(int chars) {
        if (this.fontMetrics == null) {
            return 0;
        }
        return Dialog.convertHeightInCharsToPixels(this.fontMetrics, chars);
    }

    protected int convertHorizontalDLUsToPixels(int dlus) {
        if (this.fontMetrics == null) {
            return 0;
        }
        return Dialog.convertHorizontalDLUsToPixels(this.fontMetrics, dlus);
    }

    protected int convertVerticalDLUsToPixels(int dlus) {
        if (this.fontMetrics == null) {
            return 0;
        }
        return Dialog.convertVerticalDLUsToPixels(this.fontMetrics, dlus);
    }

    protected int convertWidthInCharsToPixels(int chars) {
        if (this.fontMetrics == null) {
            return 0;
        }
        return Dialog.convertWidthInCharsToPixels(this.fontMetrics, chars);
    }

    public void dispose() {
        if (this.image != null) {
            this.image.dispose();
            this.image = null;
        }
    }

    public Control getControl() {
        return this.control;
    }

    public String getDescription() {
        return this.description;
    }

    protected String getDialogFontName() {
        return "org.eclipse.jface.dialogfont";
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }

    protected Font getFont() {
        return JFaceResources.getFontRegistry().get(this.getDialogFontName());
    }

    public Image getImage() {
        if (this.image == null && this.imageDescriptor != null) {
            this.image = this.imageDescriptor.createImage();
        }
        return this.image;
    }

    public String getMessage() {
        return this.message;
    }

    public int getMessageType() {
        return this.messageType;
    }

    public Shell getShell() {
        return this.getControl().getShell();
    }

    public String getTitle() {
        return this.title;
    }

    protected final String getToolTipText(int widgetId) {
        return null;
    }

    protected void initializeDialogUnits(Control testControl) {
        GC gc = new GC((Drawable)testControl);
        gc.setFont(JFaceResources.getDialogFont());
        this.fontMetrics = gc.getFontMetrics();
        gc.dispose();
    }

    protected GridData setButtonLayoutData(Button button) {
        GridData data = new GridData(256);
        int widthHint = this.convertHorizontalDLUsToPixels(61);
        Point minSize = button.computeSize(-1, -1, true);
        data.widthHint = Math.max(widthHint, minSize.x);
        button.setLayoutData((Object)data);
        return data;
    }

    protected boolean isControlCreated() {
        return this.control != null;
    }

    public void performHelp() {
    }

    protected void setControl(Control newControl) {
        this.control = newControl;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setErrorMessage(String newMessage) {
        this.errorMessage = newMessage;
    }

    public void setImageDescriptor(ImageDescriptor desc) {
        this.imageDescriptor = desc;
        if (this.image != null) {
            this.image.dispose();
            this.image = null;
        }
    }

    public void setMessage(String newMessage) {
        this.setMessage(newMessage, 0);
    }

    public void setMessage(String newMessage, int newType) {
        this.message = newMessage;
        this.messageType = newType;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setVisible(boolean visible) {
        this.control.setVisible(visible);
    }
}

