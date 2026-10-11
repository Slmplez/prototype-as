/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.PartInitException;

public interface IEditorReference
extends IWorkbenchPartReference {
    public String getFactoryId();

    public String getName();

    public IEditorPart getEditor(boolean var1);

    public boolean isPinned();

    public IEditorInput getEditorInput() throws PartInitException;
}

