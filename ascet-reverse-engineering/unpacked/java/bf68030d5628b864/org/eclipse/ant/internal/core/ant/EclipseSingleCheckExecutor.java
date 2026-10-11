/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.Executor
 *  org.apache.tools.ant.Project
 *  org.apache.tools.ant.helper.SingleCheckExecutor
 */
package org.eclipse.ant.internal.core.ant;

import java.util.Arrays;
import java.util.Vector;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Executor;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.helper.SingleCheckExecutor;

public class EclipseSingleCheckExecutor
extends SingleCheckExecutor {
    public void executeTargets(Project project, String[] targetNames) throws BuildException {
        Vector<String> v = new Vector<String>();
        v.addAll(Arrays.asList(targetNames));
        project.addReference("eclipse.ant.targetVector", v);
        super.executeTargets(project, targetNames);
    }

    public Executor getSubProjectExecutor() {
        return this;
    }
}

