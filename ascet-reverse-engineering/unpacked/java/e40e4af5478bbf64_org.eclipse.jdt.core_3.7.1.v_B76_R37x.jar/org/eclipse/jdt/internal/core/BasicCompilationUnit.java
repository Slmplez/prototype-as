/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.core;

import java.io.File;
import java.io.IOException;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.util.Util;

public class BasicCompilationUnit
implements ICompilationUnit {
    protected char[] contents;
    protected char[] fileName;
    protected char[][] packageName;
    protected char[] mainTypeName;
    protected String encoding;

    public BasicCompilationUnit(char[] contents, char[][] packageName, String fileName) {
        this.contents = contents;
        this.fileName = fileName.toCharArray();
        this.packageName = packageName;
    }

    public BasicCompilationUnit(char[] contents, char[][] packageName, String fileName, String encoding) {
        this(contents, packageName, fileName);
        this.encoding = encoding;
    }

    public BasicCompilationUnit(char[] contents, char[][] packageName, String fileName, IJavaElement javaElement) {
        this(contents, packageName, fileName);
        this.initEncoding(javaElement);
    }

    private void initEncoding(IJavaElement javaElement) {
        if (javaElement != null) {
            try {
                IJavaProject javaProject = javaElement.getJavaProject();
                switch (javaElement.getElementType()) {
                    case 5: {
                        IFile file = (IFile)javaElement.getResource();
                        if (file != null) {
                            this.encoding = file.getCharset();
                            break;
                        }
                    }
                    default: {
                        IProject project = (IProject)javaProject.getResource();
                        if (project != null) {
                            this.encoding = project.getDefaultCharset();
                        }
                        break;
                    }
                }
            }
            catch (CoreException coreException) {
                this.encoding = null;
            }
        } else {
            this.encoding = null;
        }
    }

    public char[] getContents() {
        if (this.contents != null) {
            return this.contents;
        }
        try {
            return Util.getFileCharContent(new File(new String(this.fileName)), this.encoding);
        }
        catch (IOException iOException) {
            return CharOperation.NO_CHAR;
        }
    }

    public char[] getFileName() {
        return this.fileName;
    }

    public char[] getMainTypeName() {
        if (this.mainTypeName == null) {
            int end;
            int separator;
            int start = CharOperation.lastIndexOf('/', this.fileName) + 1;
            if (start == 0 || start < CharOperation.lastIndexOf('\\', this.fileName)) {
                start = CharOperation.lastIndexOf('\\', this.fileName) + 1;
            }
            if ((separator = CharOperation.indexOf('|', this.fileName) + 1) > start) {
                start = separator;
            }
            if (!((end = CharOperation.lastIndexOf('$', this.fileName)) != -1 && Util.isClassFileName(this.fileName) || (end = CharOperation.lastIndexOf('.', this.fileName)) != -1)) {
                end = this.fileName.length;
            }
            this.mainTypeName = CharOperation.subarray(this.fileName, start, end);
        }
        return this.mainTypeName;
    }

    public char[][] getPackageName() {
        return this.packageName;
    }

    public String toString() {
        return "CompilationUnit: " + new String(this.fileName);
    }
}

