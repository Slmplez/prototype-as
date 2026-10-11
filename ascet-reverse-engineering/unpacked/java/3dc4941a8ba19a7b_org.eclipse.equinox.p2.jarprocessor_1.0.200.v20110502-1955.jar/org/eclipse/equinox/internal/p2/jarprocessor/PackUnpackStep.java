/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.jarprocessor;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Properties;
import java.util.Set;
import org.eclipse.equinox.internal.p2.jarprocessor.PackStep;
import org.eclipse.equinox.internal.p2.jarprocessor.Utils;

public class PackUnpackStep
extends PackStep {
    private Set exclusions = null;

    public PackUnpackStep(Properties options) {
        super(options);
        this.exclusions = Utils.getPackExclusions(options);
    }

    public PackUnpackStep(Properties options, boolean verbose) {
        super(options, verbose);
        this.exclusions = Utils.getPackExclusions(options);
    }

    public String recursionEffect(String entryName) {
        if (PackUnpackStep.canPack() && entryName.endsWith(".jar") && !this.exclusions.contains(entryName)) {
            return entryName;
        }
        return null;
    }

    public File postProcess(File input, File workingDirectory, List containers) {
        if (PackUnpackStep.canPack() && packCommand != null && input != null) {
            Properties inf = Utils.getEclipseInf(input, this.verbose);
            if (!this.shouldPack(input, containers, inf)) {
                return null;
            }
            File tempFile = new File(workingDirectory, "temp_" + input.getName());
            try {
                String[] tmp = this.getCommand(input, tempFile, inf, containers);
                String[] cmd = new String[tmp.length + 1];
                cmd[0] = tmp[0];
                cmd[1] = "-r";
                System.arraycopy(tmp, 1, cmd, 2, tmp.length - 1);
                int result = PackUnpackStep.execute(cmd, this.verbose);
                if (result == 0 && tempFile.exists()) {
                    File finalFile = new File(workingDirectory, input.getName());
                    if (finalFile.exists()) {
                        finalFile.delete();
                    }
                    tempFile.renameTo(finalFile);
                    return finalFile;
                }
                if (this.verbose) {
                    System.out.println("Error: " + result + " was returned from command: " + Utils.concat(cmd));
                }
            }
            catch (IOException e) {
                if (this.verbose) {
                    e.printStackTrace();
                }
                return null;
            }
        }
        return null;
    }

    public File preProcess(File input, File workingDirectory, List containers) {
        return null;
    }

    public String getStepName() {
        return "Repack";
    }
}

