/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.LegacyActionTools
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.util.PropertyChangeEvent
 */
package org.eclipse.ui.actions;

import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.LegacyActionTools;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.ui.actions.RetargetAction;

public class LabelRetargetAction
extends RetargetAction {
    private String defaultText;
    private String defaultToolTipText;
    private ImageDescriptor defaultHoverImage;
    private ImageDescriptor defaultImage;
    private ImageDescriptor defaultDisabledImage;
    private String acceleratorText;

    public LabelRetargetAction(String actionID, String text) {
        this(actionID, text, 0);
    }

    public LabelRetargetAction(String actionID, String text, int style) {
        super(actionID, text, style);
        this.defaultText = text;
        this.defaultToolTipText = text;
        this.acceleratorText = LegacyActionTools.extractAcceleratorText((String)text);
    }

    protected void propagateChange(PropertyChangeEvent event) {
        super.propagateChange(event);
        String prop = event.getProperty();
        if (prop.equals("text")) {
            String str = (String)event.getNewValue();
            super.setText(this.appendAccelerator(str));
        } else if (prop.equals("toolTipText")) {
            String str = (String)event.getNewValue();
            super.setToolTipText(str);
        } else if (prop.equals("image")) {
            this.updateImages(this.getActionHandler());
        }
    }

    protected void setActionHandler(IAction handler) {
        super.setActionHandler(handler);
        if (handler == null) {
            super.setText(this.defaultText);
            super.setToolTipText(this.defaultToolTipText);
        } else {
            String handlerText = handler.getText();
            if (handlerText == null || handlerText.length() == 0) {
                handlerText = this.defaultText;
            }
            super.setText(this.appendAccelerator(handlerText));
            super.setToolTipText(handler.getToolTipText());
        }
        this.updateImages(handler);
    }

    public void setDisabledImageDescriptor(ImageDescriptor image) {
        super.setDisabledImageDescriptor(image);
        this.defaultDisabledImage = image;
    }

    public void setHoverImageDescriptor(ImageDescriptor image) {
        super.setHoverImageDescriptor(image);
        this.defaultHoverImage = image;
    }

    public void setImageDescriptor(ImageDescriptor image) {
        super.setImageDescriptor(image);
        this.defaultImage = image;
    }

    public void setText(String text) {
        super.setText(text);
        this.acceleratorText = LegacyActionTools.extractAcceleratorText((String)text);
        this.defaultText = text;
    }

    public void setToolTipText(String text) {
        super.setToolTipText(text);
        this.defaultToolTipText = text;
    }

    private String appendAccelerator(String newText) {
        if (newText == null) {
            return null;
        }
        String str = LabelRetargetAction.removeAcceleratorText((String)newText);
        if (this.acceleratorText != null) {
            str = String.valueOf(str) + this.acceleratorText;
        }
        return str;
    }

    private void updateImages(IAction handler) {
        if (handler == null) {
            super.setHoverImageDescriptor(this.defaultHoverImage);
            super.setImageDescriptor(this.defaultImage);
            super.setDisabledImageDescriptor(this.defaultDisabledImage);
        } else {
            ImageDescriptor hoverImage = handler.getHoverImageDescriptor();
            ImageDescriptor image = handler.getImageDescriptor();
            ImageDescriptor disabledImage = handler.getDisabledImageDescriptor();
            if (hoverImage != null || image != null || disabledImage != null) {
                super.setHoverImageDescriptor(hoverImage);
                super.setImageDescriptor(image);
                super.setDisabledImageDescriptor(disabledImage);
            } else {
                super.setHoverImageDescriptor(this.defaultHoverImage);
                super.setImageDescriptor(this.defaultImage);
                super.setDisabledImageDescriptor(this.defaultDisabledImage);
            }
        }
    }
}

