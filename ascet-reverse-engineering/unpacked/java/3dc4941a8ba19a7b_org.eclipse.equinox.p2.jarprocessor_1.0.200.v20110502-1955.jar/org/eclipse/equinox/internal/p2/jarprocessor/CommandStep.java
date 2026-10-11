/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.jarprocessor;

import java.io.File;
import java.util.List;
import java.util.Properties;
import org.eclipse.equinox.internal.p2.jarprocessor.StreamProcessor;
import org.eclipse.equinox.internal.p2.jarprocessor.Utils;
import org.eclipse.internal.provisional.equinox.p2.jarprocessor.IProcessStep;

public abstract class CommandStep
implements IProcessStep {
    protected String command = null;
    protected String extension = null;
    private Properties options = null;
    protected boolean verbose = false;

    public CommandStep(Properties options, String command, String extension, boolean verbose) {
        this.command = command;
        this.extension = extension;
        this.options = options;
        this.verbose = verbose;
    }

    protected static int execute(String[] cmd) {
        return CommandStep.execute(cmd, false);
    }

    protected static int execute(String[] cmd, boolean verbose) {
        Runtime runtime = Runtime.getRuntime();
        Process proc = null;
        try {
            proc = runtime.exec(cmd);
            StreamProcessor.start(proc.getErrorStream(), "STDERR", verbose);
            StreamProcessor.start(proc.getInputStream(), "STDOUT", verbose);
        }
        catch (Exception e) {
            if (verbose) {
                System.out.println("Error executing command " + Utils.concat(cmd));
                e.printStackTrace();
            }
            return -1;
        }
        try {
            int result = proc.waitFor();
            return result;
        }
        catch (InterruptedException e) {
            if (verbose) {
                e.printStackTrace();
            }
            return -1;
        }
    }

    public Properties getOptions() {
        if (this.options == null) {
            this.options = new Properties();
        }
        return this.options;
    }

    public void adjustInf(File input, Properties inf, List containers) {
    }
}

