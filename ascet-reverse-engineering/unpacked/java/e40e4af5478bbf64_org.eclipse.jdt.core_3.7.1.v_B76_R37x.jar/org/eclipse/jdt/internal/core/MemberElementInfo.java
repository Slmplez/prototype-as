/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.internal.core.SourceRefElementInfo;

abstract class MemberElementInfo
extends SourceRefElementInfo {
    protected int flags;

    MemberElementInfo() {
    }

    public int getNameSourceEnd() {
        return -1;
    }

    public int getNameSourceStart() {
        return -1;
    }

    public int getModifiers() {
        return this.flags;
    }

    protected void setFlags(int flags) {
        this.flags = flags;
    }
}

