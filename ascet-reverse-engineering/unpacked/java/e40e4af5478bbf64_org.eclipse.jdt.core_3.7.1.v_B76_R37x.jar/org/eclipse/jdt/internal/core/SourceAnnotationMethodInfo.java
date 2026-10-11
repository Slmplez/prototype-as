/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IMemberValuePair;
import org.eclipse.jdt.internal.core.SourceMethodInfo;

public class SourceAnnotationMethodInfo
extends SourceMethodInfo {
    public int defaultValueStart = -1;
    public int defaultValueEnd = -1;
    public IMemberValuePair defaultValue;

    public boolean isAnnotationMethod() {
        return true;
    }
}

