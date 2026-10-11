/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.core.Annotation;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.NamedMember;
import org.eclipse.jdt.internal.core.SourceMapper;
import org.eclipse.jdt.internal.core.util.Util;

public abstract class BinaryMember
extends NamedMember {
    protected BinaryMember(JavaElement parent, String name) {
        super(parent, name);
    }

    public void copy(IJavaElement container, IJavaElement sibling, String rename, boolean force, IProgressMonitor monitor) throws JavaModelException {
        throw new JavaModelException(new JavaModelStatus(976, this));
    }

    protected IAnnotation[] getAnnotations(IBinaryAnnotation[] binaryAnnotations, long tagBits) {
        IAnnotation[] standardAnnotations = this.getStandardAnnotations(tagBits);
        if (binaryAnnotations == null) {
            return standardAnnotations;
        }
        int length = binaryAnnotations.length;
        int standardLength = standardAnnotations.length;
        int fullLength = length + standardLength;
        if (fullLength == 0) {
            return Annotation.NO_ANNOTATIONS;
        }
        IAnnotation[] annotations = new IAnnotation[fullLength];
        int i = 0;
        while (i < length) {
            annotations[i] = Util.getAnnotation(this, binaryAnnotations[i], null);
            ++i;
        }
        System.arraycopy(standardAnnotations, 0, annotations, length, standardLength);
        return annotations;
    }

    private IAnnotation getAnnotation(char[][] annotationName) {
        return new Annotation(this, new String(CharOperation.concatWith(annotationName, '.')));
    }

    protected IAnnotation[] getStandardAnnotations(long tagBits) {
        if ((tagBits & 0x1FFFF800000000L) == 0L) {
            return Annotation.NO_ANNOTATIONS;
        }
        ArrayList<IAnnotation> annotations = new ArrayList<IAnnotation>();
        if ((tagBits & 0xFF800000000L) != 0L) {
            annotations.add(this.getAnnotation(TypeConstants.JAVA_LANG_ANNOTATION_TARGET));
        }
        if ((tagBits & 0x300000000000L) != 0L) {
            annotations.add(this.getAnnotation(TypeConstants.JAVA_LANG_ANNOTATION_RETENTION));
        }
        if ((tagBits & 0x400000000000L) != 0L) {
            annotations.add(this.getAnnotation(TypeConstants.JAVA_LANG_DEPRECATED));
        }
        if ((tagBits & 0x800000000000L) != 0L) {
            annotations.add(this.getAnnotation(TypeConstants.JAVA_LANG_ANNOTATION_DOCUMENTED));
        }
        if ((tagBits & 0x1000000000000L) != 0L) {
            annotations.add(this.getAnnotation(TypeConstants.JAVA_LANG_ANNOTATION_INHERITED));
        }
        if ((tagBits & 0x10000000000000L) != 0L) {
            annotations.add(this.getAnnotation(TypeConstants.JAVA_LANG_INVOKE_METHODHANDLE_$_POLYMORPHICSIGNATURE));
        }
        if ((tagBits & 0x8000000000000L) != 0L) {
            annotations.add(this.getAnnotation(TypeConstants.JAVA_LANG_SAFEVARARGS));
        }
        return annotations.toArray(new IAnnotation[annotations.size()]);
    }

    public String[] getCategories() throws JavaModelException {
        SourceMapper mapper = this.getSourceMapper();
        if (mapper != null) {
            String[] categories;
            ((ClassFile)this.getClassFile()).getBuffer();
            if (mapper.categories != null && (categories = (String[])mapper.categories.get(this)) != null) {
                return categories;
            }
        }
        return CharOperation.NO_STRINGS;
    }

    public String getKey() {
        try {
            return this.getKey(false);
        }
        catch (JavaModelException javaModelException) {
            return null;
        }
    }

    public abstract String getKey(boolean var1) throws JavaModelException;

    public ISourceRange getNameRange() throws JavaModelException {
        SourceMapper mapper = this.getSourceMapper();
        if (mapper != null) {
            ((ClassFile)this.getClassFile()).getBuffer();
            return mapper.getNameRange(this);
        }
        return SourceMapper.UNKNOWN_RANGE;
    }

    public ISourceRange getSourceRange() throws JavaModelException {
        SourceMapper mapper = this.getSourceMapper();
        if (mapper != null) {
            ((ClassFile)this.getClassFile()).getBuffer();
            return mapper.getSourceRange(this);
        }
        return SourceMapper.UNKNOWN_RANGE;
    }

    public boolean isBinary() {
        return true;
    }

    public boolean isStructureKnown() throws JavaModelException {
        return ((IJavaElement)((Object)this.getOpenableParent())).isStructureKnown();
    }

    public void move(IJavaElement container, IJavaElement sibling, String rename, boolean force, IProgressMonitor monitor) throws JavaModelException {
        throw new JavaModelException(new JavaModelStatus(976, this));
    }

    public void rename(String newName, boolean force, IProgressMonitor monitor) throws JavaModelException {
        throw new JavaModelException(new JavaModelStatus(976, this));
    }

    public void setContents(String contents, IProgressMonitor monitor) throws JavaModelException {
        throw new JavaModelException(new JavaModelStatus(976, this));
    }
}

