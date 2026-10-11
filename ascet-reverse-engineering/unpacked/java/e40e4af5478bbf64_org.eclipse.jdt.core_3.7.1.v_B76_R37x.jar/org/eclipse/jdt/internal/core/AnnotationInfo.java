/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IMemberValuePair;
import org.eclipse.jdt.internal.core.SourceRefElementInfo;

public class AnnotationInfo
extends SourceRefElementInfo {
    public int nameStart = -1;
    public int nameEnd = -1;
    public IMemberValuePair[] members;
}

