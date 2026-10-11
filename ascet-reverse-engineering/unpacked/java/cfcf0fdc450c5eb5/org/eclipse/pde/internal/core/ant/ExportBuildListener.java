/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildEvent
 *  org.apache.tools.ant.BuildListener
 *  org.eclipse.pde.internal.core.exports.FeatureExportOperation
 *  org.eclipse.pde.internal.core.exports.ProductExportOperation
 */
package org.eclipse.pde.internal.core.ant;

import org.apache.tools.ant.BuildEvent;
import org.apache.tools.ant.BuildListener;
import org.eclipse.pde.internal.core.exports.FeatureExportOperation;
import org.eclipse.pde.internal.core.exports.ProductExportOperation;

public class ExportBuildListener
implements BuildListener {
    private static final String RUN_DIRECTOR = "runDirector";
    private static final String DIRECTOR_OUTPUT = "p2.director.java.output";

    public void buildStarted(BuildEvent event) {
    }

    public void buildFinished(BuildEvent event) {
    }

    public void targetStarted(BuildEvent event) {
    }

    public void targetFinished(BuildEvent event) {
    }

    public void taskStarted(BuildEvent event) {
    }

    public void taskFinished(BuildEvent event) {
        int idx;
        String directorOutput;
        if (event.getException() != null && event.getTarget().getName().equals(RUN_DIRECTOR) && (directorOutput = event.getProject().getProperty(DIRECTOR_OUTPUT)) != null && (idx = directorOutput.indexOf("Installation failed.")) > -1) {
            String part2 = directorOutput.substring(idx);
            ProductExportOperation.setErrorMessage((String)part2);
        }
    }

    public void messageLogged(BuildEvent event) {
        if (event.getPriority() == 0) {
            FeatureExportOperation.errorFound();
        }
    }
}

