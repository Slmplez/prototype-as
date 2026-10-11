/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.core.util;

import java.net.URI;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.batch.CompilationUnit;
import org.eclipse.jdt.internal.core.util.Util;

public class ResourceCompilationUnit
extends CompilationUnit {
    private IFile file;

    public ResourceCompilationUnit(IFile file, URI location) {
        super(null, location == null ? file.getFullPath().toString() : location.getPath(), null);
        this.file = file;
    }

    public char[] getContents() {
        if (this.contents != null) {
            return this.contents;
        }
        try {
            return Util.getResourceContentsAsCharArray(this.file);
        }
        catch (CoreException coreException) {
            return CharOperation.NO_CHAR;
        }
    }
}

