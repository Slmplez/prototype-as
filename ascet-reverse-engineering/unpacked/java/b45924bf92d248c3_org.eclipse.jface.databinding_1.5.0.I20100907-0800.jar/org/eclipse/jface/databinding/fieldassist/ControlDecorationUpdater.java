/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jface.fieldassist.ControlDecoration
 *  org.eclipse.jface.fieldassist.FieldDecoration
 *  org.eclipse.jface.fieldassist.FieldDecorationRegistry
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.jface.databinding.fieldassist;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.fieldassist.ControlDecoration;
import org.eclipse.jface.fieldassist.FieldDecoration;
import org.eclipse.jface.fieldassist.FieldDecorationRegistry;
import org.eclipse.swt.graphics.Image;

public class ControlDecorationUpdater {
    protected void update(ControlDecoration decoration, IStatus status) {
        if (status == null || status.isOK()) {
            decoration.hide();
        } else {
            decoration.setImage(this.getImage(status));
            decoration.setDescriptionText(this.getDescriptionText(status));
            decoration.show();
        }
    }

    protected String getDescriptionText(IStatus status) {
        return status == null ? "" : status.getMessage();
    }

    protected Image getImage(IStatus status) {
        if (status == null) {
            return null;
        }
        String fieldDecorationID = null;
        switch (status.getSeverity()) {
            case 1: {
                fieldDecorationID = "DEC_INFORMATION";
                break;
            }
            case 2: {
                fieldDecorationID = "DEC_WARNING";
                break;
            }
            case 4: 
            case 8: {
                fieldDecorationID = "DEC_ERROR";
            }
        }
        FieldDecoration fieldDecoration = FieldDecorationRegistry.getDefault().getFieldDecoration(fieldDecorationID);
        return fieldDecoration == null ? null : fieldDecoration.getImage();
    }
}

