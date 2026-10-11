/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.Executor
 *  org.apache.tools.ant.Project
 */
package org.eclipse.ant.internal.core.ant;

import org.apache.tools.ant.Executor;
import org.apache.tools.ant.Project;
import org.eclipse.ant.internal.core.ant.EclipseDefaultExecutor;

public class ExecutorSetter {
    protected void setExecutor(Project project) {
        EclipseDefaultExecutor executor = new EclipseDefaultExecutor();
        project.setExecutor((Executor)executor);
    }
}

