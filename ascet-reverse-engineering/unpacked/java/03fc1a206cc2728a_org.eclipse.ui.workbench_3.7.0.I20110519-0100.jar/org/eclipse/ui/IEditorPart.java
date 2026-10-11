/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorSite;
import org.eclipse.ui.ISaveablePart;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.PartInitException;

public interface IEditorPart
extends IWorkbenchPart,
ISaveablePart {
    public static final int PROP_DIRTY = 257;
    public static final int PROP_INPUT = 258;

    public IEditorInput getEditorInput();

    public IEditorSite getEditorSite();

    public void init(IEditorSite var1, IEditorInput var2) throws PartInitException;
}

