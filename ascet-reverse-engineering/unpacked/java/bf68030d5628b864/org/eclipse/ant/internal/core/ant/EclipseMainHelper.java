/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.Project
 */
package org.eclipse.ant.internal.core.ant;

import org.apache.tools.ant.Project;
import org.eclipse.ant.internal.core.ant.EclipseAntMain;

public class EclipseMainHelper {
    protected void runProjectHelp(String buildFileLocation, Project eclipseAntProject) {
        EclipseAntMain.run(new String[]{"-f", buildFileLocation, "-p"}, eclipseAntProject);
    }

    protected void runUsage(String buildFileLocation, Project eclipseAntProject) {
        EclipseAntMain.run(new String[]{"-f", buildFileLocation, "-h"}, eclipseAntProject);
    }
}

