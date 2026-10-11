/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime;

import java.util.EventListener;
import org.eclipse.core.runtime.IStatus;

public interface ILogListener
extends EventListener {
    public void logging(IStatus var1, String var2);
}

