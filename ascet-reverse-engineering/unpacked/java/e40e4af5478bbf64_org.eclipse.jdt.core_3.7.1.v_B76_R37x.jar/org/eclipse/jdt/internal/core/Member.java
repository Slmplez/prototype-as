/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import java.util.HashMap;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.SourceRange;
import org.eclipse.jdt.core.ToolFactory;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.IScanner;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.core.Annotation;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.LocalVariable;
import org.eclipse.jdt.internal.core.MemberElementInfo;
import org.eclipse.jdt.internal.core.SourceRefElement;
import org.eclipse.jdt.internal.core.SourceType;
import org.eclipse.jdt.internal.core.SourceTypeElementInfo;
import org.eclipse.jdt.internal.core.TypeParameter;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;

public abstract class Member
extends SourceRefElement
implements IMember {
    protected Member(JavaElement parent) {
        super(parent);
    }

    protected static boolean areSimilarMethods(String name1, String[] params1, String name2, String[] params2, String[] simpleNames1) {
        int params1Length;
        if (name1.equals(name2) && (params1Length = params1.length) == params2.length) {
            int i = 0;
            while (i < params1Length) {
                String simpleName2;
                String simpleName1 = simpleNames1 == null ? Signature.getSimpleName(Signature.toString(Signature.getTypeErasure(params1[i]))) : simpleNames1[i];
                if (!simpleName1.equals(simpleName2 = Signature.getSimpleName(Signature.toString(Signature.getTypeErasure(params2[i]))))) {
                    return false;
                }
                ++i;
            }
            return true;
        }
        return false;
    }

    protected static Object convertConstant(Constant constant) {
        if (constant == null) {
            return null;
        }
        if (constant == Constant.NotAConstant) {
            return null;
        }
        switch (constant.typeID()) {
            case 5: {
                return constant.booleanValue() ? Boolean.TRUE : Boolean.FALSE;
            }
            case 3: {
                return new Byte(constant.byteValue());
            }
            case 2: {
                return new Character(constant.charValue());
            }
            case 8: {
                return new Double(constant.doubleValue());
            }
            case 9: {
                return new Float(constant.floatValue());
            }
            case 10: {
                return new Integer(constant.intValue());
            }
            case 7: {
                return new Long(constant.longValue());
            }
            case 4: {
                return new Short(constant.shortValue());
            }
            case 11: {
                return constant.stringValue();
            }
        }
        return null;
    }

    public static IMethod[] findMethods(IMethod method, IMethod[] methods) {
        String elementName = method.getElementName();
        String[] parameters = method.getParameterTypes();
        int paramLength = parameters.length;
        String[] simpleNames = new String[paramLength];
        int i = 0;
        while (i < paramLength) {
            String erasure = Signature.getTypeErasure(parameters[i]);
            simpleNames[i] = Signature.getSimpleName(Signature.toString(erasure));
            ++i;
        }
        ArrayList<IMethod> list = new ArrayList<IMethod>();
        int i2 = 0;
        int length = methods.length;
        while (i2 < length) {
            IMethod existingMethod = methods[i2];
            if (Member.areSimilarMethods(elementName, parameters, existingMethod.getElementName(), existingMethod.getParameterTypes(), simpleNames)) {
                list.add(existingMethod);
            }
            ++i2;
        }
        int size = list.size();
        if (size == 0) {
            return null;
        }
        IMethod[] result = new IMethod[size];
        list.toArray(result);
        return result;
    }

    public String[] getCategories() throws JavaModelException {
        IType type = (IType)this.getAncestor(7);
        if (type == null) {
            return CharOperation.NO_STRINGS;
        }
        if (type.isBinary()) {
            return CharOperation.NO_STRINGS;
        }
        SourceTypeElementInfo info = (SourceTypeElementInfo)((SourceType)type).getElementInfo();
        HashMap map = info.getCategories();
        if (map == null) {
            return CharOperation.NO_STRINGS;
        }
        String[] categories = (String[])map.get(this);
        if (categories == null) {
            return CharOperation.NO_STRINGS;
        }
        return categories;
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

    public IType getDeclaringType() {
        JavaElement parentElement = (JavaElement)this.getParent();
        if (parentElement.getElementType() == 7) {
            return (IType)((Object)parentElement);
        }
        return null;
    }

    public int getFlags() throws JavaModelException {
        MemberElementInfo info = (MemberElementInfo)this.getElementInfo();
        return info.getModifiers();
    }

    public IJavaElement getHandleFromMemento(String token, MementoTokenizer memento, WorkingCopyOwner workingCopyOwner) {
        switch (token.charAt(0)) {
            case '!': {
                return this.getHandleUpdatingCountFromMemento(memento, workingCopyOwner);
            }
            case '[': {
                String typeName;
                if (memento.hasMoreTokens()) {
                    typeName = memento.nextToken();
                    char firstChar = typeName.charAt(0);
                    if (firstChar == '^' || firstChar == '|' || firstChar == '~' || firstChar == '[' || firstChar == '!') {
                        token = typeName;
                        typeName = "";
                    } else {
                        token = null;
                    }
                } else {
                    typeName = "";
                    token = null;
                }
                JavaElement type = (JavaElement)((Object)this.getType(typeName, 1));
                if (token == null) {
                    return type.getHandleFromMemento(memento, workingCopyOwner);
                }
                return type.getHandleFromMemento(token, memento, workingCopyOwner);
            }
            case '@': {
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                String varName = memento.nextToken();
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                memento.nextToken();
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                int declarationStart = Integer.parseInt(memento.nextToken());
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                memento.nextToken();
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                int declarationEnd = Integer.parseInt(memento.nextToken());
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                memento.nextToken();
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                int nameStart = Integer.parseInt(memento.nextToken());
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                memento.nextToken();
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                int nameEnd = Integer.parseInt(memento.nextToken());
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                memento.nextToken();
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                String typeSignature = memento.nextToken();
                memento.nextToken();
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                int flags = Integer.parseInt(memento.nextToken());
                memento.nextToken();
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                boolean isParameter = Boolean.valueOf(memento.nextToken());
                return new LocalVariable(this, varName, declarationStart, declarationEnd, nameStart, nameEnd, typeSignature, null, flags, isParameter);
            }
            case ']': {
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                String typeParameterName = memento.nextToken();
                TypeParameter typeParameter = new TypeParameter(this, typeParameterName);
                return typeParameter.getHandleFromMemento(memento, workingCopyOwner);
            }
            case '}': {
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                String annotationName = memento.nextToken();
                Annotation annotation = new Annotation(this, annotationName);
                return annotation.getHandleFromMemento(memento, workingCopyOwner);
            }
        }
        return null;
    }

    protected char getHandleMementoDelimiter() {
        return '[';
    }

    /*
     * WARNING - void declaration
     * Enabled aggressive block sorting
     */
    public Member getOuterMostLocalContext() {
        Member member = this;
        Member lastLocalContext = null;
        while (true) {
            void var1_2;
            switch (var1_2.getElementType()) {
                case 5: 
                case 6: {
                    return lastLocalContext;
                }
                case 7: {
                    break;
                }
                case 8: 
                case 9: 
                case 10: {
                    lastLocalContext = (Member)var1_2;
                }
            }
            IJavaElement iJavaElement = var1_2.getParent();
        }
    }

    public ISourceRange getJavadocRange() throws JavaModelException {
        ISourceRange range = this.getSourceRange();
        if (range == null) {
            return null;
        }
        IBuffer buf = null;
        if (this.isBinary()) {
            buf = this.getClassFile().getBuffer();
        } else {
            ICompilationUnit compilationUnit = this.getCompilationUnit();
            if (!compilationUnit.isConsistent()) {
                return null;
            }
            buf = compilationUnit.getBuffer();
        }
        int start = range.getOffset();
        int length = range.getLength();
        if (length > 0 && buf.getChar(start) == '/') {
            IScanner scanner = ToolFactory.createScanner(true, false, false, false);
            try {
                scanner.setSource(buf.getText(start, length).toCharArray());
                int docOffset = -1;
                int docEnd = -1;
                int terminal = scanner.getNextToken();
                block7: while (true) {
                    switch (terminal) {
                        case 1003: {
                            docOffset = scanner.getCurrentTokenStartPosition();
                            docEnd = scanner.getCurrentTokenEndPosition() + 1;
                            terminal = scanner.getNextToken();
                            continue block7;
                        }
                        case 1001: 
                        case 1002: {
                            terminal = scanner.getNextToken();
                            continue block7;
                        }
                    }
                    break;
                }
                if (docOffset != -1) {
                    return new SourceRange(docOffset + start, docEnd - docOffset);
                }
            }
            catch (InvalidInputException invalidInputException) {
            }
            catch (IndexOutOfBoundsException indexOutOfBoundsException) {}
        }
        return null;
    }

    public ISourceRange getNameRange() throws JavaModelException {
        MemberElementInfo info = (MemberElementInfo)this.getElementInfo();
        return new SourceRange(info.getNameSourceStart(), info.getNameSourceEnd() - info.getNameSourceStart() + 1);
    }

    public IType getType(String typeName, int count) {
        if (this.isBinary()) {
            throw new IllegalArgumentException("Not a source member " + this.toStringWithAncestors());
        }
        SourceType type = new SourceType(this, typeName);
        type.occurrenceCount = count;
        return type;
    }

    public ITypeRoot getTypeRoot() {
        IJavaElement element = this.getParent();
        while (element instanceof IMember) {
            element = element.getParent();
        }
        return (ITypeRoot)element;
    }

    public boolean isBinary() {
        return false;
    }

    protected boolean isMainMethod(IMethod method) throws JavaModelException {
        String[] paramTypes;
        int flags;
        if ("main".equals(method.getElementName()) && "V".equals(method.getReturnType()) && Flags.isStatic(flags = method.getFlags()) && Flags.isPublic(flags) && (paramTypes = method.getParameterTypes()).length == 1) {
            String typeSignature = Signature.toString(paramTypes[0]);
            return "String[]".equals(Signature.getSimpleName(typeSignature));
        }
        return false;
    }

    public boolean isReadOnly() {
        return this.getClassFile() != null;
    }

    public String readableName() {
        IType declaringType = this.getDeclaringType();
        if (declaringType != null) {
            String declaringName = ((JavaElement)((Object)this.getDeclaringType())).readableName();
            StringBuffer buffer = new StringBuffer(declaringName);
            buffer.append('.');
            buffer.append(this.getElementName());
            return buffer.toString();
        }
        return super.readableName();
    }
}

