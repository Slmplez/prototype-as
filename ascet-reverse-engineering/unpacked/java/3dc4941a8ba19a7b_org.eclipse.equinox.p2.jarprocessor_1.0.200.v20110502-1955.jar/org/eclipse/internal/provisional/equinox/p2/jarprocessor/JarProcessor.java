/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.internal.provisional.equinox.p2.jarprocessor;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.jar.JarEntry;
import java.util.jar.JarException;
import java.util.jar.JarFile;
import java.util.jar.JarOutputStream;
import java.util.zip.ZipEntry;
import org.eclipse.equinox.internal.p2.jarprocessor.PackStep;
import org.eclipse.equinox.internal.p2.jarprocessor.UnpackStep;
import org.eclipse.equinox.internal.p2.jarprocessor.Utils;
import org.eclipse.internal.provisional.equinox.p2.jarprocessor.IProcessStep;

public class JarProcessor {
    public static final String PACKED_SUFFIX = "pack.gz";
    private List steps = new ArrayList();
    private String workingDirectory = "";
    private int depth = -1;
    private boolean verbose = false;
    private boolean processAll = false;
    private LinkedList containingInfs = new LinkedList();

    public static JarProcessor getUnpackProcessor(Properties properties) {
        if (!JarProcessor.canPerformUnpack()) {
            throw new UnsupportedOperationException();
        }
        JarProcessor processor = new JarProcessor();
        processor.addProcessStep(new UnpackStep(properties));
        return processor;
    }

    public static JarProcessor getPackProcessor(Properties properties) {
        if (!JarProcessor.canPerformPack()) {
            throw new UnsupportedOperationException();
        }
        JarProcessor processor = new JarProcessor();
        processor.addProcessStep(new PackStep(properties));
        return processor;
    }

    public static boolean canPerformPack() {
        return PackStep.canPack();
    }

    public static boolean canPerformUnpack() {
        return UnpackStep.canUnpack();
    }

    public String getWorkingDirectory() {
        return this.workingDirectory;
    }

    public void setWorkingDirectory(String dir) {
        if (dir != null) {
            this.workingDirectory = dir;
        }
    }

    public void setVerbose(boolean verbose) {
        this.verbose = verbose;
    }

    public void setProcessAll(boolean all) {
        this.processAll = all;
    }

    public void addProcessStep(IProcessStep step) {
        this.steps.add(step);
    }

    public void clearProcessSteps() {
        this.steps.clear();
    }

    public Iterator getStepIterator() {
        return this.steps.iterator();
    }

    private void recreateJar(JarFile jar, JarOutputStream outputJar, Map replacements, File directory, Properties inf) throws IOException {
        BufferedInputStream in = null;
        boolean marked = false;
        try {
            Enumeration<JarEntry> entries = jar.entries();
            JarEntry entry = entries.nextElement();
            while (entry != null) {
                block20: {
                    File replacement = null;
                    ZipEntry newEntry = null;
                    if (replacements.containsKey(entry.getName())) {
                        String name = (String)replacements.get(entry.getName());
                        replacement = new File(directory, name);
                        if (name != null) {
                            if (replacement.exists()) {
                                try {
                                    in = new BufferedInputStream(new FileInputStream(replacement));
                                    newEntry = new JarEntry(name);
                                }
                                catch (Exception e) {
                                    if (this.verbose) {
                                        e.printStackTrace();
                                        System.out.println("Warning: Problem reading " + replacement.getPath() + ", using " + jar.getName() + File.separator + entry.getName() + " instead.");
                                    }
                                }
                            } else if (this.verbose) {
                                System.out.println("Warning: " + replacement.getPath() + " not found, using " + jar.getName() + File.separator + entry.getName() + " instead.");
                            }
                        }
                    }
                    if (newEntry == null) {
                        try {
                            in = new BufferedInputStream(jar.getInputStream(entry));
                            newEntry = new JarEntry(entry.getName());
                        }
                        catch (Exception e) {
                            if (this.verbose) {
                                e.printStackTrace();
                                System.out.println("ERROR: problem reading " + entry.getName() + " from " + jar.getName());
                            }
                            break block20;
                        }
                    }
                    newEntry.setTime(entry.getTime());
                    outputJar.putNextEntry(newEntry);
                    if (entry.getName().equals("META-INF/eclipse.inf")) {
                        Utils.storeProperties(inf, outputJar);
                        marked = true;
                    } else {
                        Utils.transferStreams(in, outputJar, false);
                    }
                    outputJar.closeEntry();
                    ((InputStream)in).close();
                    if (replacement != null) {
                        replacement.delete();
                    }
                }
                JarEntry jarEntry = entry = entries.hasMoreElements() ? entries.nextElement() : null;
            }
            if (!marked) {
                entry = new JarEntry("META-INF/eclipse.inf");
                outputJar.putNextEntry(entry);
                Utils.storeProperties(inf, outputJar);
                outputJar.closeEntry();
            }
        }
        finally {
            Utils.close(outputJar);
            Utils.close(jar);
            Utils.close(in);
        }
    }

