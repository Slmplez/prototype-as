/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.ui.IEditorPart
 */
package org.eclipse.ui.forms.editor;

import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.forms.IManagedForm;
import org.eclipse.ui.forms.editor.FormEditor;

public interface IFormPage
extends IEditorPart {
    public void initialize(FormEditor var1);

    public FormEditor getEditor();

    public IManagedForm getManagedForm();

    public void setActive(boolean var1);

    public boolean isActive();

    public boolean canLeaveThePage();

    public Control getPartControl();

    public String getId();

    public int getIndex();

    public void setIndex(int var1);

    public boolean isEditor();

    public boolean selectReveal(Object var1);
}

