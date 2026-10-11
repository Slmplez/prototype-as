/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.debug.core.model;

import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.internal.debug.core.logicalstructures.JDIPlaceholderVariable;

public class JDIReferenceListEntryVariable
extends JDIPlaceholderVariable {
    public JDIReferenceListEntryVariable(String name, IJavaValue reference) {
        super(name, reference);
    }
}

