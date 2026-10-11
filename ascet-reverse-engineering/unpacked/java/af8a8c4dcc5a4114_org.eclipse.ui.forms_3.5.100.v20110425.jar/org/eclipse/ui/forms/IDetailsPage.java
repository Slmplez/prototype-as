/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.forms;

import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.forms.IFormPart;
import org.eclipse.ui.forms.IPartSelectionListener;

public interface IDetailsPage
extends IFormPart,
IPartSelectionListener {
    public void createContents(Composite var1);
}

