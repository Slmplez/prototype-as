/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core;

import org.eclipse.jdt.core.IAnnotatable;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.JavaModelException;

public interface IField
extends IMember,
IAnnotatable {
    public Object getConstant() throws JavaModelException;

    public String getElementName();

    public String getKey();

    public String getTypeSignature() throws JavaModelException;

    public boolean isEnumConstant() throws JavaModelException;

    public boolean isResolved();
}

