/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.batch;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import org.eclipse.jdt.internal.compiler.batch.ClasspathJar;
import org.eclipse.jdt.internal.compiler.batch.CompilationUnit;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.util.Util;

public class ClasspathSourceJar
extends ClasspathJar {
    private String encoding;

    public ClasspathSourceJar(File file, boolean closeZipFileAtEnd, AccessRuleSet accessRuleSet, String encoding, String destinationPath) {
        super(file, closeZipFileAtEnd, accessRuleSet, destinationPath);
        this.encoding = encoding;
    }

    public NameEnvironmentAnswer findClass(char[] typeName, String qualifiedPackageName, String qualifiedBinaryFileName, boolean asBinaryOnly) {
        if (!this.isPackage(qualifiedPackageName)) {
            return null;
        }
        ZipEntry sourceEntry = this.zipFile.getEntry(String.valueOf(qualifiedBinaryFileName.substring(0, qualifiedBinaryFileName.length() - 6)) + ".java");
        if (sourceEntry != null) {
            try {
                InputStream stream = null;
                char[] contents = null;
                try {
                    stream = this.zipFile.getInputStream(sourceEntry);
                    contents = Util.getInputStreamAsCharArray(stream, -1, this.encoding);
                }
                finally {
                    if (stream != null) {
                        stream.close();
                    }
                }
                return new NameEnvironmentAnswer(new CompilationUnit(contents, String.valueOf(qualifiedBinaryFileName.substring(0, qualifiedBinaryFileName.length() - 6)) + ".java", this.encoding, this.destinationPath), this.fetchAccessRestriction(qualifiedBinaryFileName));
            }
            catch (IOException iOException) {}
        }
        return null;
    }

    public NameEnvironmentAnswer findClass(char[] typeName, String qualifiedPackageName, String qualifiedBinaryFileName) {
        return this.findClass(typeName, qualifiedPackageName, qualifiedBinaryFileName, false);
    }

    public int getMode() {
        return 1;
    }
}

