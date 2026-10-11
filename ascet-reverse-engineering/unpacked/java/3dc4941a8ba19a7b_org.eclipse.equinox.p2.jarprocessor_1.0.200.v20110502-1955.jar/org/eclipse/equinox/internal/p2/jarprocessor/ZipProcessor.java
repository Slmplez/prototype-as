/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.jarprocessor;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.Properties;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;
import org.eclipse.equinox.internal.p2.jarprocessor.Utils;
import org.eclipse.internal.provisional.equinox.p2.jarprocessor.JarProcessor;
import org.eclipse.internal.provisional.equinox.p2.jarprocessor.JarProcessorExecutor;

public class ZipProcessor {
    private JarProcessorExecutor executor = null;
    private JarProcessorExecutor.Options options = null;
    private String workingDirectory = null;
    private Properties properties = null;
    private Set packExclusions = null;
    private Set signExclusions = null;

    public void setExecutor(JarProcessorExecutor executor) {
        this.executor = executor;
    }

    public void setOptions(JarProcessorExecutor.Options options) {
        this.options = options;
    }

    public void setWorkingDirectory(String dir) {
        this.workingDirectory = dir;
    }

    public String getWorkingDirectory() {
        if (this.workingDirectory == null) {
            this.workingDirectory = ".";
        }
        return this.workingDirectory;
    }

    private boolean repacking() {
        return this.options.repack || this.options.pack && this.options.signCommand != null;
    }

