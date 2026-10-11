/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ant.core;

import org.eclipse.ant.internal.core.AntObject;

public class Task
extends AntObject {
    public String getTaskName() {
        return this.fName;
    }

    public void setTaskName(String taskName) {
        this.fName = taskName;
    }
}

