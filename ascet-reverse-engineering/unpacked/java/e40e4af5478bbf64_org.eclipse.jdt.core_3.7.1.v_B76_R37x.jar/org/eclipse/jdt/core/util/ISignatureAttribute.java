/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

import org.eclipse.jdt.core.util.IClassFileAttribute;

public interface ISignatureAttribute
extends IClassFileAttribute {
    public int getSignatureIndex();

    public char[] getSignature();
}

