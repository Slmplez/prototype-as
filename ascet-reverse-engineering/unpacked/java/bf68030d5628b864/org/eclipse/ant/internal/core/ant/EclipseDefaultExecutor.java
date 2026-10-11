/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.Executor
 *  org.apache.tools.ant.Project
 *  org.apache.tools.ant.helper.DefaultExecutor
 */
package org.eclipse.ant.internal.core.ant;

import java.util.Arrays;
import java.util.Vector;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Executor;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.helper.DefaultExecutor;
import org.eclipse.ant.internal.core.ant.EclipseSingleCheckExecutor;

public class EclipseDefaultExecutor
extends DefaultExecutor {
    private static final EclipseSingleCheckExecutor SUB_EXECUTOR = new EclipseSingleCheckExecutor();

    public void executeTargets(Project project, String[] targetNames) throws BuildException {
        Vector<String> v = new Vector<String>();
        v.addAll(Arrays.asList(targetNames));
        project.addReference("eclipse.ant.targetVector", v);
        super.executeTargets(project, targetNames);
    }

    public Executor getSubProjectExecutor() {
        return SUB_EXECUTOR;
    }
}

