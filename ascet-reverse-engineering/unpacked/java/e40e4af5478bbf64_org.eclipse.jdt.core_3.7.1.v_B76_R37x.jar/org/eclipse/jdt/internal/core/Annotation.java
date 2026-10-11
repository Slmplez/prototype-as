/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMemberValuePair;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.SourceRange;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryElementValuePair;
import org.eclipse.jdt.internal.core.AnnotationInfo;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.MemberValuePair;
import org.eclipse.jdt.internal.core.SourceMapper;
import org.eclipse.jdt.internal.core.SourceRefElement;
import org.eclipse.jdt.internal.core.util.Util;

public class Annotation
extends SourceRefElement
implements IAnnotation {
    public static final IAnnotation[] NO_ANNOTATIONS = new IAnnotation[0];
    public static final IMemberValuePair[] NO_MEMBER_VALUE_PAIRS = new IMemberValuePair[0];
    protected String name;
    protected String memberValuePairName;

    public Annotation(JavaElement parent, String name) {
        this(parent, name, null);
    }

    public Annotation(JavaElement parent, String name, String memberValuePairName) {
        super(parent);
        this.name = name;
        this.memberValuePairName = memberValuePairName;
    }

    public boolean equals(Object o) {
        if (!(o instanceof Annotation)) {
            return false;
        }
        Annotation other = (Annotation)o;
        if (this.memberValuePairName == null ? other.memberValuePairName != null : !this.memberValuePairName.equals(other.memberValuePairName)) {
            return false;
        }
        return super.equals(o);
    }

    public IMember getDeclaringMember() {
        return (IMember)this.getParent();
    }

    public String getElementName() {
        return this.name;
    }

    public int getElementType() {
        return 16;
    }

    protected char getHandleMementoDelimiter() {
        return '}';
    }

    public IMemberValuePair[] getMemberValuePairs() throws JavaModelException {
        Object info = this.getElementInfo();
        if (info instanceof AnnotationInfo) {
            return ((AnnotationInfo)info).members;
        }
        IBinaryElementValuePair[] binaryAnnotations = ((IBinaryAnnotation)info).getElementValuePairs();
        int length = binaryAnnotations.length;
        IMemberValuePair[] result = new IMemberValuePair[length];
        int i = 0;
        while (i < length) {
            IBinaryElementValuePair binaryAnnotation = binaryAnnotations[i];
            MemberValuePair memberValuePair = new MemberValuePair(new String(binaryAnnotation.getName()));
            memberValuePair.value = Util.getAnnotationMemberValue(this, memberValuePair, binaryAnnotation.getValue());
            result[i] = memberValuePair;
            ++i;
        }
        return result;
    }

    public ISourceRange getNameRange() throws JavaModelException {
        ClassFile classFile;
        SourceMapper mapper = this.getSourceMapper();
        if (mapper != null && (classFile = (ClassFile)this.getClassFile()) != null) {
            classFile.getBuffer();
            return mapper.getNameRange(this);
        }
        Object info = this.getElementInfo();
        if (info instanceof AnnotationInfo) {
            AnnotationInfo annotationInfo = (AnnotationInfo)info;
            return new SourceRange(annotationInfo.nameStart, annotationInfo.nameEnd - annotationInfo.nameStart + 1);
        }
        return null;
    }

    public ISourceRange getSourceRange() throws JavaModelException {
        ClassFile classFile;
        SourceMapper mapper = this.getSourceMapper();
        if (mapper != null && (classFile = (ClassFile)this.getClassFile()) != null) {
            classFile.getBuffer();
            return mapper.getSourceRange(this);
        }
        return super.getSourceRange();
    }

    public IClassFile getClassFile() {
        return ((JavaElement)this.getParent()).getClassFile();
    }

    public int hashCode() {
        int result = super.hashCode();
        result = 31 * result + (this.memberValuePairName == null ? 0 : this.memberValuePairName.hashCode());
        result = 31 * result + this.name.hashCode();
        return result;
    }

    protected void toStringName(StringBuffer buffer) {
        buffer.append('@');
        buffer.append(this.getElementName());
    }
}

