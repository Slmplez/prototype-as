/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.FormAttachment
 *  org.eclipse.swt.layout.FormData
 *  org.eclipse.swt.layout.FormLayout
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.jface.dialogs;

import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.TrayDialog;
import org.eclipse.jface.resource.JFaceColors;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.window.ToolTip;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.FormAttachment;
import org.eclipse.swt.layout.FormData;
import org.eclipse.swt.layout.FormLayout;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;

public class TitleAreaDialog
extends TrayDialog {
    public static final String DLG_IMG_TITLE_ERROR = "dialog_message_error_image";
    public static final String DLG_IMG_TITLE_BANNER = "dialog_title_banner_image";
    public static final String INFO_MESSAGE = "INFO_MESSAGE";
    public static final String WARNING_MESSAGE = "WARNING_MESSAGE";
    private static final int H_GAP_IMAGE = 5;
    private static final int MIN_DIALOG_WIDTH = 350;
    private static final int MIN_DIALOG_HEIGHT = 150;
    private Label titleLabel;
    private Label titleImageLabel;
    private Label bottomFillerLabel;
    private Label leftFillerLabel;
    private RGB titleAreaRGB;
    Color titleAreaColor;
    private String message = "";
    private String errorMessage;
    private Text messageLabel;
    private Composite workArea;
    private Label messageImageLabel;
    private Image messageImage;
    private boolean showingError = false;
    private boolean titleImageLargest = true;
    private int messageLabelHeight;
    private Image titleAreaImage;
    private int xTrim;
    private int yTrim;

    public TitleAreaDialog(Shell parentShell) {
        super(parentShell);
    }

    protected Control createContents(Composite parent) {
        Composite contents = new Composite(parent, 0);
        contents.setLayoutData((Object)new GridData(1808));
        this.initializeDialogUnits((Control)contents);
        FormLayout layout = new FormLayout();
        contents.setLayout((Layout)layout);
        this.workArea = new Composite(contents, 0);
        GridLayout childLayout = new GridLayout();
        childLayout.marginHeight = 0;
        childLayout.marginWidth = 0;
        childLayout.verticalSpacing = 0;
        this.workArea.setLayout((Layout)childLayout);
        Control top = this.createTitleArea(contents);
        this.resetWorkAreaAttachments(top);
        this.workArea.setFont(JFaceResources.getDialogFont());
        this.initializeDialogUnits((Control)this.workArea);
        this.dialogArea = this.createDialogArea(this.workArea);
        this.buttonBar = this.createButtonBar(this.workArea);
        Rectangle rect = this.messageLabel.computeTrim(0, 0, 100, 100);
        this.xTrim = rect.width - 100;
        this.yTrim = rect.height - 100;
        this.getShell().addListener(11, new Listener(){

            public void handleEvent(Event event) {
                TitleAreaDialog.this.layoutForNewMessage(true);
            }
        });
        return contents;
    }

    protected Control createDialogArea(Composite parent) {
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        layout.verticalSpacing = 0;
        layout.horizontalSpacing = 0;
        composite.setLayout((Layout)layout);
        composite.setLayoutData((Object)new GridData(1808));
        composite.setFont(parent.getFont());
        Label titleBarSeparator = new Label(composite, 258);
        titleBarSeparator.setLayoutData((Object)new GridData(768));
        return composite;
    }

    private Control createTitleArea(Composite parent) {
        Color foreground;
        Color background;
        parent.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                if (TitleAreaDialog.this.titleAreaColor != null) {
                    TitleAreaDialog.this.titleAreaColor.dispose();
                }
            }
        });
        Display display = parent.getDisplay();
        if (this.titleAreaRGB != null) {
            background = this.titleAreaColor = new Color((Device)display, this.titleAreaRGB);
            foreground = null;
        } else {
            background = JFaceColors.getBannerBackground(display);
            foreground = JFaceColors.getBannerForeground(display);
        }
        parent.setBackground(background);
        int verticalSpacing = this.convertVerticalDLUsToPixels(4);
        int horizontalSpacing = this.convertHorizontalDLUsToPixels(4);
        this.titleImageLabel = new Label(parent, 0x1000000);
        this.titleImageLabel.setBackground(background);
        if (this.titleAreaImage == null) {
            this.titleImageLabel.setImage(JFaceResources.getImage(DLG_IMG_TITLE_BANNER));
        } else {
            this.titleImageLabel.setImage(this.titleAreaImage);
        }
        FormData imageData = new FormData();
        imageData.top = new FormAttachment(0, 0);
        imageData.right = new FormAttachment(100, 0);
        this.titleImageLabel.setLayoutData((Object)imageData);
        this.titleLabel = new Label(parent, 16384);
        JFaceColors.setColors((Control)this.titleLabel, foreground, background);
        this.titleLabel.setFont(JFaceResources.getBannerFont());
        this.titleLabel.setText(" ");
        FormData titleData = new FormData();
        titleData.top = new FormAttachment(0, verticalSpacing);
        titleData.right = new FormAttachment((Control)this.titleImageLabel);
        titleData.left = new FormAttachment(0, horizontalSpacing);
        this.titleLabel.setLayoutData((Object)titleData);
        this.messageImageLabel = new Label(parent, 0x1000000);
        this.messageImageLabel.setBackground(background);
        this.messageLabel = new Text(parent, 72);
        JFaceColors.setColors((Control)this.messageLabel, foreground, background);
        this.messageLabel.setText(" \n ");
        this.messageLabel.setFont(JFaceResources.getDialogFont());
        this.messageLabelHeight = this.messageLabel.computeSize((int)-1, (int)-1).y;
        this.leftFillerLabel = new Label(parent, 0x1000000);
        this.leftFillerLabel.setBackground(background);
        this.bottomFillerLabel = new Label(parent, 0x1000000);
        this.bottomFillerLabel.setBackground(background);
        this.setLayoutsForNormalMessage(verticalSpacing, horizontalSpacing);
        this.determineTitleImageLargest();
        if (this.titleImageLargest) {
            return this.titleImageLabel;
        }
        return this.messageLabel;
    }

    private void determineTitleImageLargest() {
        int titleY = this.titleImageLabel.computeSize((int)-1, (int)-1).y;
        int verticalSpacing = this.convertVerticalDLUsToPixels(4);
        int labelY = this.titleLabel.computeSize((int)-1, (int)-1).y;
        labelY += verticalSpacing;
        labelY += this.messageLabelHeight;
        this.titleImageLargest = titleY > (labelY += verticalSpacing);
    }

    private void setLayoutsForNormalMessage(int verticalSpacing, int horizontalSpacing) {
        FormData messageImageData = new FormData();
        messageImageData.top = new FormAttachment((Control)this.titleLabel, verticalSpacing);
        messageImageData.left = new FormAttachment(0, 5);
        this.messageImageLabel.setLayoutData((Object)messageImageData);
        FormData messageLabelData = new FormData();
        messageLabelData.top = new FormAttachment((Control)this.titleLabel, verticalSpacing);
        messageLabelData.right = new FormAttachment((Control)this.titleImageLabel);
        messageLabelData.left = new FormAttachment((Control)this.messageImageLabel, horizontalSpacing);
        messageLabelData.height = this.messageLabelHeight;
        if (this.titleImageLargest) {
            messageLabelData.bottom = new FormAttachment((Control)this.titleImageLabel, 0, 1024);
        }
        this.messageLabel.setLayoutData((Object)messageLabelData);
        FormData fillerData = new FormData();
        fillerData.left = new FormAttachment(0, horizontalSpacing);
        fillerData.top = new FormAttachment((Control)this.messageImageLabel, 0);
        fillerData.bottom = new FormAttachment((Control)this.messageLabel, 0, 1024);
        this.bottomFillerLabel.setLayoutData((Object)fillerData);
        FormData data = new FormData();
        data.top = new FormAttachment((Control)this.messageImageLabel, 0, 128);
        data.left = new FormAttachment(0, 0);
        data.bottom = new FormAttachment((Control)this.messageImageLabel, 0, 1024);
        data.right = new FormAttachment((Control)this.messageImageLabel, 0);
        this.leftFillerLabel.setLayoutData((Object)data);
    }

    protected Point getInitialSize() {
        Point shellSize = super.getInitialSize();
        return new Point(Math.max(this.convertHorizontalDLUsToPixels(350), shellSize.x), Math.max(this.convertVerticalDLUsToPixels(150), shellSize.y));
    }

    protected Composite getTitleArea() {
        return this.getShell();
    }

    protected Label getTitleImageLabel() {
        return this.titleImageLabel;
    }

    public void setErrorMessage(String newErrorMessage) {
        if (this.errorMessage == null ? newErrorMessage == null : this.errorMessage.equals(newErrorMessage)) {
            return;
        }
        this.errorMessage = newErrorMessage;
        if (this.errorMessage == null) {
            if (this.showingError) {
                this.showingError = false;
            }
            if (this.message == null) {
                this.message = "";
            }
            this.updateMessage(this.message);
            this.messageImageLabel.setImage(this.messageImage);
            this.setImageLabelVisible(this.messageImage != null);
        } else {
            String displayedErrorMessage = " " + this.errorMessage;
            this.updateMessage(displayedErrorMessage);
            if (!this.showingError) {
                this.showingError = true;
                this.messageImageLabel.setImage(JFaceResources.getImage(DLG_IMG_TITLE_ERROR));
                this.setImageLabelVisible(true);
            }
        }
        this.layoutForNewMessage(false);
    }

    private void layoutForNewMessage(boolean forceLayout) {
        boolean messageLabelClipped;
        int verticalSpacing = this.convertVerticalDLUsToPixels(4);
        int horizontalSpacing = this.convertHorizontalDLUsToPixels(4);
        if (this.errorMessage == null && this.messageImage == null) {
            this.setImageLabelVisible(false);
            this.setLayoutsForNormalMessage(verticalSpacing, horizontalSpacing);
        } else {
            this.messageImageLabel.setVisible(true);
            this.bottomFillerLabel.setVisible(true);
            this.leftFillerLabel.setVisible(true);
            FormData data = new FormData();
            data.left = new FormAttachment(0, 5);
            data.top = new FormAttachment((Control)this.titleLabel, verticalSpacing);
            this.messageImageLabel.setLayoutData((Object)data);
            data = new FormData();
            data.top = new FormAttachment((Control)this.messageImageLabel, 0);
            data.left = new FormAttachment(0, 0);
            data.bottom = new FormAttachment((Control)this.messageLabel, 0, 1024);
            data.right = new FormAttachment((Control)this.messageImageLabel, 0, 131072);
            this.bottomFillerLabel.setLayoutData((Object)data);
            data = new FormData();
            data.top = new FormAttachment((Control)this.messageImageLabel, 0, 128);
            data.left = new FormAttachment(0, 0);
            data.bottom = new FormAttachment((Control)this.messageImageLabel, 0, 1024);
            data.right = new FormAttachment((Control)this.messageImageLabel, 0);
            this.leftFillerLabel.setLayoutData((Object)data);
            FormData messageLabelData = new FormData();
            messageLabelData.top = new FormAttachment((Control)this.titleLabel, verticalSpacing);
            messageLabelData.right = new FormAttachment((Control)this.titleImageLabel);
            messageLabelData.left = new FormAttachment((Control)this.messageImageLabel, 0);
            messageLabelData.height = this.messageLabelHeight;
            if (this.titleImageLargest) {
                messageLabelData.bottom = new FormAttachment((Control)this.titleImageLabel, 0, 1024);
            }
            this.messageLabel.setLayoutData((Object)messageLabelData);
        }
        if (forceLayout) {
            this.getShell().layout();
        } else if (this.dialogArea != null) {
            this.workArea.getParent().layout(true);
        }
        int messageLabelUnclippedHeight = this.messageLabel.computeSize((int)(this.messageLabel.getSize().x - this.xTrim), (int)-1, (boolean)true).y;
        boolean bl = messageLabelClipped = messageLabelUnclippedHeight > this.messageLabel.getSize().y - this.yTrim;
        if (this.messageLabel.getData() instanceof ToolTip) {
            ToolTip toolTip = (ToolTip)this.messageLabel.getData();
            toolTip.hide();
            toolTip.deactivate();
            this.messageLabel.setData(null);
        }
        if (messageLabelClipped) {
            ToolTip tooltip = new ToolTip((Control)this.messageLabel, 2, false){

                protected Composite createToolTipContentArea(Event event, Composite parent) {
                    Composite result = new Composite(parent, 0);
                    result.setBackground(parent.getDisplay().getSystemColor(29));
                    result.setLayout((Layout)new GridLayout());
                    Text text = new Text(result, 64);
                    text.setBackground(parent.getDisplay().getSystemColor(29));
                    text.setForeground(parent.getDisplay().getSystemColor(28));
                    text.setText(TitleAreaDialog.this.messageLabel.getText());
                    GridData gridData = new GridData();
                    gridData.widthHint = ((TitleAreaDialog)TitleAreaDialog.this).messageLabel.getSize().x;
                    text.setLayoutData((Object)gridData);
                    Dialog.applyDialogFont((Control)result);
                    return result;
                }

                public Point getLocation(Point tipSize, Event event) {
                    return TitleAreaDialog.this.messageLabel.getShell().toDisplay(TitleAreaDialog.this.messageLabel.getLocation());
                }
            };
            this.messageLabel.setData((Object)tooltip);
            tooltip.setPopupDelay(0);
            tooltip.activate();
        }
    }

    public void setMessage(String newMessage) {
        this.setMessage(newMessage, 0);
    }

    public void setMessage(String newMessage, int newType) {
        Image newImage = null;
        if (newMessage != null) {
            switch (newType) {
                case 0: {
                    break;
                }
                case 1: {
                    newImage = JFaceResources.getImage("dialog_messasge_info_image");
                    break;
                }
                case 2: {
                    newImage = JFaceResources.getImage("dialog_messasge_warning_image");
                    break;
                }
                case 3: {
                    newImage = JFaceResources.getImage(DLG_IMG_TITLE_ERROR);
                }
            }
        }
        this.showMessage(newMessage, newImage);
    }

    private void showMessage(String newMessage, Image newImage) {
        if (newMessage == null) {
            newMessage = "";
        }
        if (this.message.equals(newMessage) && this.messageImage == newImage) {
            return;
        }
        this.message = newMessage;
        String shownMessage = newImage == null ? this.message : " " + this.message;
        this.messageImage = newImage;
        if (!this.showingError) {
            this.updateMessage(shownMessage);
            this.messageImageLabel.setImage(this.messageImage);
            this.setImageLabelVisible(this.messageImage != null);
            this.layoutForNewMessage(false);
        }
    }

    private void updateMessage(String newMessage) {
        this.messageLabel.setText(newMessage);
    }

    public void setTitle(String newTitle) {
        if (this.titleLabel == null) {
            return;
        }
        String title = newTitle;
        if (title == null) {
            title = "";
        }
        this.titleLabel.setText(title);
    }

    public void setTitleAreaColor(RGB color) {
        this.titleAreaRGB = color;
    }

    public void setTitleImage(Image newTitleImage) {
        this.titleAreaImage = newTitleImage;
        if (this.titleImageLabel != null) {
            this.titleImageLabel.setImage(newTitleImage);
            this.determineTitleImageLargest();
            Object top = this.titleImageLargest ? this.titleImageLabel : this.messageLabel;
            this.resetWorkAreaAttachments((Control)top);
        }
    }

    private void setImageLabelVisible(boolean visible) {
        this.messageImageLabel.setVisible(visible);
        this.bottomFillerLabel.setVisible(visible);
        this.leftFillerLabel.setVisible(visible);
    }

    private void resetWorkAreaAttachments(Control top) {
        FormData childData = new FormData();
        childData.top = new FormAttachment(top);
        childData.right = new FormAttachment(100, 0);
        childData.left = new FormAttachment(0, 0);
        childData.bottom = new FormAttachment(100, 0);
        this.workArea.setLayoutData((Object)childData);
    }

    public String getMessage() {
        return this.message;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }
}

