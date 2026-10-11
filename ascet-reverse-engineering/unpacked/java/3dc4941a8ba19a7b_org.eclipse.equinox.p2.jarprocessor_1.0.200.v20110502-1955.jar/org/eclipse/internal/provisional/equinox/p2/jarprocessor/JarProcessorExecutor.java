/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.internal.provisional.equinox.p2.jarprocessor;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;
import java.util.Set;
import java.util.zip.ZipException;
import org.eclipse.equinox.internal.p2.jarprocessor.PackStep;
import org.eclipse.equinox.internal.p2.jarprocessor.PackUnpackStep;
import org.eclipse.equinox.internal.p2.jarprocessor.SignCommandStep;
import org.eclipse.equinox.internal.p2.jarprocessor.UnpackStep;
import org.eclipse.equinox.internal.p2.jarprocessor.Utils;
import org.eclipse.equinox.internal.p2.jarprocessor.ZipProcessor;
import org.eclipse.internal.provisional.equinox.p2.jarprocessor.JarProcessor;

public class JarProcessorExecutor {
    protected Options options = null;
    private Set packExclusions = null;
    private Set signExclusions = null;

    public void runJarProcessor(Options processOptions) {
        block15: {
            this.options = processOptions;
            if (this.options.input.isFile() && this.options.input.getName().endsWith(".zip")) {
                ZipProcessor processor = new ZipProcessor();
                processor.setWorkingDirectory(this.options.outputDir);
                processor.setOptions(this.options);
                processor.setExecutor(this);
                try {
                    processor.processZip(this.options.input);
                }
                catch (ZipException e) {
                    if (this.options.verbose) {
                        e.printStackTrace();
                    }
                    break block15;
                }
                catch (IOException e) {
                    if (this.options.verbose) {
                        e.printStackTrace();
                    }
                    break block15;
                }
            }
            JarProcessor processor = new JarProcessor();
            processor.setWorkingDirectory(this.options.outputDir);
            processor.setProcessAll(this.options.processAll);
            processor.setVerbose(this.options.verbose);
            Properties properties = new Properties();
            if (this.options.input.isDirectory()) {
                block17: {
                    File packProperties = new File(this.options.input, "pack.properties");
                    if (packProperties.exists() && packProperties.isFile()) {
                        BufferedInputStream in = null;
                        try {
                            try {
                                in = new BufferedInputStream(new FileInputStream(packProperties));
                                properties.load(in);
                            }
                            catch (IOException e) {
                                if (this.options.verbose) {
                                    e.printStackTrace();
                                }
                                Utils.close(in);
                                break block17;
                            }
                        }
                        catch (Throwable throwable) {
                            Utils.close(in);
                            throw throwable;
                        }
                        Utils.close(in);
                    }
                }
                this.packExclusions = Utils.getPackExclusions(properties);
                this.signExclusions = Utils.getSignExclusions(properties);
            }
            try {
                FileFilter filter = this.createFileFilter(this.options);
                this.process(this.options.input, filter, this.options.verbose, processor, properties);
            }
            catch (FileNotFoundException e) {
                if (!this.options.verbose) break block15;
                e.printStackTrace();
            }
        }
    }

    protected FileFilter createFileFilter(Options processOptions) {
        return processOptions.unpack ? Utils.PACK_GZ_FILTER : Utils.JAR_FILTER;
    }

    protected String getRelativeName(File file) {
        if (this.options.input == null) {
            return file.toString();
        }
        try {
            File input = this.options.input.getCanonicalFile();
            File subFile = file.getCanonicalFile();
            if (input.isFile()) {
                return subFile.getName();
            }
            if (!subFile.toString().startsWith(input.toString())) {
                return file.toString();
            }
            File parent = subFile.getParentFile();
            String result = subFile.getName();
            while (!parent.equals(input)) {
                result = String.valueOf(parent.getName()) + '/' + result;
                parent = parent.getParentFile();
            }
            return result;
        }
        catch (IOException iOException) {
            return file.getName();
        }
    }

    private boolean shouldPack(String name) {
        if (!this.options.pack) {
            return false;
        }
        return this.packExclusions == null ? true : !this.packExclusions.contains(name);
    }

    private boolean shouldSign(String name) {
        if (this.options.signCommand == null) {
            return false;
        }
        return this.signExclusions == null ? true : !this.signExclusions.contains(name);
    }

    private boolean shouldRepack(String name) {
        if (this.shouldSign(name) && this.shouldPack(name)) {
            return true;
        }
        if (!this.options.repack) {
            return false;
        }
        return this.packExclusions == null ? true : !this.packExclusions.contains(name);
    }

    protected void process(File input, FileFilter filter, boolean verbose, JarProcessor processor, Properties packProperties) throws FileNotFoundException {
        if (!input.exists()) {
            throw new FileNotFoundException();
        }
        File[] files = null;
        if (input.isDirectory()) {
            files = input.listFiles();
        } else if (filter.accept(input)) {
            files = new File[]{input};
        } else {
            return;
        }
        int i = 0;
        while (i < files.length) {
            block17: {
                if (files[i].isDirectory()) {
                    this.processDirectory(files[i], filter, verbose, processor, packProperties);
                } else if (filter.accept(files[i])) {
                    try {
                        processor.clearProcessSteps();
                        if (this.options.unpack) {
                            this.addUnpackStep(processor, packProperties, this.options);
                            processor.processJar(files[i]);
                        } else {
                            String name = this.getRelativeName(files[i]);
                            boolean sign = this.shouldSign(name);
                            boolean repack = this.shouldRepack(name);
                            if (repack || sign) {
                                processor.clearProcessSteps();
                                if (repack) {
                                    this.addPackUnpackStep(processor, packProperties, this.options);
                                }
                                if (sign) {
                                    this.addSignStep(processor, packProperties, this.options);
                                }
                                files[i] = processor.processJar(files[i]);
                            }
                            if (this.shouldPack(name)) {
                                processor.clearProcessSteps();
                                this.addPackStep(processor, packProperties, this.options);
                                processor.processJar(files[i]);
                            }
                        }
                    }
                    catch (IOException e) {
                        if (!verbose) break block17;
                        e.printStackTrace();
                    }
                }
            }
            ++i;
        }
    }

    protected void processDirectory(File input, FileFilter filter, boolean verbose, JarProcessor processor, Properties packProperties) throws FileNotFoundException {
        if (!input.isDirectory()) {
            return;
        }
        String dir = processor.getWorkingDirectory();
        processor.setWorkingDirectory(String.valueOf(dir) + "/" + input.getName());
        this.process(input, filter, verbose, processor, packProperties);
        processor.setWorkingDirectory(dir);
    }

    public void addPackUnpackStep(JarProcessor processor, Properties properties, Options processOptions) {
        processor.addProcessStep(new PackUnpackStep(properties, processOptions.verbose));
    }

    public void addSignStep(JarProcessor processor, Properties properties, Options processOptions) {
        processor.addProcessStep(new SignCommandStep(properties, processOptions.signCommand, processOptions.verbose));
    }

    public void addPackStep(JarProcessor processor, Properties properties, Options processOptions) {
        processor.addProcessStep(new PackStep(properties, processOptions.verbose));
    }

    public void addUnpackStep(JarProcessor processor, Properties properties, Options processOptions) {
        processor.addProcessStep(new UnpackStep(properties, processOptions.verbose));
    }

    public static class Options {
        public String outputDir = ".";
        public String signCommand = null;
        public boolean pack = false;
        public boolean repack = false;
        public boolean unpack = false;
        public boolean verbose = false;
        public boolean processAll = false;
        public File input = null;
    }
}

