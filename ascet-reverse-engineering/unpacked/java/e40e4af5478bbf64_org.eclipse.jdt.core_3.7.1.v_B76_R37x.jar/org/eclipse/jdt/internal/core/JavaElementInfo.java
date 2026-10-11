/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.internal.core.JavaElement;

public class JavaElementInfo
implements Cloneable {
    static Object[] NO_NON_JAVA_RESOURCES = new Object[0];

    public Object clone() {
        try {
            return super.clone();
        }
        catch (CloneNotSupportedException cloneNotSupportedException) {
            throw new Error();
        }
    }

    public IJavaElement[] getChildren() {
        return JavaElement.NO_ELEMENTS;
    }
}

