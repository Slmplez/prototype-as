/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import java.util.HashMap;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.IMemberValuePair;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryElementValuePair;
import org.eclipse.jdt.internal.compiler.env.IBinaryField;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryNestedType;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.Annotation;
import org.eclipse.jdt.internal.core.AnnotationInfo;
import org.eclipse.jdt.internal.core.BinaryField;
import org.eclipse.jdt.internal.core.BinaryMember;
import org.eclipse.jdt.internal.core.BinaryMethod;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.LocalVariable;
import org.eclipse.jdt.internal.core.OpenableElementInfo;
import org.eclipse.jdt.internal.core.TypeParameter;
import org.eclipse.jdt.internal.core.TypeParameterElementInfo;

class ClassFileInfo
extends OpenableElementInfo
implements SuffixConstants {
    protected JavaElement[] binaryChildren = null;
    protected ITypeParameter[] typeParameters;

    ClassFileInfo() {
    }

    private void generateAnnotationsInfos(JavaElement member, IBinaryAnnotation[] binaryAnnotations, long tagBits, HashMap newElements) {
        this.generateAnnotationsInfos(member, null, binaryAnnotations, tagBits, newElements);
    }

    private void generateAnnotationsInfos(JavaElement member, char[] parameterName, IBinaryAnnotation[] binaryAnnotations, long tagBits, HashMap newElements) {
        if (binaryAnnotations != null) {
            int i = 0;
            int length = binaryAnnotations.length;
            while (i < length) {
                IBinaryAnnotation annotationInfo = binaryAnnotations[i];
                this.generateAnnotationInfo(member, parameterName, newElements, annotationInfo, null);
                ++i;
            }
        }
        this.generateStandardAnnotationsInfos(member, parameterName, tagBits, newElements);
    }

    private void generateAnnotationInfo(JavaElement parent, HashMap newElements, IBinaryAnnotation annotationInfo, String memberValuePairName) {
        this.generateAnnotationInfo(parent, null, newElements, annotationInfo, memberValuePairName);
    }

    private void generateAnnotationInfo(JavaElement parent, char[] parameterName, HashMap newElements, IBinaryAnnotation annotationInfo, String memberValuePairName) {
        char[] typeName = Signature.toCharArray(CharOperation.replaceOnCopy(annotationInfo.getTypeName(), '/', '.'));
        Annotation annotation = new Annotation(parent, new String(typeName), memberValuePairName);
        while (newElements.containsKey(annotation)) {
            annotation.occurrenceCount = annotation.occurrenceCount + 1;
        }
        newElements.put(annotation, annotationInfo);
        IBinaryElementValuePair[] pairs = annotationInfo.getElementValuePairs();
        int i = 0;
        int length = pairs.length;
        while (i < length) {
            Object value = pairs[i].getValue();
            if (value instanceof IBinaryAnnotation) {
                this.generateAnnotationInfo(annotation, newElements, (IBinaryAnnotation)value, new String(pairs[i].getName()));
            } else if (value instanceof Object[]) {
                Object[] valueArray = (Object[])value;
                int j = 0;
                int valueArrayLength = valueArray.length;
                while (j < valueArrayLength) {
                    Object nestedValue = valueArray[j];
                    if (nestedValue instanceof IBinaryAnnotation) {
                        this.generateAnnotationInfo(annotation, newElements, (IBinaryAnnotation)nestedValue, new String(pairs[i].getName()));
                    }
                    ++j;
                }
            }
            ++i;
        }
    }

    private void generateStandardAnnotationsInfos(JavaElement javaElement, char[] parameterName, long tagBits, HashMap newElements) {
        if ((tagBits & 0x1FFFF800000000L) == 0L) {
            return;
        }
        if ((tagBits & 0xFF800000000L) != 0L) {
            this.generateStandardAnnotation(javaElement, TypeConstants.JAVA_LANG_ANNOTATION_TARGET, this.getTargetElementTypes(tagBits), newElements);
        }
        if ((tagBits & 0x300000000000L) != 0L) {
            this.generateStandardAnnotation(javaElement, TypeConstants.JAVA_LANG_ANNOTATION_RETENTION, this.getRetentionPolicy(tagBits), newElements);
        }
        if ((tagBits & 0x400000000000L) != 0L) {
            this.generateStandardAnnotation(javaElement, TypeConstants.JAVA_LANG_DEPRECATED, Annotation.NO_MEMBER_VALUE_PAIRS, newElements);
        }
        if ((tagBits & 0x800000000000L) != 0L) {
            this.generateStandardAnnotation(javaElement, TypeConstants.JAVA_LANG_ANNOTATION_DOCUMENTED, Annotation.NO_MEMBER_VALUE_PAIRS, newElements);
        }
        if ((tagBits & 0x1000000000000L) != 0L) {
            this.generateStandardAnnotation(javaElement, TypeConstants.JAVA_LANG_ANNOTATION_INHERITED, Annotation.NO_MEMBER_VALUE_PAIRS, newElements);
        }
        if ((tagBits & 0x10000000000000L) != 0L) {
            this.generateStandardAnnotation(javaElement, TypeConstants.JAVA_LANG_INVOKE_METHODHANDLE_$_POLYMORPHICSIGNATURE, Annotation.NO_MEMBER_VALUE_PAIRS, newElements);
        }
        if ((tagBits & 0x8000000000000L) != 0L) {
            this.generateStandardAnnotation(javaElement, TypeConstants.JAVA_LANG_SAFEVARARGS, Annotation.NO_MEMBER_VALUE_PAIRS, newElements);
        }
    }

    private void generateStandardAnnotation(JavaElement javaElement, char[][] typeName, IMemberValuePair[] members, HashMap newElements) {
        Annotation annotation = new Annotation(javaElement, new String(CharOperation.concatWith(typeName, '.')));
        AnnotationInfo annotationInfo = new AnnotationInfo();
        annotationInfo.members = members;
        newElements.put(annotation, annotationInfo);
    }

    /*
     * WARNING - void declaration
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private IMemberValuePair[] getTargetElementTypes(long tagBits) {
        void var5_7;
        ArrayList<String> values = new ArrayList<String>();
        String elementType = String.valueOf(new String(CharOperation.concatWith(TypeConstants.JAVA_LANG_ANNOTATION_ELEMENTTYPE, '.'))) + '.';
        if ((tagBits & 0x1000000000L) != 0L) {
            values.add(String.valueOf(elementType) + new String(TypeConstants.TYPE));
        }
        if ((tagBits & 0x2000000000L) != 0L) {
            values.add(String.valueOf(elementType) + new String(TypeConstants.UPPER_FIELD));
        }
        if ((tagBits & 0x4000000000L) != 0L) {
            values.add(String.valueOf(elementType) + new String(TypeConstants.UPPER_METHOD));
        }
        if ((tagBits & 0x8000000000L) != 0L) {
            values.add(String.valueOf(elementType) + new String(TypeConstants.UPPER_PARAMETER));
        }
        if ((tagBits & 0x10000000000L) != 0L) {
            values.add(String.valueOf(elementType) + new String(TypeConstants.UPPER_CONSTRUCTOR));
        }
        if ((tagBits & 0x20000000000L) != 0L) {
            values.add(String.valueOf(elementType) + new String(TypeConstants.UPPER_LOCAL_VARIABLE));
        }
        if ((tagBits & 0x40000000000L) != 0L) {
            values.add(String.valueOf(elementType) + new String(TypeConstants.UPPER_ANNOTATION_TYPE));
        }
        if ((tagBits & 0x80000000000L) != 0L) {
            values.add(String.valueOf(elementType) + new String(TypeConstants.UPPER_PACKAGE));
        }
        if (values.size() == 0) {
            if ((tagBits & 0x800000000L) == 0L) return Annotation.NO_MEMBER_VALUE_PAIRS;
            String[] stringArray = CharOperation.NO_STRINGS;
            return new IMemberValuePair[]{new IMemberValuePair(){

                public int getValueKind() {
                    return 12;
                }

                public Object getValue() {
                    return var5_7;
                }

                public String getMemberName() {
                    return new String(TypeConstants.VALUE);
                }
            }};
        } else if (values.size() == 1) {
            Object e = values.get(0);
            return new IMemberValuePair[]{new /* invalid duplicate definition of identical inner class */};
        } else {
            String[] stringArray = values.toArray(new String[values.size()]);
        }
        return new IMemberValuePair[]{new /* invalid duplicate definition of identical inner class */};
    }

    private IMemberValuePair[] getRetentionPolicy(long tagBits) {
        if ((tagBits & 0x300000000000L) == 0L) {
            return Annotation.NO_MEMBER_VALUE_PAIRS;
        }
        String retention = null;
        retention = (tagBits & 0x300000000000L) == 0x300000000000L ? String.valueOf(new String(CharOperation.concatWith(TypeConstants.JAVA_LANG_ANNOTATION_RETENTIONPOLICY, '.'))) + '.' + new String(TypeConstants.UPPER_RUNTIME) : ((tagBits & 0x100000000000L) != 0L ? String.valueOf(new String(CharOperation.concatWith(TypeConstants.JAVA_LANG_ANNOTATION_RETENTIONPOLICY, '.'))) + '.' + new String(TypeConstants.UPPER_SOURCE) : String.valueOf(new String(CharOperation.concatWith(TypeConstants.JAVA_LANG_ANNOTATION_RETENTIONPOLICY, '.'))) + '.' + new String(TypeConstants.UPPER_CLASS));
        final String value = retention;
        return new IMemberValuePair[]{new IMemberValuePair(){

            public int getValueKind() {
                return 12;
            }

            public Object getValue() {
                return value;
            }

            public String getMemberName() {
                return new String(TypeConstants.VALUE);
            }
        }};
    }

    private void generateFieldInfos(IType type, IBinaryType typeInfo, HashMap newElements, ArrayList childrenHandles) {
        IBinaryField[] fields = typeInfo.getFields();
        if (fields == null) {
            return;
        }
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        int i = 0;
        int fieldCount = fields.length;
        while (i < fieldCount) {
            IBinaryField fieldInfo = fields[i];
            BinaryField field = new BinaryField((JavaElement)((Object)type), manager.intern(new String(fieldInfo.getName())));
            newElements.put(field, fieldInfo);
            childrenHandles.add(field);
            this.generateAnnotationsInfos(field, fieldInfo.getAnnotations(), fieldInfo.getTagBits(), newElements);
            ++i;
        }
    }

    private void generateInnerClassHandles(IType type, IBinaryType typeInfo, ArrayList childrenHandles) {
        IBinaryNestedType[] innerTypes = typeInfo.getMemberTypes();
        if (innerTypes != null) {
            IPackageFragment pkg = (IPackageFragment)type.getAncestor(4);
            int i = 0;
            int typeCount = innerTypes.length;
            while (i < typeCount) {
                IBinaryNestedType binaryType = innerTypes[i];
                IClassFile parentClassFile = pkg.getClassFile(String.valueOf(new String(ClassFile.unqualifiedName(binaryType.getName()))) + ".class");
                BinaryType innerType = new BinaryType((JavaElement)((Object)parentClassFile), ClassFile.simpleName(binaryType.getName()));
                childrenHandles.add(innerType);
                ++i;
            }
        }
    }

    private void generateMethodInfos(IType type, IBinaryType typeInfo, HashMap newElements, ArrayList childrenHandles, ArrayList typeParameterHandles) {
        IBinaryMethod[] methods = typeInfo.getMethods();
        if (methods == null) {
            return;
        }
        int i = 0;
        int methodCount = methods.length;
        while (i < methodCount) {
            int j;
            IBinaryMethod methodInfo = methods[i];
            boolean useGenericSignature = true;
            char[] signature = methodInfo.getGenericSignature();
            if (signature == null) {
                useGenericSignature = false;
                signature = methodInfo.getMethodDescriptor();
            }
            String selector = new String(methodInfo.getSelector());
            boolean isConstructor = methodInfo.isConstructor();
            if (isConstructor) {
                selector = type.getElementName();
            }
            String[] pNames = null;
            try {
                pNames = Signature.getParameterTypes(new String(signature));
                if (isConstructor && useGenericSignature && type.isMember() && !Flags.isStatic(type.getFlags())) {
                    int length = pNames.length;
                    String[] stringArray = pNames;
                    pNames = new String[length + 1];
                    System.arraycopy(stringArray, 0, pNames, 1, length);
                    char[] descriptor = methodInfo.getMethodDescriptor();
                    String[] parameterTypes = Signature.getParameterTypes(new String(descriptor));
                    pNames[0] = parameterTypes[0];
                }
            }
            catch (IllegalArgumentException illegalArgumentException) {
                signature = methodInfo.getMethodDescriptor();
                pNames = Signature.getParameterTypes(new String(signature));
            }
            catch (JavaModelException javaModelException) {
                signature = methodInfo.getMethodDescriptor();
                pNames = Signature.getParameterTypes(new String(signature));
            }
            char[][] paramNames = new char[pNames.length][];
            int j2 = 0;
            while (j2 < pNames.length) {
                paramNames[j2] = pNames[j2].toCharArray();
                ++j2;
            }
            char[][] parameterTypes = ClassFile.translatedNames(paramNames);
            JavaModelManager manager = JavaModelManager.getJavaModelManager();
            selector = manager.intern(selector);
            int j3 = 0;
            while (j3 < pNames.length) {
                pNames[j3] = manager.intern(new String(parameterTypes[j3]));
                ++j3;
            }
            BinaryMethod method = new BinaryMethod((JavaElement)((Object)type), selector, pNames);
            childrenHandles.add(method);
            while (newElements.containsKey(method)) {
                method.occurrenceCount = method.occurrenceCount + 1;
            }
            newElements.put(method, methodInfo);
            int max = pNames.length;
            Object argumentNames = methodInfo.getArgumentNames();
            if (argumentNames == null || ((char[][])argumentNames).length < max) {
                argumentNames = new char[max][];
                j = 0;
                while (j < max) {
                    argumentNames[j] = ("arg" + j).toCharArray();
                    ++j;
                }
            }
            j = 0;
            while (j < max) {
                IBinaryAnnotation[] parameterAnnotations = methodInfo.getParameterAnnotations(j);
                if (parameterAnnotations != null) {
                    LocalVariable localVariable = new LocalVariable(method, new String(argumentNames[j]), 0, -1, 0, -1, method.parameterTypes[j], null, -1, true);
                    this.generateAnnotationsInfos(localVariable, argumentNames[j], parameterAnnotations, methodInfo.getTagBits(), newElements);
                }
                ++j;
            }
            this.generateTypeParameterInfos(method, signature, newElements, typeParameterHandles);
            this.generateAnnotationsInfos(method, methodInfo.getAnnotations(), methodInfo.getTagBits(), newElements);
            Object defaultValue = methodInfo.getDefaultValue();
            if (defaultValue instanceof IBinaryAnnotation) {
                this.generateAnnotationInfo(method, newElements, (IBinaryAnnotation)defaultValue, new String(methodInfo.getSelector()));
            }
            ++i;
        }
    }

    private void generateTypeParameterInfos(BinaryMember parent, char[] signature, HashMap newElements, ArrayList typeParameterHandles) {
        if (signature == null) {
            return;
        }
        char[][] typeParameterSignatures = Signature.getTypeParameters(signature);
        int i = 0;
        int typeParameterCount = typeParameterSignatures.length;
        while (i < typeParameterCount) {
            char[] typeParameterSignature = typeParameterSignatures[i];
            char[] typeParameterName = Signature.getTypeVariable(typeParameterSignature);
            CharOperation.replace(typeParameterSignature, '/', '.');
            char[][] typeParameterBoundSignatures = Signature.getTypeParameterBounds(typeParameterSignature);
            int boundLength = typeParameterBoundSignatures.length;
            char[][] typeParameterBounds = new char[boundLength][];
            int j = 0;
            while (j < boundLength) {
                typeParameterBounds[j] = Signature.toCharArray(typeParameterBoundSignatures[j]);
                ++j;
            }
            TypeParameter typeParameter = new TypeParameter(parent, new String(typeParameterName));
            TypeParameterElementInfo info = new TypeParameterElementInfo();
            info.bounds = typeParameterBounds;
            info.boundsSignatures = typeParameterBoundSignatures;
            typeParameterHandles.add(typeParameter);
            while (newElements.containsKey(typeParameter)) {
                typeParameter.occurrenceCount = typeParameter.occurrenceCount + 1;
            }
            newElements.put(typeParameter, info);
            ++i;
        }
    }

    boolean hasReadBinaryChildren() {
        return this.binaryChildren != null;
    }

    protected void readBinaryChildren(ClassFile classFile, HashMap newElements, IBinaryType typeInfo) {
        ArrayList childrenHandles = new ArrayList();
        BinaryType type = (BinaryType)classFile.getType();
        ArrayList typeParameterHandles = new ArrayList();
        if (typeInfo != null) {
            this.generateAnnotationsInfos(type, typeInfo.getAnnotations(), typeInfo.getTagBits(), newElements);
            this.generateTypeParameterInfos(type, typeInfo.getGenericSignature(), newElements, typeParameterHandles);
            this.generateFieldInfos(type, typeInfo, newElements, childrenHandles);
            this.generateMethodInfos(type, typeInfo, newElements, childrenHandles, typeParameterHandles);
            this.generateInnerClassHandles(type, typeInfo, childrenHandles);
        }
        this.binaryChildren = new JavaElement[childrenHandles.size()];
        childrenHandles.toArray(this.binaryChildren);
        int typeParameterHandleSize = typeParameterHandles.size();
        if (typeParameterHandleSize == 0) {
            this.typeParameters = TypeParameter.NO_TYPE_PARAMETERS;
        } else {
            this.typeParameters = new ITypeParameter[typeParameterHandleSize];
            typeParameterHandles.toArray(this.typeParameters);
        }
    }

    void removeBinaryChildren() throws JavaModelException {
        int i;
        JavaModelManager manager;
        if (this.binaryChildren != null) {
            manager = JavaModelManager.getJavaModelManager();
            i = 0;
            while (i < this.binaryChildren.length) {
                JavaElement child = this.binaryChildren[i];
                if (child instanceof BinaryType) {
                    manager.removeInfoAndChildren((JavaElement)child.getParent());
                } else {
                    manager.removeInfoAndChildren(child);
                }
                ++i;
            }
            this.binaryChildren = JavaElement.NO_ELEMENTS;
        }
        if (this.typeParameters != null) {
            manager = JavaModelManager.getJavaModelManager();
            i = 0;
            while (i < this.typeParameters.length) {
                TypeParameter typeParameter = (TypeParameter)this.typeParameters[i];
                manager.removeInfoAndChildren(typeParameter);
                ++i;
            }
            this.typeParameters = TypeParameter.NO_TYPE_PARAMETERS;
        }
    }
}

