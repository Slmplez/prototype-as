/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.CLabel
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.jface.dialogs;

import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.custom.CLabel;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Text;

public class DialogMessageArea {
    private Text messageText;
    private Label messageImageLabel;
    private Composite messageComposite;
    private String lastMessageText;
    private int lastMessageType;
    private CLabel titleLabel;

    public void createContents(Composite parent) {
        this.titleLabel = new CLabel(parent, 0);
        this.titleLabel.setFont(JFaceResources.getBannerFont());
        this.messageComposite = new Composite(parent, 0);
        GridLayout messageLayout = new GridLayout();
        messageLayout.numColumns = 2;
        messageLayout.marginWidth = 0;
        messageLayout.marginHeight = 0;
        messageLayout.makeColumnsEqualWidth = false;
        this.messageComposite.setLayout((Layout)messageLayout);
        this.messageImageLabel = new Label(this.messageComposite, 0);
        this.messageImageLabel.setImage(JFaceResources.getImage("dialog_messasge_info_image"));
        this.messageImageLabel.setLayoutData((Object)new GridData(4));
        this.messageText = new Text(this.messageComposite, 0);
        this.messageText.setEditable(false);
        GridData textData = new GridData(772);
        this.messageText.setLayoutData((Object)textData);
    }

    public void setTitleLayoutData(Object layoutData) {
        this.titleLabel.setLayoutData(layoutData);
    }

    public void setMessageLayoutData(Object layoutData) {
        this.messageComposite.setLayoutData(layoutData);
    }

    public void showTitle(String titleMessage, Image titleImage) {
        this.titleLabel.setImage(titleImage);
        this.titleLabel.setText(titleMessage);
        this.restoreTitle();
    }

    public void restoreTitle() {
        this.titleLabel.setVisible(true);
        this.messageComposite.setVisible(false);
        this.lastMessageText = null;
        this.lastMessageType = 0;
    }

    public void updateText(String newMessage, int newType) {
        Image newImage = null;
        switch (newType) {
            case 0: {
                if (newMessage == null) {
                    this.restoreTitle();
                } else {
                    this.showTitle(newMessage, null);
                }
                return;
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
                newImage = JFaceResources.getImage("dialog_message_error_image");
            }
        }
        this.messageComposite.setVisible(true);
        this.titleLabel.setVisible(false);
        String shortText = Dialog.shortenText(newMessage, (Control)this.messageText);
        if (newMessage.equals(this.messageText.getToolTipText()) && newImage == this.messageImageLabel.getImage() && shortText.equals(this.messageText.getText())) {
            return;
        }
        this.messageImageLabel.setImage(newImage);
        this.messageText.setText(Dialog.shortenText(newMessage, (Control)this.messageText));
        this.messageText.setToolTipText(newMessage);
        this.lastMessageText = newMessage;
    }

    public void clearErrorMessage() {
        if (this.lastMessageText == null) {
            this.restoreTitle();
        } else {
            this.updateText(this.lastMessageText, this.lastMessageType);
        }
    }
}

