/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core;

import java.util.Map;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.model.IProcess;

public interface IProcessFactory {
    public IProcess newProcess(ILaunch var1, Process var2, String var3, Map var4);
}

