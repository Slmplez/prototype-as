/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.propertytester;

import org.eclipse.core.internal.propertytester.ResourcePropertyTester;
import org.eclipse.core.resources.IProject;

public class ProjectPropertyTester
extends ResourcePropertyTester {
    private static final String OPEN = "open";

    public boolean test(Object receiver, String method, Object[] args, Object expectedValue) {
        if (receiver instanceof IProject && method.equals(OPEN)) {
            return ((IProject)receiver).isOpen() == this.toBoolean(expectedValue);
        }
        return false;
    }
}

