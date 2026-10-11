/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.dialogs;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;

public interface IDialogPage {
    public void createControl(Composite var1);

    public void dispose();

    public Control getControl();

    public String getDescription();

    public String getErrorMessage();

    public Image getImage();

    public String getMessage();

    public String getTitle();

    public void performHelp();

    public void setDescription(String var1);

    public void setImageDescriptor(ImageDescriptor var1);

    public void setTitle(String var1);

    public void setVisible(boolean var1);
}

