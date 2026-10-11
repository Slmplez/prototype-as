/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.jarprocessor;

import java.io.File;
import org.eclipse.internal.provisional.equinox.p2.jarprocessor.JarProcessor;
import org.eclipse.internal.provisional.equinox.p2.jarprocessor.JarProcessorExecutor;

public class Main {
    private static void printUsage() {
        System.out.println("[-option ...]... input");
        System.out.println("The following options are supported:");
        System.out.println("-processAll     process all jars, regardless of whether they were previously normalized");
        System.out.println("                By default only normalized jars will be processed.");
        System.out.println("-repack         normalize jars ");
        System.out.println("-sign <command> sign jars using <command>");
        System.out.println("-pack           pack the jars.  pack and repack are redundant unless");
        System.out.println("                sign is also specified.");
        System.out.println("-unpack         unpack pack.gz files. Unpack is mutually exclusive");
        System.out.println("                with repack, sign and pack.");
        System.out.println();
        System.out.println("-outputDir <dir>  the output directory");
        System.out.println("-verbose        verbose mode ");
    }

    public static JarProcessorExecutor.Options processArguments(String[] args) {
        if (args.length == 0) {
            Main.printUsage();
            return null;
        }
        JarProcessorExecutor.Options options = new JarProcessorExecutor.Options();
        int i = 0;
        while (i < args.length - 1) {
            if (args[i].equals("-pack")) {
                options.pack = true;
            } else if (args[i].equals("-unpack")) {
                options.unpack = true;
            } else if (args[i].equals("-sign") && i < args.length - 2) {
                if (args[i + 1].startsWith("-")) {
                    Main.printUsage();
                    return null;
                }
                options.signCommand = args[++i];
            } else if (args[i].equals("-repack")) {
                options.repack = true;
            } else if (args[i].equals("-outputDir") && i < args.length - 2) {
                if (args[i + 1].startsWith("-")) {
                    Main.printUsage();
                    return null;
                }
                options.outputDir = args[++i];
            } else if (args[i].equals("-verbose")) {
                options.verbose = true;
            } else if (args[i].equals("-processAll")) {
                options.processAll = true;
            }
            ++i;
        }
        options.input = new File(args[i]);
        String problemMessage = null;
        String inputName = options.input.getName();
        if (options.unpack) {
            if (!JarProcessor.canPerformUnpack()) {
                problemMessage = "The unpack200 command cannot be found.";
            } else if (options.input.isFile() && !inputName.endsWith(".zip") && !inputName.endsWith(".pack.gz")) {
                problemMessage = "Input file is not a pack.gz file.";
            } else if (options.pack || options.repack || options.signCommand != null) {
                problemMessage = "Pack, repack or sign cannot be specified with unpack.";
            }
        } else if (options.input.isFile() && !inputName.endsWith(".zip") && !inputName.endsWith(".jar")) {
            problemMessage = "Input file is not a jar file.";
        } else if ((options.pack || options.repack) && !JarProcessor.canPerformPack()) {
            problemMessage = "The pack200 command can not be found.";
        }
        if (problemMessage != null) {
            System.out.println(problemMessage);
            System.out.println();
            Main.printUsage();
            return null;
        }
        return options;
    }

    public static void main(String[] args) {
        JarProcessorExecutor.Options options = Main.processArguments(args);
        if (options == null) {
            return;
        }
        new JarProcessorExecutor().runJarProcessor(options);
    }
}

