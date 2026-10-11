/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdi.hcr;

public interface VirtualMachine {
    public static final int RELOAD_SUCCESS = 0;
    public static final int RELOAD_FAILURE = 1;
    public static final int RELOAD_IGNORED = 2;

    public boolean canDoReturn();

    public boolean canGetClassFileVersion();

    public boolean canReenterOnExit();

    public boolean canReloadClasses();

    public int classesHaveChanged(String[] var1);
}

