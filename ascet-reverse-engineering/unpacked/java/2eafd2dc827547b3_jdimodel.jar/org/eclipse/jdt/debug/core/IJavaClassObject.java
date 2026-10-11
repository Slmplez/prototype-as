/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.debug.core;

import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaType;

public interface IJavaClassObject
extends IJavaObject {
    public IJavaType getInstanceType();
}

