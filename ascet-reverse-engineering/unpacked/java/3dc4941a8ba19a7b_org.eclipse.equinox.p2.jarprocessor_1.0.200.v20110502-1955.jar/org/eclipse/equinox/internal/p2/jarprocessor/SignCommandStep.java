/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.jarprocessor;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Set;
import org.eclipse.equinox.internal.p2.jarprocessor.CommandStep;
import org.eclipse.equinox.internal.p2.jarprocessor.Utils;

public class SignCommandStep
extends CommandStep {
    private Set exclusions = null;

    public SignCommandStep(Properties options, String command) {
        super(options, command, ".jar", false);
        this.exclusions = Utils.getSignExclusions(options);
    }

    public SignCommandStep(Properties options, String command, boolean verbose) {
        super(options, command, ".jar", verbose);
        this.exclusions = Utils.getSignExclusions(options);
    }

    public String recursionEffect(String entryName) {
        if (entryName.endsWith(this.extension) && !this.exclusions.contains(entryName)) {
            return entryName;
        }
        return null;
    }

    public File preProcess(File input, File workingDirectory, List containers) {
        return null;
    }

    public File postProcess(File input, File workingDirectory, List containers) {
        block5: {
            if (this.command != null && input != null && this.shouldSign(input, containers)) {
                try {
                    String[] cmd = new String[]{this.command, input.getCanonicalPath()};
                    int result = SignCommandStep.execute(cmd, this.verbose);
                    if (result == 0) {
                        return input;
                    }
                    if (this.verbose) {
                        System.out.println("Error: " + result + " was returned from command: " + Utils.concat(cmd));
                    }
                }
                catch (IOException e) {
                    if (!this.verbose) break block5;
                    e.printStackTrace();
                }
            }
        }
        return null;
    }

    public boolean shouldSign(File input, List containers) {
        Properties inf = null;
        Iterator iterator = containers.iterator();
        while (iterator.hasNext()) {
            inf = (Properties)iterator.next();
            if (!inf.containsKey("jarprocessor.exclude.children.sign")) continue;
            if (!Boolean.valueOf(inf.getProperty("jarprocessor.exclude.children.sign")).booleanValue()) break;
            if (this.verbose) {
                System.out.println(String.valueOf(input.getName()) + "is excluded from signing by its containers.");
            }
            return false;
        }
        if ((inf = Utils.getEclipseInf(input, this.verbose)) != null && inf.containsKey("jarprocessor.exclude.sign") && Boolean.valueOf(inf.getProperty("jarprocessor.exclude.sign")).booleanValue()) {
            if (this.verbose) {
                System.out.println("Excluding " + input.getName() + " from signing.");
            }
            return false;
        }
        return true;
    }

    public String getStepName() {
        return "Sign";
    }
}

