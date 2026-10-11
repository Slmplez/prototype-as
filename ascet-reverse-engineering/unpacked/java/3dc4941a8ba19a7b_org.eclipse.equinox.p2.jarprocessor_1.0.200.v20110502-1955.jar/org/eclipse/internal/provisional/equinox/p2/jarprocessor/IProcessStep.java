/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.internal.provisional.equinox.p2.jarprocessor;

import java.io.File;
import java.util.List;
import java.util.Properties;

public interface IProcessStep {
    public String recursionEffect(String var1);

    public File preProcess(File var1, File var2, List var3);

    public File postProcess(File var1, File var2, List var3);

    public String getStepName();

    public void adjustInf(File var1, Properties var2, List var3);
}

