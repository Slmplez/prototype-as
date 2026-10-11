/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.PropertyTester
 */
package org.eclipse.ui.internal;

import org.eclipse.core.expressions.PropertyTester;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.internal.WorkbenchWindow;

public class OpenPerspectivePropertyTester
extends PropertyTester {
    private static final String PROPERTY_IS_PERSPECTIVE_OPEN = "isPerspectiveOpen";

    public boolean test(Object receiver, String property, Object[] args, Object expectedValue) {
        if (args.length == 0 && receiver instanceof WorkbenchWindow) {
            IPerspectiveDescriptor persp;
            IWorkbenchPage page;
            WorkbenchWindow window = (WorkbenchWindow)receiver;
            if (PROPERTY_IS_PERSPECTIVE_OPEN.equals(property) && (page = window.getActivePage()) != null && (persp = page.getPerspective()) != null) {
                return true;
            }
        }
        return false;
    }
}

