/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.jarprocessor.verifier;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Iterator;
import java.util.Properties;
import org.eclipse.equinox.internal.p2.jarprocessor.UnpackStep;
import org.eclipse.equinox.internal.p2.jarprocessor.Utils;
import org.eclipse.equinox.internal.p2.jarprocessor.verifier.VerifyStep;
import org.eclipse.internal.provisional.equinox.p2.jarprocessor.JarProcessor;
import org.eclipse.internal.provisional.equinox.p2.jarprocessor.JarProcessorExecutor;

public class Verifier
extends JarProcessorExecutor {
    private static void printUsage() {
        System.out.println("This tool verifies that unpacking a pack.gz file with the jarprocessor results in a valid jar file.");
        System.out.println("Usage: java -cp jarprocessor.jar org.eclipse.update.internal.jarprocessor.verifier.Verifier -dir <workingDirectory> input [input]");
        System.out.println("");
        System.out.println("-dir : specifies a working directory where pack.gz files can be temporarily unpacked");
        System.out.println("input : a list of directories and/or pack.gz files to verify.");
    }

    public static void main(String[] args) {
        String[] input;
        if (!VerifyStep.canVerify()) {
            System.out.println("Can't find jarsigner.  Please adjust your system path or use a jdk.");
            Verifier.printUsage();
            return;
        }
        String workingDirectory = null;
        if (args.length == 0) {
            workingDirectory = ".";
            input = new String[]{"."};
        } else {
            int idx = 0;
            if (args[0] == "-help") {
                Verifier.printUsage();
                return;
            }
            if (args[idx] == "-dir") {
                workingDirectory = args[++idx];
                ++idx;
            } else {
                workingDirectory = "temp";
            }
            input = new String[args.length - idx];
            System.arraycopy(args, idx, input, 0, args.length - idx);
        }
        File workingDir = new File(workingDirectory);
        boolean clear = false;
        if (workingDir.exists()) {
            workingDir = new File(workingDir, "jarprocessor.verifier.temp");
            clear = true;
        }
        Verifier verifier = new Verifier();
        verifier.verify(workingDir, input);
        if (clear) {
            workingDir.deleteOnExit();
        }
    }

    public void verify(final File workingDirectory, String[] input) {
        this.options = new JarProcessorExecutor.Options();
        this.options.verbose = false;
        this.options.repack = true;
        this.options.pack = true;
        this.options.outputDir = workingDirectory.toString();
        Properties properties = new Properties();
        final VerifyStep verifyStep = new VerifyStep(properties, false);
        JarProcessor verifier = new JarProcessor(){

            public File processJar(File inputFile) throws IOException {
                Iterator iterator = this.getStepIterator();
                if (iterator.hasNext() && iterator.next() instanceof VerifyStep) {
                    return verifyStep.postProcess(inputFile, workingDirectory, null);
                }
                return super.processJar(inputFile);
            }
        };
        verifier.setWorkingDirectory(workingDirectory.getAbsolutePath());
        int i = 0;
        while (i < input.length) {
            File inputFile = new File(input[i]);
            if (inputFile.exists()) {
                try {
                    this.process(inputFile, Utils.PACK_GZ_FILTER, true, verifier, properties);
                }
                catch (FileNotFoundException e) {
                    e.printStackTrace();
                }
            }
            ++i;
        }
        Utils.clear(workingDirectory);
    }

    public void addPackStep(JarProcessor processor, Properties properties, JarProcessorExecutor.Options processOptions) {
        processor.addProcessStep(new VerifyStep(properties, processOptions.verbose));
    }

    public void addPackUnpackStep(JarProcessor processor, Properties properties, JarProcessorExecutor.Options processOptions) {
        processor.addProcessStep(new UnpackStep(properties, processOptions.verbose));
    }
}

