/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.ToolFactory;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.util.IClassFileReader;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.BufferManager;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.DefaultWorkingCopyOwner;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.util.Disassembler;
import org.eclipse.jdt.internal.core.util.Util;

public class ClassFileWorkingCopy
extends CompilationUnit {
    public ClassFile classFile;

    public ClassFileWorkingCopy(ClassFile classFile, WorkingCopyOwner owner) {
        super((PackageFragment)classFile.getParent(), ((BinaryType)classFile.getType()).getSourceFileName(null), owner);
        this.classFile = classFile;
    }

    public void commitWorkingCopy(boolean force, IProgressMonitor monitor) throws JavaModelException {
        throw new JavaModelException(new JavaModelStatus(967, this));
    }

    public IBuffer getBuffer() throws JavaModelException {
        if (this.isWorkingCopy()) {
            return super.getBuffer();
        }
        return this.classFile.getBuffer();
    }

    public char[] getContents() {
        try {
            IBuffer buffer = this.getBuffer();
            if (buffer == null) {
                return CharOperation.NO_CHAR;
            }
            char[] characters = buffer.getCharacters();
            if (characters == null) {
                return CharOperation.NO_CHAR;
            }
            return characters;
        }
        catch (JavaModelException javaModelException) {
            return CharOperation.NO_CHAR;
        }
    }

    public IPath getPath() {
        return this.classFile.getPath();
    }

    public IJavaElement getPrimaryElement(boolean checkOwner) {
        if (checkOwner && this.isPrimary()) {
            return this;
        }
        return new ClassFileWorkingCopy(this.classFile, DefaultWorkingCopyOwner.PRIMARY);
    }

    public IResource resource(PackageFragmentRoot root) {
        if (root.isArchive()) {
            return root.resource(root);
        }
        return this.classFile.resource(root);
    }

    protected IBuffer openBuffer(IProgressMonitor pm, Object info) throws JavaModelException {
        IBuffer buffer = this.owner.createBuffer(this);
        if (buffer == null) {
            return null;
        }
        if (buffer.getCharacters() == null) {
            IBuffer classFileBuffer = this.classFile.getBuffer();
            if (classFileBuffer != null) {
                buffer.setContents(classFileBuffer.getCharacters());
            } else {
                IClassFileReader reader = ToolFactory.createDefaultClassFileReader(this.classFile, 65535);
                Disassembler disassembler = new Disassembler();
                String contents = disassembler.disassemble(reader, Util.getLineSeparator("", this.getJavaProject()), 16);
                buffer.setContents(contents);
            }
        }
        BufferManager bufManager = this.getBufferManager();
        bufManager.addBuffer(buffer);
        buffer.addBufferChangedListener(this);
        return buffer;
    }

    protected void toStringName(StringBuffer buffer) {
        buffer.append(this.classFile.getElementName());
    }
}

