/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.jarprocessor;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Properties;
import org.eclipse.equinox.internal.p2.jarprocessor.CommandStep;
import org.eclipse.equinox.internal.p2.jarprocessor.Utils;

public class UnpackStep
extends CommandStep {
    public static final String UNPACKER_PROPERTY = "org.eclipse.update.jarprocessor.Unpacker";
    private static Boolean canUnpack = null;
    private static String unpackCommand = null;

    public static boolean canUnpack() {
        if (canUnpack != null) {
            return canUnpack;
        }
        String[] locations = Utils.getPack200Commands("unpack200");
        if (locations == null) {
            canUnpack = Boolean.FALSE;
            unpackCommand = null;
            return false;
        }
        int i = 0;
        while (i < locations.length) {
            if (locations[i] != null) {
                int result = UnpackStep.execute(new String[]{locations[i], "-V"});
                if (result == 0) {
                    unpackCommand = locations[i];
                    canUnpack = Boolean.TRUE;
                    return true;
                }
            }
            ++i;
        }
        canUnpack = Boolean.FALSE;
        return false;
    }

    public UnpackStep(Properties options) {
        super(options, null, null, false);
    }

    public UnpackStep(Properties options, boolean verbose) {
        super(options, null, null, verbose);
    }

    public String recursionEffect(String entryName) {
        if (UnpackStep.canUnpack() && entryName.endsWith(".pack.gz")) {
            return entryName.substring(0, entryName.length() - ".pack.gz".length());
        }
        return null;
    }

    public File preProcess(File input, File workingDirectory, List containers) {
        String name;
        if (UnpackStep.canUnpack() && unpackCommand != null && (name = input.getName()).endsWith(".pack.gz")) {
            File unpacked = new File(workingDirectory, name = name.substring(0, name.length() - ".pack.gz".length()));
            File parent = unpacked.getParentFile();
            if (!parent.exists()) {
                parent.mkdirs();
            }
            try {
                String options = this.getOptions().getProperty(String.valueOf(input.getName()) + ".unpack.args");
                String[] cmd = null;
                cmd = options != null ? new String[]{unpackCommand, options, input.getCanonicalPath(), unpacked.getCanonicalPath()} : new String[]{unpackCommand, input.getCanonicalPath(), unpacked.getCanonicalPath()};
                int result = UnpackStep.execute(cmd, this.verbose);
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
            return unpacked;
        }
        return null;
    }

    public File postProcess(File input, File workingDirectory, List containers) {
        return null;
    }

    public String getStepName() {
        return "Unpack";
    }
}

