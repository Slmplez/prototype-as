/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildListener
 *  org.apache.tools.ant.Main
 *  org.apache.tools.ant.Project
 */
package org.eclipse.ant.internal.core.ant;

import java.util.Iterator;
import org.apache.tools.ant.BuildListener;
import org.apache.tools.ant.Main;
import org.apache.tools.ant.Project;

public class EclipseAntMain
extends Main {
    private Project fEclipseAntProject;

    public EclipseAntMain(Project eclipseAntProject) {
        this.fEclipseAntProject = eclipseAntProject;
    }

    public static void run(String[] args, Project eclipseAntProject) {
        EclipseAntMain projectHelpMain = new EclipseAntMain(eclipseAntProject);
        projectHelpMain.startAnt(args, null, null);
    }

    protected void exit(int exitCode) {
    }

    protected void addBuildListeners(Project project) {
        Iterator listeners = this.fEclipseAntProject.getBuildListeners().iterator();
        while (listeners.hasNext()) {
            project.addBuildListener((BuildListener)listeners.next());
        }
    }
}

