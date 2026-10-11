/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ISelection
 */
package org.eclipse.ui.forms;

import org.eclipse.jface.viewers.ISelection;
import org.eclipse.ui.forms.IFormPart;
import org.eclipse.ui.forms.IMessageManager;
import org.eclipse.ui.forms.widgets.FormToolkit;
import org.eclipse.ui.forms.widgets.ScrolledForm;

public interface IManagedForm {
    public void initialize();

    public FormToolkit getToolkit();

    public ScrolledForm getForm();

    public void reflow(boolean var1);

    public void fireSelectionChanged(IFormPart var1, ISelection var2);

    public IFormPart[] getParts();

    public void addPart(IFormPart var1);

    public void removePart(IFormPart var1);

    public boolean setInput(Object var1);

    public Object getInput();

    public boolean isDirty();

    public void dirtyStateChanged();

    public void commit(boolean var1);

    public boolean isStale();

    public void staleStateChanged();

    public void refresh();

    public void setContainer(Object var1);

    public Object getContainer();

    public IMessageManager getMessageManager();
}

