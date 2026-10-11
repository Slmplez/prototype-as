/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.internal.presentations;

import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.internal.presentations.NativeStackPresentation;
import org.eclipse.ui.presentations.IStackPresentationSite;
import org.eclipse.ui.presentations.StackPresentation;
import org.eclipse.ui.presentations.WorkbenchPresentationFactory;

public class NativePresentationFactory
extends WorkbenchPresentationFactory {
    public StackPresentation createEditorPresentation(Composite parent, IStackPresentationSite site) {
        return new NativeStackPresentation(parent, site);
    }

    public StackPresentation createViewPresentation(Composite parent, IStackPresentationSite site) {
        return new NativeStackPresentation(parent, site);
    }

    public StackPresentation createStandaloneViewPresentation(Composite parent, IStackPresentationSite site, boolean showTitle) {
        return new NativeStackPresentation(parent, site);
    }
}

