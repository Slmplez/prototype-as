/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.core;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJarEntryResource;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JarEntryResource;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaModelStatus;

public class JarEntryFile
extends JarEntryResource {
    private static final IJarEntryResource[] NO_CHILDREN = new IJarEntryResource[0];

    public JarEntryFile(String simpleName) {
        super(simpleName);
    }

    public JarEntryResource clone(Object newParent) {
        JarEntryFile file = new JarEntryFile(this.simpleName);
        file.setParent(newParent);
        return file;
    }

    public InputStream getContents() throws CoreException {
        ZipFile zipFile = null;
        try {
            String entryName;
            ZipEntry zipEntry;
            zipFile = this.getZipFile();
            if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
                System.out.println("(" + Thread.currentThread() + ") [JarEntryFile.getContents()] Creating ZipFile on " + zipFile.getName());
            }
            if ((zipEntry = zipFile.getEntry(entryName = this.getEntryName())) == null) {
                throw new JavaModelException(new JavaModelStatus(979, entryName));
            }
            byte[] contents = Util.getZipEntryByteContent(zipEntry, zipFile);
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(contents);
            return byteArrayInputStream;
        }
        catch (IOException e) {
            throw new JavaModelException(e, 985);
        }
        finally {
            JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
        }
    }

    public IJarEntryResource[] getChildren() {
        return NO_CHILDREN;
    }

    public boolean isFile() {
        return true;
    }

    public String toString() {
        return "JarEntryFile[" + this.getEntryName() + "]";
    }
}