    private String recursionEffect(String entryName) {
        String result = null;
        Iterator iter = this.steps.iterator();
        while (iter.hasNext()) {
            IProcessStep step = (IProcessStep)iter.next();
            result = step.recursionEffect(entryName);
            if (result == null) continue;
            entryName = result;
        }
        return result;
    }

    private void extractEntries(JarFile jar, File tempDir, Map data, Properties inf) throws IOException {
        if (inf != null && inf.containsKey("jarprocessor.exclude.children")) {
            String excludeChildren = inf.getProperty("jarprocessor.exclude.children");
            if (Boolean.valueOf(excludeChildren).booleanValue() && this.verbose) {
                int i = 0;
                while (i <= this.depth) {
                    System.out.print("  ");
                    ++i;
                }
                System.out.println("Children of " + jar.getName() + "are excluded from processing.");
            }
            return;
        }
        Enumeration<JarEntry> entries = jar.entries();
        if (entries.hasMoreElements()) {
            JarEntry entry = entries.nextElement();
            while (entry != null) {
                String name = entry.getName();
                String newName = this.recursionEffect(name);
                if (newName != null) {
                    File extracted;
                    File parentDir;
                    if (this.verbose) {
                        int i = 0;
                        while (i <= this.depth) {
                            System.out.print("  ");
                            ++i;
                        }
                        System.out.println("Processing nested file: " + name);
                    }
                    if (!(parentDir = (extracted = new File(tempDir, name)).getParentFile()).exists()) {
                        parentDir.mkdirs();
                    }
                    InputStream in = null;
                    BufferedOutputStream out = null;
                    try {
                        in = jar.getInputStream(entry);
                        out = new BufferedOutputStream(new FileOutputStream(extracted));
                        Utils.transferStreams(in, out, true);
                    }
                    catch (Throwable throwable) {
                        Utils.close(in);
                        Utils.close(out);
                        throw throwable;
                    }
                    Utils.close(in);
                    Utils.close(out);
                    extracted.setLastModified(entry.getTime());
                    String dir = this.getWorkingDirectory();
                    try {
                        this.containingInfs.addFirst(inf);
                        this.setWorkingDirectory(parentDir.getCanonicalPath());
                        File result = this.processJar(extracted);
                        newName = String.valueOf(name.substring(0, name.length() - extracted.getName().length())) + result.getName();
                        data.put(name, newName);
                    }
                    finally {
                        this.setWorkingDirectory(dir);
                        this.containingInfs.removeFirst();
                    }
                    if (!name.equals(newName)) {
                        extracted.delete();
                    }
                }
                JarEntry jarEntry = entry = entries.hasMoreElements() ? entries.nextElement() : null;
            }
        }
    }

    private File preProcess(File input, File tempDir) {
        File result = null;
        Iterator iter = this.steps.iterator();
        while (iter.hasNext()) {
            IProcessStep step = (IProcessStep)iter.next();
            result = step.preProcess(input, tempDir, this.containingInfs);
            if (result == null) continue;
            input = result;
        }
        return input;
    }

    private File postProcess(File input, File tempDir) {
        File result = null;
        Iterator iter = this.steps.iterator();
        while (iter.hasNext()) {
            IProcessStep step = (IProcessStep)iter.next();
            result = step.postProcess(input, tempDir, this.containingInfs);
            if (result == null) continue;
            input = result;
        }
        return input;
    }

    private void adjustInf(File input, Properties inf) {
        Iterator iter = this.steps.iterator();
        while (iter.hasNext()) {
            IProcessStep step = (IProcessStep)iter.next();
            step.adjustInf(input, inf, this.containingInfs);
        }
    }

