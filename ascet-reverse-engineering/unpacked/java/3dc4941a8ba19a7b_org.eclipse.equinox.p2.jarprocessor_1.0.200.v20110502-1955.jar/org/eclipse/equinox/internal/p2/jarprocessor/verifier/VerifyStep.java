/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.jarprocessor.verifier;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Properties;
import org.eclipse.equinox.internal.p2.jarprocessor.CommandStep;
import org.eclipse.equinox.internal.p2.jarprocessor.Utils;

public class VerifyStep
extends CommandStep {
    static String verifyCommand = "jarsigner";
    static Boolean canVerify = null;

    public static boolean canVerify() {
        if (canVerify != null) {
            return canVerify;
        }
        String javaHome = System.getProperty("java.home");
        String command = String.valueOf(javaHome) + "/../bin/jarsigner";
        int result = VerifyStep.execute(new String[]{command});
        if (result < 0) {
            command = "jarsigner";
            result = VerifyStep.execute(new String[]{command});
            if (result < 0) {
                canVerify = Boolean.FALSE;
                return false;
            }
        }
        verifyCommand = command;
        canVerify = Boolean.TRUE;
        return true;
    }

    public VerifyStep(Properties options, boolean verbose) {
        super(options, verifyCommand, ".jar", verbose);
    }

    public String getStepName() {
        return "Verify";
    }

    public File postProcess(File input, File workingDirectory, List containers) {
        if (VerifyStep.canVerify() && verifyCommand != null) {
            try {
                System.out.print("Verifying " + input.getName() + ":  ");
                String[] cmd = new String[]{verifyCommand, "-verify", input.getCanonicalPath()};
                int result = VerifyStep.execute(cmd, true);
                if (result != 0 && this.verbose) {
                    System.out.println("Error: " + result + " was returned from command: " + Utils.concat(cmd));
                }
            }
            catch (IOException e) {
                if (this.verbose) {
                    e.printStackTrace();
                }
                return null;
            }
            return input;
        }
        return null;
    }

    public File preProcess(File input, File workingDirectory, List containers) {
        return null;
    }

    public String recursionEffect(String entryName) {
        return null;
    }
}

