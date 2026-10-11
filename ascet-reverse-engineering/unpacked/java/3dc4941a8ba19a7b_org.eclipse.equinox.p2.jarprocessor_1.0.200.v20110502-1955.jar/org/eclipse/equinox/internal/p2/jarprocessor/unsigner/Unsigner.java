/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.jarprocessor.unsigner;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.jar.Manifest;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

public class Unsigner {
    private static final String META_INF = "META-INF";
    private static final String DSA_EXT = ".DSA";
    private static final String RSA_EXT = ".RSA";
    private static final String SF_EXT = ".SF";
    private static final String META_INF_PREFIX = "META-INF/";
    private String[] signers;
    private File jarFile;
    private boolean keepManifestContent = false;

    /*
     * Exception decompiling
     */
    private boolean isSigned(File file) {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [20[WHILELOOP]], but top level block is 2[TRYBLOCK]
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:435)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:484)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    public void execute() {
        this.processJar(this.jarFile);
    }

    private void processJar(File inputFile) {
        if (!this.isSigned(inputFile)) {
            return;
        }
        try {
            ZipInputStream input = new ZipInputStream(new BufferedInputStream(new FileInputStream(inputFile)));
            File outputFile = File.createTempFile("removing.", ".signature", inputFile.getParentFile());
            ZipOutputStream output = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(outputFile)));
            ZipEntry inputZe = input.getNextEntry();
            byte[] b = new byte[8192];
            while (inputZe != null) {
                byte remove = this.shouldRemove(inputZe);
                if (remove == 2) {
                    inputZe = input.getNextEntry();
                    continue;
                }
                if (remove == 1) {
                    output.putNextEntry(new ZipEntry(inputZe.getName()));
                    Manifest m = new Manifest();
                    m.read(input);
                    m.getEntries().clear();
                    m.write(output);
                } else {
                    output.putNextEntry(inputZe);
                    while (input.available() != 0) {
                        int read = input.read(b);
                        if (read == -1) continue;
                        output.write(b, 0, read);
                    }
                }
                output.closeEntry();
                input.closeEntry();
                inputZe = input.getNextEntry();
            }
            output.close();
            input.close();
            inputFile.delete();
            outputFile.renameTo(inputFile);
        }
        catch (FileNotFoundException fileNotFoundException) {
        }
        catch (IOException e) {
            e.printStackTrace();
        }
    }

    private byte shouldRemove(ZipEntry entry) {
        String entryName = entry.getName();
        if (!this.keepManifestContent && entryName.equalsIgnoreCase("META-INF/MANIFEST.MF")) {
            return 1;
        }
        if (this.signers != null) {
            int i = 0;
            while (i < this.signers.length) {
                if (entryName.equalsIgnoreCase(META_INF_PREFIX + this.signers[i] + SF_EXT) || entryName.equalsIgnoreCase(META_INF_PREFIX + this.signers[i] + RSA_EXT) || entryName.equalsIgnoreCase(META_INF_PREFIX + this.signers[i] + DSA_EXT)) {
                    return 2;
                }
                ++i;
            }
        } else if (entryName.startsWith(META_INF) && (entryName.endsWith(SF_EXT) || entryName.endsWith(RSA_EXT) || entryName.endsWith(DSA_EXT))) {
            return 2;
        }
        return 0;
    }

    public void setRemoveSigners(String[] fileName) {
        this.signers = fileName;
    }

    public void setJar(File file) {
        this.jarFile = file;
    }

    public void setKeepManifestEntries(boolean keep) {
        this.keepManifestContent = keep;
    }
}

