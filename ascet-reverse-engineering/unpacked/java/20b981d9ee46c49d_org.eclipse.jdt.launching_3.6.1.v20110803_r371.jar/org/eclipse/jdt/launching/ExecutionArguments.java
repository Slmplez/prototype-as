/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.debug.core.DebugPlugin
 */
package org.eclipse.jdt.launching;

import org.eclipse.debug.core.DebugPlugin;

public class ExecutionArguments {
    private String fVMArgs;
    private String fProgramArgs;

    public ExecutionArguments(String vmArgs, String programArgs) {
        if (vmArgs == null || programArgs == null) {
            throw new IllegalArgumentException();
        }
        this.fVMArgs = vmArgs;
        this.fProgramArgs = programArgs;
    }

    public String getVMArguments() {
        return this.fVMArgs;
    }

    public String getProgramArguments() {
        return this.fProgramArgs;
    }

    public String[] getVMArgumentsArray() {
        return DebugPlugin.parseArguments((String)this.fVMArgs);
    }

    public String[] getProgramArgumentsArray() {
        return DebugPlugin.parseArguments((String)this.fProgramArgs);
    }
}

