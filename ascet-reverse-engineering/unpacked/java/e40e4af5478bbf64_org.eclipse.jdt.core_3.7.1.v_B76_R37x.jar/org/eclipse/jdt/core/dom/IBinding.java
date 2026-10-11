/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.dom.IAnnotationBinding;

public interface IBinding {
    public static final int PACKAGE = 1;
    public static final int TYPE = 2;
    public static final int VARIABLE = 3;
    public static final int METHOD = 4;
    public static final int ANNOTATION = 5;
    public static final int MEMBER_VALUE_PAIR = 6;

    public IAnnotationBinding[] getAnnotations();

    public int getKind();

    public String getName();

    public int getModifiers();

    public boolean isDeprecated();

    public boolean isRecovered();

    public boolean isSynthetic();

    public IJavaElement getJavaElement();

    public String getKey();

    public boolean equals(Object var1);

    public boolean isEqualTo(IBinding var1);

    public String toString();
}

