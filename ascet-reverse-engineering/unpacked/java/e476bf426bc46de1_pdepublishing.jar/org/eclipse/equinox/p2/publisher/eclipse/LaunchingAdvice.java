/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData
 *  org.eclipse.equinox.p2.publisher.AbstractAdvice
 */
package org.eclipse.equinox.p2.publisher.eclipse;

import org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData;
import org.eclipse.equinox.p2.publisher.AbstractAdvice;
import org.eclipse.equinox.p2.publisher.eclipse.IExecutableAdvice;

public class LaunchingAdvice
extends AbstractAdvice
implements IExecutableAdvice {
    private LauncherData data;
    private String configSpec;

    public LaunchingAdvice(LauncherData data, String configSpec) {
        this.data = data;
        this.configSpec = configSpec;
    }

    protected String getConfigSpec() {
        return this.configSpec;
    }

    public String[] getProgramArguments() {
        return this.data.getProgramArgs();
    }

    public String[] getVMArguments() {
        return this.data.getJvmArgs();
    }

    public String getExecutableName() {
        return this.data.getLauncherName();
    }
}

