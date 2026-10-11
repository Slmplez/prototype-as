/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.PropertyTester
 */
package org.eclipse.ui.internal;

import org.eclipse.core.expressions.PropertyTester;
import org.eclipse.ui.internal.WorkbenchWindow;

public class WorkbenchWindowPropertyTester
extends PropertyTester {
    private static final String PROPERTY_IS_COOLBAR_VISIBLE = "isCoolbarVisible";
    private static final String PROPERTY_IS_PERSPECTIVEBAR_VISIBLE = "isPerspectiveBarVisible";

    public boolean test(Object receiver, String property, Object[] args, Object expectedValue) {
        if (args.length == 0 && receiver instanceof WorkbenchWindow) {
            boolean defaultExpectedValue = true;
            if (expectedValue != null) {
                if (expectedValue instanceof Boolean) {
                    defaultExpectedValue = (Boolean)expectedValue;
                } else {
                    return false;
                }
            }
            WorkbenchWindow window = (WorkbenchWindow)receiver;
            if (PROPERTY_IS_COOLBAR_VISIBLE.equals(property)) {
                return defaultExpectedValue == window.getCoolBarVisible();
            }
            if (PROPERTY_IS_PERSPECTIVEBAR_VISIBLE.equals(property)) {
                return defaultExpectedValue == window.getPerspectiveBarVisible();
            }
        }
        return false;
    }
}

