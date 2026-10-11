/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ILogListener
 *  org.eclipse.core.runtime.IStatus
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.runtime;

import org.eclipse.core.runtime.ILogListener;
import org.eclipse.core.runtime.IStatus;
import org.osgi.framework.Bundle;

public interface ILog {
    public void addLogListener(ILogListener var1);

    public Bundle getBundle();

    public void log(IStatus var1);

    public void removeLogListener(ILogListener var1);
}

