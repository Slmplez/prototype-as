/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.text.edits.TextEdit
 */
package org.eclipse.pde.internal.core.text;

import org.eclipse.pde.core.IModelChangedListener;
import org.eclipse.text.edits.TextEdit;

public interface IModelTextChangeListener
extends IModelChangedListener {
    public TextEdit[] getTextOperations();

    public String getReadableName(TextEdit var1);
}

