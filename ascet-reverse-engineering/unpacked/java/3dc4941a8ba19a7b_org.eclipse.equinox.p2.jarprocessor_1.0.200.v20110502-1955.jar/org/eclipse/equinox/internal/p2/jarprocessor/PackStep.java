/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.jarprocessor;

import java.io.File;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Set;
import org.eclipse.equinox.internal.p2.jarprocessor.CommandStep;
import org.eclipse.equinox.internal.p2.jarprocessor.Utils;

public class PackStep
extends CommandStep {
    protected static String packCommand = null;
    private static Boolean canPack = null;
    private Set exclusions = Collections.EMPTY_SET;

    public static boolean canPack() {
        if (canPack != null) {
            return canPack;
        }
        String[] locations = Utils.getPack200Commands("pack200");
        if (locations == null) {
            canPack = Boolean.FALSE;
            packCommand = null;
            return false;
        }
        int i = 0;
        while (i < locations.length) {
            if (locations[i] != null) {
                int result = PackStep.execute(new String[]{locations[i], "-V"});
                if (result == 0) {
                    packCommand = locations[i];
                    canPack = Boolean.TRUE;
                    return true;
                }
            }
            ++i;
        }
        canPack = Boolean.FALSE;
        return false;
    }

    public PackStep(Properties options) {
        super(options, null, null, false);
        this.exclusions = Utils.getPackExclusions(options);
    }

    public PackStep(Properties options, boolean verbose) {
        super(options, null, null, verbose);
        this.exclusions = Utils.getPackExclusions(options);
    }

    public String recursionEffect(String entryName) {
        if (PackStep.canPack() && entryName.endsWith(".jar") && !this.exclusions.contains(entryName)) {
            return String.valueOf(entryName) + ".pack.gz";
        }
        return null;
    }

    public File preProcess(File input, File workingDirectory, List containers) {
        return null;
    }

    public File postProcess(File input, File workingDirectory, List containers) {
        if (PackStep.canPack() && packCommand != null) {
            Properties inf = Utils.getEclipseInf(input, this.verbose);
            if (!this.shouldPack(input, containers, inf)) {
                return null;
            }
            File outputFile = new File(workingDirectory, String.valueOf(input.getName()) + ".pack.gz");
            try {
                String[] cmd = this.getCommand(input, outputFile, inf, containers);
                int result = PackStep.execute(cmd, this.verbose);
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
            return outputFile;
        }
        return null;
    }

    protected boolean shouldPack(File input, List containers, Properties inf) {
        Iterator iterator = containers.iterator();
        while (iterator.hasNext()) {
            Properties container = (Properties)iterator.next();
            if (!container.containsKey("jarprocessor.exclude.children.pack")) continue;
            if (!Boolean.valueOf(container.getProperty("jarprocessor.exclude.children.pack")).booleanValue()) break;
            if (this.verbose) {
                System.out.println(String.valueOf(input.getName()) + " is excluded from pack200 by its containers.");
            }
            return false;
        }
        if (inf != null && inf.containsKey("jarprocessor.exclude.pack") && Boolean.valueOf(inf.getProperty("jarprocessor.exclude.pack")).booleanValue()) {
            if (this.verbose) {
                System.out.println("Excluding " + input.getName() + " from " + this.getStepName());
            }
            return false;
        }
        return true;
    }

    protected String[] getCommand(File input, File outputFile, Properties inf, List containers) throws IOException {
        String[] cmd = null;
        String arguments = this.getArguments(input, inf, containers);
        if (arguments != null && arguments.length() > 0) {
            String[] args = Utils.toStringArray(arguments, ",");
            cmd = new String[3 + args.length];
            cmd[0] = packCommand;
            System.arraycopy(args, 0, cmd, 1, args.length);
            cmd[cmd.length - 2] = outputFile.getCanonicalPath();
            cmd[cmd.length - 1] = input.getCanonicalPath();
        } else {
            cmd = new String[]{packCommand, outputFile.getCanonicalPath(), input.getCanonicalPath()};
        }
        return cmd;
    }

    protected String getArguments(File input, Properties inf, List containers) {
        String argsKey;
        if (inf != null && inf.containsKey("pack200.args")) {
            return inf.getProperty("pack200.args");
        }
        Iterator iterator = containers.iterator();
        while (iterator.hasNext()) {
            Properties container = (Properties)iterator.next();
            if (!container.containsKey("pack200.default.args")) continue;
            return container.getProperty("pack200.default.args");
        }
        Properties options = this.getOptions();
        if (options.containsKey(argsKey = String.valueOf(input.getName()) + ".pack.args")) {
            return options.getProperty(argsKey);
        }
        if (options.containsKey("pack200.default.args")) {
            return options.getProperty("pack200.default.args");
        }
        return "";
    }

    public String getStepName() {
        return "Pack";
    }

    public void adjustInf(File input, Properties inf, List containers) {
        if (input == null || inf == null) {
            return;
        }
        boolean v = this.verbose;
        this.verbose = false;
        if (!this.shouldPack(input, containers, inf)) {
            this.verbose = v;
            return;
        }
        this.verbose = v;
        if (inf.getProperty("pack200.conditioned") == null) {
            inf.put("pack200.conditioned", "true");
            String arguments = inf.getProperty("pack200.args");
            if (arguments == null && (arguments = this.getArguments(input, inf, containers)) != null && arguments.length() > 0) {
                inf.put("pack200.args", arguments);
            }
        }
    }
}

