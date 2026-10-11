/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.PropertyTester
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.model.IStackFrame
 */
package org.eclipse.jdt.internal.debug.core;

import org.eclipse.core.expressions.PropertyTester;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IStackFrame;
import org.eclipse.jdt.debug.core.IJavaStackFrame;

public class JavaDebugPropertyTester
extends PropertyTester {
    static /* synthetic */ Class class$0;

    public boolean test(Object receiver, String property, Object[] args, Object expectedValue) {
        if (property.equals("isMultiStrata") && receiver instanceof IStackFrame) {
            IJavaStackFrame frame;
            IStackFrame iStackFrame = (IStackFrame)receiver;
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jdt.debug.core.IJavaStackFrame");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((frame = (IJavaStackFrame)iStackFrame.getAdapter((Class)clazz)) != null) {
                try {
                    return frame.getReferenceType().getAvailableStrata().length > 1;
                }
                catch (DebugException debugException) {}
            }
        }
        return false;
    }
}

