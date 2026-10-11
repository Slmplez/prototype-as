/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

import org.eclipse.jdt.core.util.IVerificationTypeInfo;

public interface IStackMapFrame {
    public int getFrameType();

    public int getOffsetDelta();

    public int getNumberOfLocals();

    public IVerificationTypeInfo[] getLocals();

    public int getNumberOfStackItems();

    public IVerificationTypeInfo[] getStackItems();
}

