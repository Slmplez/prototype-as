/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.ILocalVariable;
import org.eclipse.jdt.core.IMemberValuePair;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.core.BinaryMember;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavadocContents;
import org.eclipse.jdt.internal.core.LocalVariable;
import org.eclipse.jdt.internal.core.MemberValuePair;
import org.eclipse.jdt.internal.core.ResolvedBinaryMethod;
import org.eclipse.jdt.internal.core.SourceMapper;
import org.eclipse.jdt.internal.core.TypeParameter;
import org.eclipse.jdt.internal.core.util.LRUCache;
import org.eclipse.jdt.internal.core.util.Util;

class BinaryMethod
extends BinaryMember
implements IMethod {
    protected String[] parameterTypes;
    protected String[] erasedParamaterTypes;
    protected String[] parameterNames;
    protected String[] exceptionTypes;
    protected String returnType;

    protected BinaryMethod(JavaElement parent, String name, String[] paramTypes) {
        super(parent, name);
        this.parameterTypes = paramTypes == null ? CharOperation.NO_STRINGS : paramTypes;
    }

    public boolean equals(Object o) {
        if (!(o instanceof BinaryMethod)) {
            return false;
        }
        return super.equals(o) && Util.equalArraysOrNull(this.getErasedParameterTypes(), ((BinaryMethod)o).getErasedParameterTypes());
    }

    public IAnnotation[] getAnnotations() throws JavaModelException {
        IBinaryMethod info = (IBinaryMethod)this.getElementInfo();
        IBinaryAnnotation[] binaryAnnotations = info.getAnnotations();
        return this.getAnnotations(binaryAnnotations, info.getTagBits());
    }

    public ILocalVariable[] getParameters() throws JavaModelException {
        IBinaryMethod info = (IBinaryMethod)this.getElementInfo();
        int length = this.parameterTypes.length;
        if (length == 0) {
            return LocalVariable.NO_LOCAL_VARIABLES;
        }
        ILocalVariable[] localVariables = new ILocalVariable[length];
        Object argumentNames = info.getArgumentNames();
        if (argumentNames == null || ((char[][])argumentNames).length < length) {
            argumentNames = new char[length][];
            int j = 0;
            while (j < length) {
                argumentNames[j] = ("arg" + j).toCharArray();
                ++j;
            }
        }
        int i = 0;
        while (i < length) {
            LocalVariable localVariable = new LocalVariable(this, new String(argumentNames[i]), 0, -1, 0, -1, this.parameterTypes[i], null, -1, true);
            localVariables[i] = localVariable;
            IAnnotation[] annotations = this.getAnnotations(localVariable, info.getParameterAnnotations(i), info.getTagBits());
            localVariable.annotations = annotations;
            ++i;
        }
        return localVariables;
    }

    private IAnnotation[] getAnnotations(JavaElement annotationParent, IBinaryAnnotation[] binaryAnnotations, long tagBits) {
        IAnnotation[] standardAnnotations = this.getStandardAnnotations(tagBits);
        if (binaryAnnotations == null) {
            return standardAnnotations;
        }
        int length = binaryAnnotations.length;
        int standardLength = standardAnnotations.length;
        IAnnotation[] annotations = new IAnnotation[length + standardLength];
        int i = 0;
        while (i < length) {
            annotations[i] = Util.getAnnotation(annotationParent, binaryAnnotations[i], null);
            ++i;
        }
        System.arraycopy(standardAnnotations, 0, annotations, length, standardLength);
        return annotations;
    }

    public IMemberValuePair getDefaultValue() throws JavaModelException {
        IBinaryMethod info = (IBinaryMethod)this.getElementInfo();
        Object defaultValue = info.getDefaultValue();
        if (defaultValue == null) {
            return null;
        }
        MemberValuePair memberValuePair = new MemberValuePair(this.getElementName());
        memberValuePair.value = Util.getAnnotationMemberValue(this, memberValuePair, defaultValue);
        return memberValuePair;
    }

    public String[] getExceptionTypes() throws JavaModelException {
        if (this.exceptionTypes == null) {
            IBinaryMethod info = (IBinaryMethod)this.getElementInfo();
            char[] genericSignature = info.getGenericSignature();
            if (genericSignature != null) {
                char[] dotBasedSignature = CharOperation.replaceOnCopy(genericSignature, '/', '.');
                this.exceptionTypes = Signature.getThrownExceptionTypes(new String(dotBasedSignature));
            }
            if (this.exceptionTypes == null || this.exceptionTypes.length == 0) {
                char[][] eTypeNames = info.getExceptionTypeNames();
                if (eTypeNames == null || eTypeNames.length == 0) {
                    this.exceptionTypes = CharOperation.NO_STRINGS;
                } else {
                    eTypeNames = ClassFile.translatedNames(eTypeNames);
                    this.exceptionTypes = new String[eTypeNames.length];
                    int j = 0;
                    int length = eTypeNames.length;
                    while (j < length) {
                        int nameLength = eTypeNames[j].length;
                        char[] convertedName = new char[nameLength + 2];
                        System.arraycopy(eTypeNames[j], 0, convertedName, 1, nameLength);
                        convertedName[0] = 76;
                        convertedName[nameLength + 1] = 59;
                        this.exceptionTypes[j] = new String(convertedName);
                        ++j;
                    }
                }
            }
        }
        return this.exceptionTypes;
    }

    public int getElementType() {
        return 9;
    }

    public int getFlags() throws JavaModelException {
        IBinaryMethod info = (IBinaryMethod)this.getElementInfo();
        return info.getModifiers();
    }

    protected void getHandleMemento(StringBuffer buff) {
        ((JavaElement)this.getParent()).getHandleMemento(buff);
        char delimiter = this.getHandleMementoDelimiter();
        buff.append(delimiter);
        this.escapeMementoName(buff, this.getElementName());
        int i = 0;
        while (i < this.parameterTypes.length) {
            buff.append(delimiter);
            this.escapeMementoName(buff, this.parameterTypes[i]);
            ++i;
        }
        if (this.occurrenceCount > 1) {
            buff.append('!');
            buff.append(this.occurrenceCount);
        }
    }

    protected char getHandleMementoDelimiter() {
        return '~';
    }

    public String getKey(boolean forceOpen) throws JavaModelException {
        return this.getKey(this, forceOpen);
    }

    public int getNumberOfParameters() {
        return this.parameterTypes == null ? 0 : this.parameterTypes.length;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String[] getParameterNames() throws JavaModelException {
        IType declaringType;
        if (this.parameterNames != null) {
            return this.parameterNames;
        }
        IType type = (IType)this.getParent();
        SourceMapper mapper = this.getSourceMapper();
        if (mapper != null) {
            char[][] paramNames = mapper.getMethodParameterNames(this);
            if (paramNames == null) {
                IBinaryType info = (IBinaryType)((BinaryType)this.getDeclaringType()).getElementInfo();
                char[] source = mapper.findSource(type, info);
                if (source != null) {
                    mapper.mapSource(type, source, info);
                }
                paramNames = mapper.getMethodParameterNames(this);
            }
            if (paramNames != null) {
                String[] names = new String[paramNames.length];
                int i = 0;
                while (i < paramNames.length) {
                    names[i] = new String(paramNames[i]);
                    ++i;
                }
                this.parameterNames = names;
                return names;
            }
        }
        IBinaryMethod info = (IBinaryMethod)this.getElementInfo();
        int paramCount = Signature.getParameterCount(new String(info.getMethodDescriptor()));
        if (this.isConstructor() && (declaringType = this.getDeclaringType()).isMember() && !Flags.isStatic(declaringType.getFlags())) {
            --paramCount;
        }
        if (paramCount != 0) {
            int indexOfClosingParen;
            int indexOfOpenParen;
            int modifiers = this.getFlags();
            if ((modifiers & 0x1000) != 0) {
                this.parameterNames = this.getRawParameterNames(paramCount);
                return this.parameterNames;
            }
            JavadocContents javadocContents = null;
            IType declaringType2 = this.getDeclaringType();
            JavaModelManager.PerProjectInfo projectInfo = JavaModelManager.getJavaModelManager().getPerProjectInfoCheckExistence(this.getJavaProject().getProject());
            LRUCache lRUCache = projectInfo.javadocCache;
            synchronized (lRUCache) {
                javadocContents = (JavadocContents)projectInfo.javadocCache.get(declaringType2);
                if (javadocContents == null) {
                    projectInfo.javadocCache.put(declaringType2, BinaryType.EMPTY_JAVADOC);
                }
            }
            String methodDoc = null;
            if (javadocContents == null) {
                long timeOut = 50L;
                try {
                    String option = this.getJavaProject().getOption("org.eclipse.jdt.core.timeoutForParameterNameFromAttachedJavadoc", true);
                    if (option != null) {
                        timeOut = Long.parseLong(option);
                    }
                }
                catch (NumberFormatException numberFormatException) {}
                if (timeOut == 0L) {
                    return this.getRawParameterNames(paramCount);
                }
                final class ParametersNameCollector {
                    String javadoc;

                    ParametersNameCollector() {
                    }

                    public void setJavadoc(String s) {
                        this.javadoc = s;
                    }

                    public String getJavadoc() {
                        return this.javadoc;
                    }
                }
                final ParametersNameCollector nameCollector = new ParametersNameCollector();
                Thread collect = new Thread(){
                    {
                    }

                    /*
                     * WARNING - Removed try catching itself - possible behaviour change.
                     */
                    public void run() {
                        try {
                            nameCollector.setJavadoc(BinaryMethod.this.getAttachedJavadoc(null));
                        }
                        catch (JavaModelException javaModelException) {}
                        ParametersNameCollector parametersNameCollector = nameCollector;
                        synchronized (parametersNameCollector) {
                            nameCollector.notify();
                        }
                    }
                };
                collect.start();
                ParametersNameCollector parametersNameCollector = nameCollector;
                synchronized (parametersNameCollector) {
                    try {
                        nameCollector.wait(timeOut);
                    }
                    catch (InterruptedException interruptedException) {}
                }
                methodDoc = nameCollector.getJavadoc();
            } else if (javadocContents != BinaryType.EMPTY_JAVADOC) {
                try {
                    methodDoc = javadocContents.getMethodDoc(this);
                }
                catch (JavaModelException javaModelException) {
                    javadocContents = null;
                }
            }
            if (methodDoc != null && (indexOfOpenParen = methodDoc.indexOf(40)) != -1 && (indexOfClosingParen = methodDoc.indexOf(41, indexOfOpenParen)) != -1) {
                char[] paramsSource = CharOperation.replace(methodDoc.substring(indexOfOpenParen + 1, indexOfClosingParen).toCharArray(), "&nbsp;".toCharArray(), new char[]{' '});
                char[][] params = this.splitParameters(paramsSource, paramCount);
                int paramsLength = params.length;
                String[] names = new String[paramsLength];
                int i = 0;
                while (i < paramsLength) {
                    char[] param = params[i];
                    int indexOfSpace = CharOperation.lastIndexOf(' ', param);
                    names[i] = indexOfSpace != -1 ? String.valueOf(param, indexOfSpace + 1, param.length - indexOfSpace - 1) : "arg" + i;
                    ++i;
                }
                this.parameterNames = names;
                return names;
            }
            char[][] argumentNames = info.getArgumentNames();
            if (argumentNames != null && argumentNames.length == paramCount) {
                String[] names = new String[paramCount];
                int i = 0;
                while (i < paramCount) {
                    names[i] = new String(argumentNames[i]);
                    ++i;
                }
                this.parameterNames = names;
                return names;
            }
        }
        return this.getRawParameterNames(paramCount);
    }

    private char[][] splitParameters(char[] parametersSource, int paramCount) {
        char[][] params = new char[paramCount][];
        int paramIndex = 0;
        int index = 0;
        int balance = 0;
        int length = parametersSource.length;
        int start = 0;
        block6: while (index < length) {
            switch (parametersSource[index]) {
                case '<': {
                    ++balance;
                    ++index;
                    while (index < length && parametersSource[index] != '>') {
                        ++index;
                    }
                    continue block6;
                }
                case '>': {
                    --balance;
                    ++index;
                    break;
                }
                case ',': {
                    if (balance == 0 && paramIndex < paramCount) {
                        params[paramIndex++] = CharOperation.subarray(parametersSource, start, index);
                        start = index + 1;
                    }
                    ++index;
                    break;
                }
                case '&': {
                    if (index + 4 < length) {
                        if (parametersSource[index + 1] == 'l' && parametersSource[index + 2] == 't' && parametersSource[index + 3] == ';') {
                            ++balance;
                            index += 4;
                            break;
                        }
                        if (parametersSource[index + 1] == 'g' && parametersSource[index + 2] == 't' && parametersSource[index + 3] == ';') {
                            --balance;
                            index += 4;
                            break;
                        }
                        ++index;
                        break;
                    }
                    ++index;
                    break;
                }
                default: {
                    ++index;
                }
            }
        }
        if (paramIndex < paramCount) {
            params[paramIndex++] = CharOperation.subarray(parametersSource, start, index);
        }
        if (paramIndex != paramCount) {
            char[][] cArrayArray = params;
            params = new char[paramIndex][];
            System.arraycopy(cArrayArray, 0, params, 0, paramIndex);
        }
        return params;
    }

    public String[] getParameterTypes() {
        return this.parameterTypes;
    }

    private String[] getErasedParameterTypes() {
        if (this.erasedParamaterTypes == null) {
            int paramCount = this.parameterTypes.length;
            String[] erasedTypes = new String[paramCount];
            boolean erasureNeeded = false;
            int i = 0;
            while (i < paramCount) {
                String parameterType = this.parameterTypes[i];
                erasedTypes[i] = Signature.getTypeErasure(parameterType);
                if (erasedTypes[i] != parameterType) {
                    erasureNeeded = true;
                }
                ++i;
            }
            this.erasedParamaterTypes = erasureNeeded ? erasedTypes : this.parameterTypes;
        }
        return this.erasedParamaterTypes;
    }

    private String getErasedParameterType(int index) {
        return this.getErasedParameterTypes()[index];
    }

    public ITypeParameter getTypeParameter(String typeParameterName) {
        return new TypeParameter(this, typeParameterName);
    }

    public ITypeParameter[] getTypeParameters() throws JavaModelException {
        String[] typeParameterSignatures = this.getTypeParameterSignatures();
        int length = typeParameterSignatures.length;
        if (length == 0) {
            return TypeParameter.NO_TYPE_PARAMETERS;
        }
        ITypeParameter[] typeParameters = new ITypeParameter[length];
        int i = 0;
        while (i < typeParameterSignatures.length) {
            String typeParameterName = Signature.getTypeVariable(typeParameterSignatures[i]);
            typeParameters[i] = new TypeParameter(this, typeParameterName);
            ++i;
        }
        return typeParameters;
    }

    public String[] getTypeParameterSignatures() throws JavaModelException {
        IBinaryMethod info = (IBinaryMethod)this.getElementInfo();
        char[] genericSignature = info.getGenericSignature();
        if (genericSignature == null) {
            return CharOperation.NO_STRINGS;
        }
        char[] dotBasedSignature = CharOperation.replaceOnCopy(genericSignature, '/', '.');
        char[][] typeParams = Signature.getTypeParameters(dotBasedSignature);
        return CharOperation.toStrings(typeParams);
    }

    public String[] getRawParameterNames() throws JavaModelException {
        IBinaryMethod info = (IBinaryMethod)this.getElementInfo();
        int paramCount = Signature.getParameterCount(new String(info.getMethodDescriptor()));
        return this.getRawParameterNames(paramCount);
    }

    private String[] getRawParameterNames(int paramCount) {
        String[] result = new String[paramCount];
        int i = 0;
        while (i < paramCount) {
            result[i] = "arg" + i;
            ++i;
        }
        return result;
    }

    public String getReturnType() throws JavaModelException {
        if (this.returnType == null) {
            IBinaryMethod info = (IBinaryMethod)this.getElementInfo();
            this.returnType = this.getReturnType(info);
        }
        return this.returnType;
    }

    private String getReturnType(IBinaryMethod info) {
        char[] genericSignature = info.getGenericSignature();
        char[] signature = genericSignature == null ? info.getMethodDescriptor() : genericSignature;
        char[] dotBasedSignature = CharOperation.replaceOnCopy(signature, '/', '.');
        String returnTypeName = Signature.getReturnType(new String(dotBasedSignature));
        return new String(ClassFile.translatedName(returnTypeName.toCharArray()));
    }

    public String getSignature() throws JavaModelException {
        IBinaryMethod info = (IBinaryMethod)this.getElementInfo();
        return new String(info.getMethodDescriptor());
    }

    public int hashCode() {
        int hash = super.hashCode();
        int i = 0;
        int length = this.parameterTypes.length;
        while (i < length) {
            hash = Util.combineHashCodes(hash, this.getErasedParameterType(i).hashCode());
            ++i;
        }
        return hash;
    }

    public boolean isConstructor() throws JavaModelException {
        if (!this.getElementName().equals(this.parent.getElementName())) {
            return false;
        }
        IBinaryMethod info = (IBinaryMethod)this.getElementInfo();
        return info.isConstructor();
    }

    public boolean isMainMethod() throws JavaModelException {
        return this.isMainMethod(this);
    }

    public boolean isResolved() {
        return false;
    }

    public boolean isSimilar(IMethod method) {
        return BinaryMethod.areSimilarMethods(this.getElementName(), this.getParameterTypes(), method.getElementName(), method.getParameterTypes(), null);
    }

    public String readableName() {
        int length;
        StringBuffer buffer = new StringBuffer(super.readableName());
        buffer.append("(");
        String[] paramTypes = this.parameterTypes;
        if (paramTypes != null && (length = paramTypes.length) > 0) {
            int i = 0;
            while (i < length) {
                buffer.append(Signature.toString(paramTypes[i]));
                if (i < length - 1) {
                    buffer.append(", ");
                }
                ++i;
            }
        }
        buffer.append(")");
        return buffer.toString();
    }

    public JavaElement resolved(Binding binding) {
        ResolvedBinaryMethod resolvedHandle = new ResolvedBinaryMethod(this.parent, this.name, this.parameterTypes, new String(binding.computeUniqueKey()));
        resolvedHandle.occurrenceCount = this.occurrenceCount;
        return resolvedHandle;
    }

    protected void toStringInfo(int tab, StringBuffer buffer, Object info, boolean showResolvedInfo) {
        buffer.append(this.tabString(tab));
        if (info == null) {
            this.toStringName(buffer);
            buffer.append(" (not open)");
        } else if (info == NO_INFO) {
            this.toStringName(buffer);
        } else {
            IBinaryMethod methodInfo = (IBinaryMethod)info;
            int flags = methodInfo.getModifiers();
            if (Flags.isStatic(flags)) {
                buffer.append("static ");
            }
            if (!methodInfo.isConstructor()) {
                buffer.append(Signature.toString(this.getReturnType(methodInfo)));
                buffer.append(' ');
            }
            this.toStringName(buffer, flags);
        }
    }

    protected void toStringName(StringBuffer buffer) {
        this.toStringName(buffer, 0);
    }

    protected void toStringName(StringBuffer buffer, int flags) {
        int length;
        buffer.append(this.getElementName());
        buffer.append('(');
        String[] parameters = this.getParameterTypes();
        if (parameters != null && (length = parameters.length) > 0) {
            boolean isVarargs = Flags.isVarargs(flags);
            int i = 0;
            while (i < length) {
                try {
                    if (i < length - 1) {
                        buffer.append(Signature.toString(parameters[i]));
                        buffer.append(", ");
                    } else if (isVarargs) {
                        String parameter = parameters[i].substring(1);
                        buffer.append(Signature.toString(parameter));
                        buffer.append(" ...");
                    } else {
                        buffer.append(Signature.toString(parameters[i]));
                    }
                }
                catch (IllegalArgumentException illegalArgumentException) {
                    buffer.append("*** invalid signature: ");
                    buffer.append(parameters[i]);
                }
                ++i;
            }
        }
        buffer.append(')');
        if (this.occurrenceCount > 1) {
            buffer.append("#");
            buffer.append(this.occurrenceCount);
        }
    }

    public String getAttachedJavadoc(IProgressMonitor monitor) throws JavaModelException {
        JavadocContents javadocContents = ((BinaryType)this.getDeclaringType()).getJavadocContents(monitor);
        if (javadocContents == null) {
            return null;
        }
        return javadocContents.getMethodDoc(this);
    }
}

