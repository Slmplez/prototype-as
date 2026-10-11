/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ant.core;

import org.eclipse.ant.internal.core.AntObject;

public class Type
extends AntObject {
    public String getTypeName() {
        return this.fName;
    }

    public void setTypeName(String taskName) {
        this.fName = taskName;
    }
}

