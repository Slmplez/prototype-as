/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IStatusLineManager
 *  org.eclipse.jface.action.StatusLineManager
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Sash
 */
package org.eclipse.ui.presentations;

import org.eclipse.jface.action.IStatusLineManager;
import org.eclipse.jface.action.StatusLineManager;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Sash;
import org.eclipse.ui.presentations.IStackPresentationSite;
import org.eclipse.ui.presentations.StackPresentation;

public abstract class AbstractPresentationFactory {
    public static int SASHTYPE_NORMAL = 0;
    public static int SASHTYPE_FLOATING = 2;
    public static int SASHORIENTATION_HORIZONTAL = 256;
    public static int SASHORIENTATION_VERTICAL = 512;
    private static final int SASH_SIZE = 3;

    public abstract StackPresentation createEditorPresentation(Composite var1, IStackPresentationSite var2);

    public abstract StackPresentation createViewPresentation(Composite var1, IStackPresentationSite var2);

    public abstract StackPresentation createStandaloneViewPresentation(Composite var1, IStackPresentationSite var2, boolean var3);

    public IStatusLineManager createStatusLineManager() {
        return new StatusLineManager();
    }

    public Control createStatusLineControl(IStatusLineManager statusLine, Composite parent) {
        return ((StatusLineManager)statusLine).createControl(parent, 0);
    }

    public String getId() {
        return this.getClass().getName();
    }

    public Sash createSash(Composite parent, int style) {
        int swtOrientation = style & (SASHORIENTATION_HORIZONTAL | SASHORIENTATION_VERTICAL);
        Sash sash = new Sash(parent, swtOrientation | 0x10000);
        return sash;
    }

    public int getSashSize(int style) {
        return 3;
    }
}

