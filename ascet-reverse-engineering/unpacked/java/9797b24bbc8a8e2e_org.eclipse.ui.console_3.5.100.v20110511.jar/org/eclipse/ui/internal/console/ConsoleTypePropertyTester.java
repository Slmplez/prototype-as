/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.PropertyTester
 */
package org.eclipse.ui.internal.console;

import org.eclipse.core.expressions.PropertyTester;
import org.eclipse.ui.console.IConsole;

public class ConsoleTypePropertyTester
extends PropertyTester {
    public boolean test(Object receiver, String property, Object[] args, Object expectedValue) {
        IConsole console = (IConsole)receiver;
        String type = console.getType();
        return type != null ? type.equals(expectedValue) : false;
    }
}

