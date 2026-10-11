/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.Project
 *  org.apache.tools.ant.taskdefs.SignJar
 *  org.eclipse.equinox.internal.p2.jarprocessor.SignCommandStep
 */
package org.eclipse.equinox.internal.p2.jarprocessor.ant;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Properties;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.taskdefs.SignJar;
import org.eclipse.equinox.internal.p2.jarprocessor.SignCommandStep;

public class AntSignCommand
extends SignCommandStep {
    private final Project project;
    private final Properties jarSignerArguments;
    private final String antTaskName;

    public AntSignCommand(Properties options, Properties signArguments, Project project, String antTaskName, String command, boolean verbose) {
        super(options, command, verbose);
        this.project = project;
        this.jarSignerArguments = signArguments;
        this.antTaskName = antTaskName;
    }

    public File postProcess(File input, File workingDirectory, List containers) {
        if (this.command != null && input != null && this.shouldSign(input, containers)) {
            this.execute(input);
        }
        return null;
    }

    private void execute(File input) {
        try {
            SignJar jarSigner = new SignJar();
            jarSigner.setJar(input);
            jarSigner.setAlias(this.jarSignerArguments.getProperty("alias"));
            jarSigner.setKeystore(this.jarSignerArguments.getProperty("keystore"));
            jarSigner.setStorepass(this.jarSignerArguments.getProperty("storepass"));
            jarSigner.setKeypass(this.jarSignerArguments.getProperty("keypass"));
            jarSigner.setProject(this.project);
            jarSigner.setTaskName(this.antTaskName);
            jarSigner.execute();
        }
        catch (BuildException e) {
            if (e.getCause() instanceof IOException) {
                throw new BuildException("The jarsigner could not be found. Make sure to run with the build with a JDK.", (Throwable)e);
            }
            throw e;
        }
    }
}

