/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.ILocalVariable;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMemberValuePair;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.SourceRange;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.eclipse.jdt.internal.compiler.ast.ClassLiteralAccess;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.Literal;
import org.eclipse.jdt.internal.compiler.ast.NullLiteral;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.UnaryExpression;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScanner;
import org.eclipse.jdt.internal.core.Annotation;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.LocalVariable;
import org.eclipse.jdt.internal.core.MemberValuePair;
import org.eclipse.jdt.internal.core.SourceMapper;
import org.eclipse.jdt.internal.core.SourceRefElement;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;
import org.eclipse.jdt.internal.core.util.Util;

public class LocalVariable
extends SourceRefElement
implements ILocalVariable {
    public static final ILocalVariable[] NO_LOCAL_VARIABLES = new ILocalVariable[0];
    String name;
    public int declarationSourceStart;
    public int declarationSourceEnd;
    public int nameStart;
    public int nameEnd;
    String typeSignature;
    public IAnnotation[] annotations;
    private int flags;
    private boolean isParameter;

    public LocalVariable(JavaElement parent, String name, int declarationSourceStart, int declarationSourceEnd, int nameStart, int nameEnd, String typeSignature, org.eclipse.jdt.internal.compiler.ast.Annotation[] astAnnotations, int flags, boolean isParameter) {
        super(parent);
        this.name = name;
        this.declarationSourceStart = declarationSourceStart;
        this.declarationSourceEnd = declarationSourceEnd;
        this.nameStart = nameStart;
        this.nameEnd = nameEnd;
        this.typeSignature = typeSignature;
        this.annotations = this.getAnnotations(astAnnotations);
        this.flags = flags;
        this.isParameter = isParameter;
    }

    protected void closing(Object info) {
    }

    protected Object createElementInfo() {
        return null;
    }

    public boolean equals(Object o) {
        if (!(o instanceof LocalVariable)) {
            return false;
        }
        LocalVariable other = (LocalVariable)o;
        return this.declarationSourceStart == other.declarationSourceStart && this.declarationSourceEnd == other.declarationSourceEnd && this.nameStart == other.nameStart && this.nameEnd == other.nameEnd && super.equals(o);
    }

    public boolean exists() {
        return this.parent.exists();
    }

    protected void generateInfos(Object info, HashMap newElements, IProgressMonitor pm) {
    }

    public IAnnotation getAnnotation(String annotationName) {
        int i = 0;
        int length = this.annotations.length;
        while (i < length) {
            IAnnotation annotation = this.annotations[i];
            if (annotation.getElementName().equals(annotationName)) {
                return annotation;
            }
            ++i;
        }
        return super.getAnnotation(annotationName);
    }

    public IAnnotation[] getAnnotations() throws JavaModelException {
        return this.annotations;
    }

    private IAnnotation[] getAnnotations(org.eclipse.jdt.internal.compiler.ast.Annotation[] astAnnotations) {
        int length;
        if (astAnnotations == null || (length = astAnnotations.length) == 0) {
            return Annotation.NO_ANNOTATIONS;
        }
        IAnnotation[] result = new IAnnotation[length];
        int i = 0;
        while (i < length) {
            result[i] = this.getAnnotation(astAnnotations[i], this);
            ++i;
        }
        return result;
    }

    private IAnnotation getAnnotation(org.eclipse.jdt.internal.compiler.ast.Annotation annotation, JavaElement parentElement) {
        IMemberValuePair[] memberValuePairs;
        int length;
        int typeStart = annotation.type.sourceStart();
        int typeEnd = annotation.type.sourceEnd();
        int sourceStart = annotation.sourceStart();
        int sourceEnd = annotation.declarationSourceEnd;
        String annotationName = new String(CharOperation.concatWith(annotation.type.getTypeName(), '.'));
        class LocalVarAnnotation
        extends Annotation {
            IMemberValuePair[] memberValuePairs;
            final /* synthetic */ LocalVariable this$0;
            private final /* synthetic */ int val$typeStart;
            private final /* synthetic */ int val$typeEnd;
            private final /* synthetic */ int val$sourceStart;
            private final /* synthetic */ int val$sourceEnd;

            public LocalVarAnnotation(LocalVariable localVariable, JavaElement localVar, String elementName, int n, int n2, int n3, int n4) {
                super(localVar, elementName);
                this.this$0 = localVariable;
                this.val$typeStart = n;
                this.val$typeEnd = n2;
                this.val$sourceStart = n3;
                this.val$sourceEnd = n4;
            }

            public IMemberValuePair[] getMemberValuePairs() throws JavaModelException {
                return this.memberValuePairs;
            }

            public ISourceRange getNameRange() throws JavaModelException {
                return new SourceRange(this.val$typeStart, this.val$typeEnd - this.val$typeStart + 1);
            }

            public ISourceRange getSourceRange() throws JavaModelException {
                return new SourceRange(this.val$sourceStart, this.val$sourceEnd - this.val$sourceStart + 1);
            }

            public boolean exists() {
                return this.parent.exists();
            }
        }
        LocalVarAnnotation localVarAnnotation = new LocalVarAnnotation(this, parentElement, annotationName, typeStart, typeEnd, sourceStart, sourceEnd);
        org.eclipse.jdt.internal.compiler.ast.MemberValuePair[] astMemberValuePairs = annotation.memberValuePairs();
        if (astMemberValuePairs == null || (length = astMemberValuePairs.length) == 0) {
            memberValuePairs = Annotation.NO_MEMBER_VALUE_PAIRS;
        } else {
            memberValuePairs = new IMemberValuePair[length];
            int i = 0;
            while (i < length) {
                org.eclipse.jdt.internal.compiler.ast.MemberValuePair astMemberValuePair = astMemberValuePairs[i];
                MemberValuePair memberValuePair = new MemberValuePair(new String(astMemberValuePair.name));
                memberValuePair.value = this.getAnnotationMemberValue(memberValuePair, astMemberValuePair.value, localVarAnnotation);
                memberValuePairs[i] = memberValuePair;
                ++i;
            }
        }
        localVarAnnotation.memberValuePairs = memberValuePairs;
        return localVarAnnotation;
    }

    private Object getAnnotationMemberValue(MemberValuePair memberValuePair, Expression expression, JavaElement parentElement) {
        if (expression instanceof NullLiteral) {
            return null;
        }
        if (expression instanceof Literal) {
            ((Literal)expression).computeConstant();
            return Util.getAnnotationMemberValue(memberValuePair, expression.constant);
        }
        if (expression instanceof org.eclipse.jdt.internal.compiler.ast.Annotation) {
            memberValuePair.valueKind = 10;
            return this.getAnnotation((org.eclipse.jdt.internal.compiler.ast.Annotation)expression, parentElement);
        }
        if (expression instanceof ClassLiteralAccess) {
            ClassLiteralAccess classLiteral = (ClassLiteralAccess)expression;
            char[] typeName = CharOperation.concatWith(classLiteral.type.getTypeName(), '.');
            memberValuePair.valueKind = 11;
            return new String(typeName);
        }
        if (expression instanceof QualifiedNameReference) {
            char[] qualifiedName = CharOperation.concatWith(((QualifiedNameReference)expression).tokens, '.');
            memberValuePair.valueKind = 12;
            return new String(qualifiedName);
        }
        if (expression instanceof SingleNameReference) {
            char[] simpleName = ((SingleNameReference)expression).token;
            if (simpleName == RecoveryScanner.FAKE_IDENTIFIER) {
                memberValuePair.valueKind = 14;
                return null;
            }
            memberValuePair.valueKind = 13;
            return new String(simpleName);
        }
        if (expression instanceof ArrayInitializer) {
            memberValuePair.valueKind = -1;
            Expression[] expressions = ((ArrayInitializer)expression).expressions;
            int length = expressions == null ? 0 : expressions.length;
            Object[] values = new Object[length];
            int i = 0;
            while (i < length) {
                int previousValueKind = memberValuePair.valueKind;
                Object value = this.getAnnotationMemberValue(memberValuePair, expressions[i], parentElement);
                if (previousValueKind != -1 && memberValuePair.valueKind != previousValueKind) {
                    memberValuePair.valueKind = 14;
                }
                values[i] = value;
                ++i;
            }
            if (memberValuePair.valueKind == -1) {
                memberValuePair.valueKind = 14;
            }
            return values;
        }
        if (expression instanceof UnaryExpression) {
            UnaryExpression unaryExpression = (UnaryExpression)expression;
            if ((unaryExpression.bits & 0xFC0) >> 6 == 13 && unaryExpression.expression instanceof Literal) {
                Literal subExpression = (Literal)unaryExpression.expression;
                subExpression.computeConstant();
                return Util.getNegativeAnnotationMemberValue(memberValuePair, subExpression.constant);
            }
            memberValuePair.valueKind = 14;
            return null;
        }
        memberValuePair.valueKind = 14;
        return null;
    }

    public IJavaElement getHandleFromMemento(String token, MementoTokenizer memento, WorkingCopyOwner owner) {
        switch (token.charAt(0)) {
            case '!': {
                return this.getHandleUpdatingCountFromMemento(memento, owner);
            }
        }
        return this;
    }

    protected void getHandleMemento(StringBuffer buff) {
        ((JavaElement)this.getParent()).getHandleMemento(buff);
        buff.append(this.getHandleMementoDelimiter());
        buff.append(this.name);
        buff.append('!');
        buff.append(this.declarationSourceStart);
        buff.append('!');
        buff.append(this.declarationSourceEnd);
        buff.append('!');
        buff.append(this.nameStart);
        buff.append('!');
        buff.append(this.nameEnd);
        buff.append('!');
        this.escapeMementoName(buff, this.typeSignature);
        buff.append('!');
        buff.append(this.flags);
        buff.append('!');
        buff.append(this.isParameter);
        if (this.occurrenceCount > 1) {
            buff.append('!');
            buff.append(this.occurrenceCount);
        }
    }

    protected char getHandleMementoDelimiter() {
        return '@';
    }

    public IResource getCorrespondingResource() {
        return null;
    }

    public IMember getDeclaringMember() {
        return (IMember)((Object)this.parent);
    }

    public String getElementName() {
        return this.name;
    }

    public int getElementType() {
        return 14;
    }

    public int getFlags() {
        if (this.flags == -1) {
            SourceMapper mapper = this.getSourceMapper();
            if (mapper != null) {
                try {
                    ClassFile classFile = (ClassFile)this.getClassFile();
                    if (classFile != null) {
                        classFile.getBuffer();
                        return mapper.getFlags(this);
                    }
                }
                catch (JavaModelException javaModelException) {}
            }
            return 0;
        }
        return this.flags & 0xFFFF;
    }

    public IClassFile getClassFile() {
        IJavaElement element = this.getParent();
        while (element instanceof IMember) {
            element = element.getParent();
        }
        if (element instanceof IClassFile) {
            return (IClassFile)element;
        }
        return null;
    }

    public ISourceRange getNameRange() {
        if (this.nameEnd == -1) {
            SourceMapper mapper = this.getSourceMapper();
            if (mapper != null) {
                try {
                    ClassFile classFile = (ClassFile)this.getClassFile();
                    if (classFile != null) {
                        classFile.getBuffer();
                        return mapper.getNameRange(this);
                    }
                }
                catch (JavaModelException javaModelException) {}
            }
            return SourceMapper.UNKNOWN_RANGE;
        }
        return new SourceRange(this.nameStart, this.nameEnd - this.nameStart + 1);
    }

    public IPath getPath() {
        return this.parent.getPath();
    }

    public IResource resource() {
        return this.parent.resource();
    }

    public String getSource() throws JavaModelException {
        IOpenable openable = this.parent.getOpenableParent();
        IBuffer buffer = openable.getBuffer();
        if (buffer == null) {
            return null;
        }
        ISourceRange range = this.getSourceRange();
        int offset = range.getOffset();
        int length = range.getLength();
        if (offset == -1 || length == 0) {
            return null;
        }
        try {
            return buffer.getText(offset, length);
        }
        catch (RuntimeException runtimeException) {
            return null;
        }
    }

    public ISourceRange getSourceRange() throws JavaModelException {
        if (this.declarationSourceEnd == -1) {
            ClassFile classFile;
            SourceMapper mapper = this.getSourceMapper();
            if (mapper != null && (classFile = (ClassFile)this.getClassFile()) != null) {
                classFile.getBuffer();
                return mapper.getSourceRange(this);
            }
            return SourceMapper.UNKNOWN_RANGE;
        }
        return new SourceRange(this.declarationSourceStart, this.declarationSourceEnd - this.declarationSourceStart + 1);
    }

    public ITypeRoot getTypeRoot() {
        return this.getDeclaringMember().getTypeRoot();
    }

    public String getTypeSignature() {
        return this.typeSignature;
    }

    public IResource getUnderlyingResource() throws JavaModelException {
        return this.parent.getUnderlyingResource();
    }

    public int hashCode() {
        return Util.combineHashCodes(this.parent.hashCode(), this.nameStart);
    }

    public boolean isParameter() {
        return this.isParameter;
    }

    public boolean isStructureKnown() throws JavaModelException {
        return true;
    }

    protected void toStringInfo(int tab, StringBuffer buffer, Object info, boolean showResolvedInfo) {
        buffer.append(this.tabString(tab));
        if (info != NO_INFO) {
            buffer.append(Signature.toString(this.getTypeSignature()));
            buffer.append(" ");
        }
        this.toStringName(buffer);
    }
}