    public void processZip(File zipFile) throws ZipException, IOException {
        File outputFile;
        File parent;
        if (this.options.verbose) {
            System.out.println("Processing " + zipFile.getPath());
        }
        ZipFile zip = new ZipFile(zipFile);
        this.initialize(zip);
        String extension = this.options.unpack ? "pack.gz" : ".jar";
        File tempDir = new File(this.getWorkingDirectory(), "temp_" + zipFile.getName());
        JarProcessor processor = new JarProcessor();
        processor.setVerbose(this.options.verbose);
        processor.setProcessAll(this.options.processAll);
        processor.setWorkingDirectory(tempDir.getCanonicalPath());
        if (this.options.unpack) {
            this.executor.addPackUnpackStep(processor, this.properties, this.options);
        }
        if (!(parent = (outputFile = new File(this.getWorkingDirectory(), String.valueOf(zipFile.getName()) + ".temp")).getParentFile()).exists()) {
            parent.mkdirs();
        }
        ZipOutputStream zipOut = new ZipOutputStream(new FileOutputStream(outputFile));
        Enumeration<? extends ZipEntry> entries = zip.entries();
        if (entries.hasMoreElements()) {
            ZipEntry entry = entries.nextElement();
            while (entry != null) {
                String name = entry.getName();
                InputStream entryStream = zip.getInputStream(entry);
                boolean pack = this.options.pack && !this.packExclusions.contains(name);
                boolean sign = this.options.signCommand != null && !this.signExclusions.contains(name);
                boolean repack = this.repacking() && !this.packExclusions.contains(name);
                File extractedFile = null;
                if (entry.getName().endsWith(extension) && (pack || sign || repack || this.options.unpack)) {
                    extractedFile = new File(tempDir, name);
                    parent = extractedFile.getParentFile();
                    if (!parent.exists()) {
                        parent.mkdirs();
                    }
                    if (this.options.verbose) {
                        System.out.println("Extracting " + entry.getName());
                    }
                    FileOutputStream extracted = new FileOutputStream(extractedFile);
                    Utils.transferStreams(entryStream, extracted, true);
                    entryStream = null;
                    boolean skip = Utils.shouldSkipJar(extractedFile, this.options.processAll, this.options.verbose);
                    if (skip) {
                        entryStream = new FileInputStream(extractedFile);
                        if (this.options.verbose) {
                            System.out.println(String.valueOf(entry.getName()) + " is not marked, skipping.");
                        }
                    } else {
                        block34: {
                            if (this.options.unpack) {
                                File result = processor.processJar(extractedFile);
                                name = String.valueOf(name.substring(0, name.length() - extractedFile.getName().length())) + result.getName();
                                extractedFile = result;
                            } else {
                                if (repack || sign) {
                                    processor.clearProcessSteps();
                                    if (repack) {
                                        this.executor.addPackUnpackStep(processor, this.properties, this.options);
                                    }
                                    if (sign) {
                                        this.executor.addSignStep(processor, this.properties, this.options);
                                    }
                                    extractedFile = processor.processJar(extractedFile);
                                }
                                if (pack) {
                                    processor.clearProcessSteps();
                                    this.executor.addPackStep(processor, this.properties, this.options);
                                    File modifiedFile = processor.processJar(extractedFile);
                                    if (modifiedFile.exists()) {
                                        block33: {
                                            try {
                                                String newName = String.valueOf(name.substring(0, name.length() - extractedFile.getName().length())) + modifiedFile.getName();
                                                if (this.options.verbose) {
                                                    System.out.println("Adding " + newName + " to " + outputFile.getPath());
                                                    System.out.println();
                                                }
                                                ZipEntry zipEntry = new ZipEntry(newName);
                                                entryStream = new FileInputStream(modifiedFile);
                                                zipOut.putNextEntry(zipEntry);
                                                Utils.transferStreams(entryStream, zipOut, false);
                                                entryStream.close();
                                                Utils.clear(modifiedFile);
                                            }
                                            catch (IOException e) {
                                                Utils.close(entryStream);
                                                if (!this.options.verbose) break block33;
                                                e.printStackTrace();
                                                System.out.println("Warning: Problem reading " + modifiedFile.getPath() + ".");
                                            }
                                        }
                                        entryStream = null;
                                    } else if (this.options.verbose) {
                                        System.out.println("Warning: " + modifiedFile.getPath() + " not found.");
                                    }
                                }
                            }
                            if (extractedFile.exists()) {
                                try {
                                    entryStream = new FileInputStream(extractedFile);
                                }
                                catch (IOException e) {
                                    if (!this.options.verbose) break block34;
                                    e.printStackTrace();
                                    System.out.println("Warning: Problem reading " + extractedFile.getPath() + ".");
                                }
                            }
                        }
                        if (this.options.verbose && entryStream != null) {
                            System.out.println("Adding " + name + " to " + outputFile.getPath());
                        }
                    }
                }
                if (entryStream != null) {
                    block35: {
                        ZipEntry newEntry = new ZipEntry(name);
                        try {
                            zipOut.putNextEntry(newEntry);
                            Utils.transferStreams(entryStream, zipOut, false);
                            zipOut.closeEntry();
                        }
                        catch (ZipException zipException) {
                            if (!this.options.verbose) break block35;
                            System.out.println("Warning: " + name + " already exists in " + outputFile.getName() + ".  Skipping.");
                        }
                    }
                    entryStream.close();
                }
                if (extractedFile != null) {
                    Utils.clear(extractedFile);
                }
                if (this.options.verbose) {
                    System.out.println();
                    System.out.println("Processing " + zipFile.getPath());
                }
                ZipEntry zipEntry = entry = entries.hasMoreElements() ? entries.nextElement() : null;
            }
        }
        zipOut.close();
        zip.close();
        File finalFile = new File(this.getWorkingDirectory(), zipFile.getName());
        if (finalFile.exists()) {
            finalFile.delete();
        }
        outputFile.renameTo(finalFile);
        Utils.clear(tempDir);
    }

    private void initialize(ZipFile zip) {
        block8: {
            ZipEntry entry = zip.getEntry("pack.properties");
            this.properties = new Properties();
            if (entry != null) {
                InputStream stream = null;
                try {
                    try {
                        stream = zip.getInputStream(entry);
                        this.properties.load(stream);
                    }
                    catch (IOException e) {
                        if (this.options.verbose) {
                            e.printStackTrace();
                        }
                        Utils.close(stream);
                        break block8;
                    }
                }
                catch (Throwable throwable) {
                    Utils.close(stream);
                    throw throwable;
                }
                Utils.close(stream);
            }
        }
        this.packExclusions = Utils.getPackExclusions(this.properties);
        this.signExclusions = Utils.getSignExclusions(this.properties);
        if (this.executor == null) {
            this.executor = new JarProcessorExecutor();
        }
    }
}

