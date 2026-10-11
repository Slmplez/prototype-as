/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jface.resource.JFaceColors
 *  org.eclipse.swt.custom.CLabel
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.resource.JFaceColors;
import org.eclipse.swt.custom.CLabel;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.PlatformUI;

public class MessageLine
extends CLabel {
    private Color fNormalMsgAreaBackground = null;

    public MessageLine(Composite parent) {
        this(parent, 16384);
    }

    public MessageLine(Composite parent, int style) {
        super(parent, style);
    }

    private Image findImage(IStatus status) {
        if (status.isOK()) {
            return null;
        }
        if (status.matches(4)) {
            return PlatformUI.getWorkbench().getSharedImages().getImage("IMG_OBJS_ERROR_TSK");
        }
        if (status.matches(2)) {
            return PlatformUI.getWorkbench().getSharedImages().getImage("IMG_OBJS_WARN_TSK");
        }
        if (status.matches(1)) {
            return PlatformUI.getWorkbench().getSharedImages().getImage("IMG_OBJS_INFO_TSK");
        }
        return null;
    }

    public void setErrorStatus(IStatus status) {
        String message;
        if (status != null && (message = status.getMessage()) != null && message.length() > 0) {
            this.setText(message);
            this.setImage(this.findImage(status));
            this.setBackground(JFaceColors.getErrorBackground((Display)this.getDisplay()));
            return;
        }
        this.setText("");
        this.setImage(null);
        this.setBackground(this.fNormalMsgAreaBackground);
    }
}

