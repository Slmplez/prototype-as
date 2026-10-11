/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.internal.presentations;

import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.presentations.AbstractPresentationFactory;
import org.eclipse.ui.presentations.IPresentationSerializer;
import org.eclipse.ui.presentations.IStackPresentationSite;
import org.eclipse.ui.presentations.StackPresentation;

public class PresentationFactoryUtil {
    public static final int ROLE_EDITOR = 1;
    public static final int ROLE_VIEW = 2;
    public static final int ROLE_STANDALONE = 3;
    public static final int ROLE_STANDALONE_NOTITLE = 4;

    public static StackPresentation createPresentation(AbstractPresentationFactory factory, int role, Composite parent, IStackPresentationSite site, IPresentationSerializer serializer, IMemento memento) {
        StackPresentation presentation = null;
        switch (role) {
            case 1: {
                presentation = factory.createEditorPresentation(parent, site);
                break;
            }
            case 3: {
                presentation = factory.createStandaloneViewPresentation(parent, site, true);
                break;
            }
            case 4: {
                presentation = factory.createStandaloneViewPresentation(parent, site, false);
                break;
            }
            default: {
                presentation = factory.createViewPresentation(parent, site);
            }
        }
        if (role != 1 && memento != null && serializer != null) {
            presentation.restoreState(serializer, memento);
        }
        return presentation;
    }

    private PresentationFactoryUtil() {
    }
}