    public File processJar(File input) throws IOException {
        File tempDir = null;
        ++this.depth;
        try {
            long lastModified = input.lastModified();
            File workingDir = new File(this.getWorkingDirectory());
            if (!workingDir.exists()) {
                workingDir.mkdirs();
            }
            boolean skip = Utils.shouldSkipJar(input, this.processAll, this.verbose);
            if (this.depth == 0 && this.verbose) {
                if (skip) {
                    System.out.println("Skipping " + input.getPath());
                } else {
                    System.out.print("Running ");
                    Iterator iter = this.steps.iterator();
                    while (iter.hasNext()) {
                        IProcessStep step = (IProcessStep)iter.next();
                        System.out.print(String.valueOf(step.getStepName()) + " ");
                    }
                    System.out.println("on " + input.getPath());
                }
            }
            if (skip) {
                File file = input;
                return file;
            }
            File workingFile = this.preProcess(input, workingDir);
            if (this.depth == 0) {
                tempDir = new File(workingDir, "temp." + workingFile.getName());
            } else {
                File parent = workingDir.getParentFile();
                tempDir = new File(parent, "temp_" + this.depth + '_' + workingFile.getName());
            }
            JarFile jar = new JarFile(workingFile, false);
            HashMap replacements = new HashMap();
            Properties inf = Utils.getEclipseInf(workingFile, this.verbose);
            this.extractEntries(jar, tempDir, replacements, inf);
            if (inf != null) {
                this.adjustInf(workingFile, inf);
            }
            File tempJar = null;
            tempJar = new File(tempDir, workingFile.getName());
            File parent = tempJar.getParentFile();
            if (!parent.exists()) {
                parent.mkdirs();
            }
            JarOutputStream jarOut = new JarOutputStream(new BufferedOutputStream(new FileOutputStream(tempJar)));
            this.recreateJar(jar, jarOut, replacements, tempDir, inf);
            jar.close();
            if (tempJar != null) {
                if (!workingFile.equals(input)) {
                    workingFile.delete();
                }
                workingFile = tempJar;
            }
            File result = this.postProcess(workingFile, workingDir);
            this.normalize(result, workingDir);
            if (!result.equals(workingFile) && !workingFile.equals(input)) {
                workingFile.delete();
            }
            if (!result.getParentFile().equals(workingDir)) {
                File finalFile = new File(workingDir, result.getName());
                if (finalFile.exists()) {
                    finalFile.delete();
                }
                result.renameTo(finalFile);
                result = finalFile;
            }
            result.setLastModified(lastModified);
            File file = result;
            return file;
        }
        finally {
            --this.depth;
            if (tempDir != null && tempDir.exists()) {
                Utils.clear(tempDir);
            }
        }
    }

    private void normalize(File input, File directory) {
        block10: {
            if (input.getName().endsWith(PACKED_SUFFIX)) {
                return;
            }
            try {
                File tempJar = new File(directory, "temp_" + input.getName());
                JarFile jar = null;
                try {
                    jar = new JarFile(input, false);
                }
                catch (JarException jarException) {
                    return;
                }
                JarOutputStream jarOut = new JarOutputStream(new BufferedOutputStream(new FileOutputStream(tempJar)));
                BufferedInputStream in = null;
                try {
                    Enumeration<JarEntry> entries = jar.entries();
                    JarEntry entry = entries.nextElement();
                    while (entry != null) {
                        JarEntry newEntry = new JarEntry(entry.getName());
                        newEntry.setTime(entry.getTime());
                        in = new BufferedInputStream(jar.getInputStream(entry));
                        jarOut.putNextEntry(newEntry);
                        Utils.transferStreams(in, jarOut, false);
                        jarOut.closeEntry();
                        ((InputStream)in).close();
                        JarEntry jarEntry = entry = entries.hasMoreElements() ? entries.nextElement() : null;
                    }
                }
                finally {
                    Utils.close(jarOut);
                    Utils.close(jar);
                    Utils.close(in);
                }
                tempJar.setLastModified(input.lastModified());
                input.delete();
                tempJar.renameTo(input);
            }
            catch (IOException e) {
                if (!this.verbose) break block10;
                System.out.println("Error normalizing jar " + input.getName());
                e.printStackTrace();
            }
        }
    }
}

