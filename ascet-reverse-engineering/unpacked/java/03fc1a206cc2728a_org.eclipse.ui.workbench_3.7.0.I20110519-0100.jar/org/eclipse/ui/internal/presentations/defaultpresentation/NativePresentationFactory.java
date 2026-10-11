/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.internal.presentations.defaultpresentation;

import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.internal.presentations.defaultpresentation.NativeTabFolder;
import org.eclipse.ui.internal.presentations.util.ISystemMenu;
import org.eclipse.ui.internal.presentations.util.StandardEditorSystemMenu;
import org.eclipse.ui.internal.presentations.util.StandardViewSystemMenu;
import org.eclipse.ui.internal.presentations.util.TabbedStackPresentation;
import org.eclipse.ui.presentations.AbstractPresentationFactory;
import org.eclipse.ui.presentations.IStackPresentationSite;
import org.eclipse.ui.presentations.StackPresentation;

public class NativePresentationFactory
extends AbstractPresentationFactory {
    public StackPresentation createEditorPresentation(Composite parent, IStackPresentationSite site) {
        return new TabbedStackPresentation(site, new NativeTabFolder(parent), (ISystemMenu)new StandardEditorSystemMenu(site));
    }

    public StackPresentation createViewPresentation(Composite parent, IStackPresentationSite site) {
        return new TabbedStackPresentation(site, new NativeTabFolder(parent), (ISystemMenu)new StandardViewSystemMenu(site));
    }

    public StackPresentation createStandaloneViewPresentation(Composite parent, IStackPresentationSite site, boolean showTitle) {
        return new TabbedStackPresentation(site, new NativeTabFolder(parent), (ISystemMenu)new StandardViewSystemMenu(site));
    }
}

