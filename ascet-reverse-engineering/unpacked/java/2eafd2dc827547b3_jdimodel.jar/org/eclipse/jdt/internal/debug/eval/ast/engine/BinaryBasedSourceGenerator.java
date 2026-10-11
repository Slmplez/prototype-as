/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ClassNotLoadedException
 *  com.sun.jdi.ClassNotPreparedException
 *  com.sun.jdi.ClassType
 *  com.sun.jdi.Field
 *  com.sun.jdi.InterfaceType
 *  com.sun.jdi.Method
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.Type
 *  org.eclipse.jdt.core.Signature
 */
package org.eclipse.jdt.internal.debug.eval.ast.engine;

import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.ClassNotPreparedException;
import com.sun.jdi.ClassType;
import com.sun.jdi.Field;
import com.sun.jdi.InterfaceType;
import com.sun.jdi.Method;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.Type;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.debug.core.IJavaReferenceType;
import org.eclipse.jdt.internal.debug.core.model.JDIReferenceType;
import org.eclipse.jdt.internal.debug.eval.ast.engine.SignatureExt;

public class BinaryBasedSourceGenerator {
    private static final String RUN_METHOD_NAME = "___run";
    private static final String EVAL_METHOD_NAME = "___eval";
    private static final String ANONYMOUS_CLASS_NAME = "___EvalClass";
    private String[] fLocalVariableTypeNames;
    private String[] fLocalVariableNames;
    private boolean fIsInStaticMethod;
    private StringBuffer fSource;
    private int fRunMethodStartOffset;
    private int fRunMethodLength;
    private int fCodeSnippetPosition;
    private String fCompilationUnitName;
    private int fSourceMajorLevel;
    private int fSourceMinorLevel;

    public BinaryBasedSourceGenerator(String[] localTypesNames, String[] localVariables, boolean isInStaticMethod, String sourceLevel) {
        this.fLocalVariableTypeNames = localTypesNames;
        this.fLocalVariableNames = localVariables;
        this.fIsInStaticMethod = isInStaticMethod;
        int index = sourceLevel.indexOf(46);
        String num = sourceLevel.substring(0, index);
        this.fSourceMajorLevel = Integer.valueOf(num);
        num = sourceLevel.substring(index + 1);
        this.fSourceMinorLevel = Integer.valueOf(num);
    }

    public void buildSource(JDIReferenceType referenceType) {
        ReferenceType reference = (ReferenceType)referenceType.getUnderlyingType();
        this.fSource = this.buildTypeDeclaration(reference, this.buildRunMethod(reference), null);
    }

    public void buildSourceStatic(IJavaReferenceType type) {
        Type underlyingType = ((JDIReferenceType)type).getUnderlyingType();
        if (!(underlyingType instanceof ReferenceType)) {
            return;
        }
        ReferenceType refType = (ReferenceType)underlyingType;
        this.fSource = this.buildTypeDeclaration(refType, this.buildRunMethod(refType), null, false);
        String packageName = this.getPackageName(refType.name());
        if (packageName != null) {
            this.fSource.insert(0, "package " + packageName + ";\n");
            this.fCodeSnippetPosition += 10 + packageName.length();
        }
        this.fCompilationUnitName = this.getSimpleName(refType.name());
    }

    protected String getUniqueMethodName(String methodName, ReferenceType type) {
        List methods = type.methodsByName(methodName);
        while (!methods.isEmpty()) {
            methodName = String.valueOf(methodName) + '_';
            methods = type.methodsByName(methodName);
        }
        return methodName;
    }

    private StringBuffer buildRunMethod(ReferenceType type) {
        StringBuffer source = new StringBuffer();
        if (this.isInStaticMethod()) {
            source.append("static ");
        }
        source.append("void ");
        source.append(this.getUniqueMethodName(RUN_METHOD_NAME, type));
        source.append('(');
        int i = 0;
        int length = this.fLocalVariableNames.length;
        while (i < length) {
            source.append(this.getDotName(this.fLocalVariableTypeNames[i]));
            source.append(' ');
            source.append(this.fLocalVariableNames[i]);
            if (i + 1 < length) {
                source.append(", ");
            }
            ++i;
        }
        source.append(") throws Throwable {");
        source.append('\n');
        this.fRunMethodStartOffset = this.fCodeSnippetPosition = source.length();
        source.append('\n');
        source.append('}').append('\n');
        this.fRunMethodLength = source.length();
        return source;
    }

    private StringBuffer buildTypeDeclaration(ReferenceType referenceType, StringBuffer buffer, String nestedTypeName) {
        Field thisField = null;
        List fields = referenceType.visibleFields();
        Iterator iterator = fields.iterator();
        while (iterator.hasNext()) {
            Field field = (Field)iterator.next();
            if (!field.name().startsWith("this$")) continue;
            thisField = field;
            break;
        }
        StringBuffer source = this.buildTypeDeclaration(referenceType, buffer, nestedTypeName, thisField != null);
        if (thisField == null) {
            String packageName = this.getPackageName(referenceType.name());
            if (packageName != null) {
                source.insert(0, "package " + packageName + ";\n");
                this.fCodeSnippetPosition += 10 + packageName.length();
            }
            this.fCompilationUnitName = this.isAnonymousTypeName(referenceType.name()) ? ANONYMOUS_CLASS_NAME : this.getSimpleName(referenceType.name());
        } else {
            try {
                return this.buildTypeDeclaration((ReferenceType)thisField.type(), source, referenceType.name());
            }
            catch (ClassNotLoadedException classNotLoadedException) {}
        }
        return source;
    }

    private StringBuffer buildTypeDeclaration(ReferenceType referenceType, StringBuffer buffer, String nestedTypeName, boolean hasEnclosingInstance) {
        Iterator iterator;
        ClassType classType;
        StringBuffer source = new StringBuffer();
        String typeName = referenceType.name();
        boolean isAnonymousType = this.isAnonymousTypeName(typeName);
        if (isAnonymousType) {
            classType = (ClassType)referenceType;
            List interfaceList = classType.interfaces();
            String superClassName = classType.superclass().name();
            if (hasEnclosingInstance) {
                source.append("void ");
                source.append(this.getUniqueMethodName(EVAL_METHOD_NAME, referenceType));
                source.append("() {\nnew ");
                if (interfaceList.size() != 0) {
                    source.append(this.getDotName(((InterfaceType)interfaceList.get(0)).name()));
                } else {
                    source.append(this.getDotName(superClassName));
                }
                source.append("()");
            } else {
                source.append("public class ").append(ANONYMOUS_CLASS_NAME).append(" ");
                if (interfaceList.size() != 0) {
                    source.append(" implements ").append(this.getDotName(((InterfaceType)interfaceList.get(0)).name()));
                } else {
                    source.append(" extends ").append(this.getDotName(superClassName));
                }
            }
        } else {
            if (referenceType.isFinal()) {
                source.append("final ");
            }
            if (referenceType.isStatic()) {
                source.append("static ");
            }
            if (referenceType instanceof ClassType) {
                classType = (ClassType)referenceType;
                if (classType.isAbstract()) {
                    source.append("abstract ");
                }
                source.append("class ");
                source.append(this.getSimpleName(typeName)).append(' ');
                String genericSignature = referenceType.genericSignature();
                if (genericSignature != null && this.isSourceLevelGreaterOrEqual(1, 5)) {
                    String[] superClassInterfaces;
                    int length;
                    int i;
                    String[] typeParameters = Signature.getTypeParameters((String)genericSignature);
                    if (typeParameters.length > 0) {
                        source.append('<');
                        source.append(Signature.getTypeVariable((String)typeParameters[0]));
                        String[] typeParameterBounds = Signature.getTypeParameterBounds((String)typeParameters[0]);
                        source.append(" extends ").append(Signature.toString((String)typeParameterBounds[0]).replace('/', '.'));
                        int i2 = 1;
                        while (i2 < typeParameterBounds.length) {
                            source.append(" & ").append(Signature.toString((String)typeParameterBounds[i2]).replace('/', '.'));
                            ++i2;
                        }
                        int j = 1;
                        while (j < typeParameters.length) {
                            source.append(',').append(Signature.getTypeVariable((String)typeParameters[j]));
                            typeParameterBounds = Signature.getTypeParameterBounds((String)typeParameters[j]);
                            source.append(" extends ").append(Signature.toString((String)typeParameterBounds[0]).replace('/', '.'));
                            i = 1;
                            while (i < typeParameterBounds.length) {
                                source.append(" & ").append(Signature.toString((String)typeParameterBounds[i]).replace('/', '.'));
                                ++i;
                            }
                            ++j;
                        }
                        source.append("> ");
                    }
                    if ((length = (superClassInterfaces = SignatureExt.getTypeSuperClassInterfaces(genericSignature)).length) > 0) {
                        source.append("extends ").append(Signature.toString((String)superClassInterfaces[0]).replace('/', '.'));
                        if (length > 1) {
                            source.append(" implements ").append(Signature.toString((String)superClassInterfaces[1]).replace('/', '.'));
                            i = 2;
                            while (i < length) {
                                source.append(',').append(Signature.toString((String)superClassInterfaces[1]));
                                ++i;
                            }
                        }
                    }
                } else {
                    List interfaces;
                    ClassType superClass = classType.superclass();
                    if (superClass != null) {
                        source.append("extends ").append(this.getDotName(superClass.name())).append(' ');
                    }
                    try {
                        interfaces = classType.interfaces();
                    }
                    catch (ClassNotPreparedException classNotPreparedException) {
                        return new StringBuffer();
                    }
                    if (interfaces.size() != 0) {
                        source.append("implements ");
                        Iterator iterator2 = interfaces.iterator();
                        InterfaceType interface_ = (InterfaceType)iterator2.next();
                        source.append(this.getDotName(interface_.name()));
                        while (iterator2.hasNext()) {
                            source.append(',').append(this.getDotName(((InterfaceType)iterator2.next()).name()));
                        }
                    }
                }
            } else if (referenceType instanceof InterfaceType) {
                if (buffer != null) {
                    source.append("abstract class ");
                    source.append(this.getSimpleName(typeName)).append("___ implements ");
                    source.append(typeName.replace('$', '.')).append(" {\n");
                    this.fCodeSnippetPosition += source.length();
                    source.append(buffer).append("}\n");
                }
                return source;
            }
        }
        source.append(" {\n");
        if (buffer != null && !(referenceType instanceof InterfaceType)) {
            this.fCodeSnippetPosition += source.length();
            source.append(buffer);
        }
        List fields = referenceType.fields();
        Iterator iterator3 = fields.iterator();
        while (iterator3.hasNext()) {
            Field field = (Field)iterator3.next();
            if (field.name().startsWith("this$")) continue;
            source.append(this.buildFieldDeclaration(field));
        }
        List methods = referenceType.methods();
        Iterator iterator4 = methods.iterator();
        while (iterator4.hasNext()) {
            Method method = (Method)iterator4.next();
            if (method.isConstructor() || method.isStaticInitializer() || method.isBridge()) continue;
            source.append(this.buildMethodDeclaration(method));
        }
        List nestedTypes = referenceType.nestedTypes();
        if (nestedTypeName == null) {
            iterator = nestedTypes.iterator();
            while (iterator.hasNext()) {
                ReferenceType nestedType = (ReferenceType)iterator.next();
                if (!this.isADirectInnerType(typeName, nestedType.name())) continue;
                source.append(this.buildTypeDeclaration(nestedType, null, null, true));
            }
        } else {
            iterator = nestedTypes.iterator();
            while (iterator.hasNext()) {
                ReferenceType nestedType = (ReferenceType)iterator.next();
                if (nestedTypeName.equals(nestedType.name()) || !this.isADirectInnerType(typeName, nestedType.name())) continue;
                source.append(this.buildTypeDeclaration(nestedType, null, null, true));
            }
        }
        if (isAnonymousType & hasEnclosingInstance) {
            source.append("};\n");
        }
        source.append("}\n");
        return source;
    }

    private StringBuffer buildFieldDeclaration(Field field) {
        StringBuffer source = new StringBuffer();
        if (field.isFinal()) {
            source.append("final ");
        }
        if (field.isStatic()) {
            source.append("static ");
        }
        if (field.isPublic()) {
            source.append("public ");
        } else if (field.isPrivate()) {
            source.append("private ");
        } else if (field.isProtected()) {
            source.append("protected ");
        }
        source.append(this.getDotName(field.typeName())).append(' ').append(field.name()).append(';').append('\n');
        return source;
    }

    /*
     * Unable to fully structure code
     */
    private StringBuffer buildMethodDeclaration(Method method) {
        block26: {
            block27: {
                block25: {
                    source = new StringBuffer();
                    if (method.isFinal()) {
                        source.append("final ");
                    }
                    if (method.isStatic()) {
                        source.append("static ");
                    }
                    if (method.isNative()) {
                        source.append("native ");
                    } else if (method.isAbstract()) {
                        source.append("abstract ");
                    }
                    if (method.isPublic()) {
                        source.append("public ");
                    } else if (method.isPrivate()) {
                        source.append("private ");
                    } else if (method.isProtected()) {
                        source.append("protected ");
                    }
                    genericSignature = method.genericSignature();
                    if (genericSignature == null || !this.isSourceLevelGreaterOrEqual(1, 5)) break block25;
                    typeParameters = Signature.getTypeParameters((String)genericSignature);
                    if (typeParameters.length > 0) {
                        source.append('<');
                        source.append(Signature.getTypeVariable((String)typeParameters[0]));
                        typeParameterBounds = Signature.getTypeParameterBounds((String)typeParameters[0]);
                        source.append(" extends ").append(Signature.toString((String)typeParameterBounds[0]).replace('/', '.'));
                        i = 1;
                        while (i < typeParameterBounds.length) {
                            source.append(" & ").append(Signature.toString((String)typeParameterBounds[i]).replace('/', '.'));
                            ++i;
                        }
                        j = 1;
                        while (j < typeParameters.length) {
                            source.append(',').append(Signature.getTypeVariable((String)typeParameters[j]));
                            typeParameterBounds = Signature.getTypeParameterBounds((String)typeParameters[j]);
                            source.append(" extends ").append(Signature.toString((String)typeParameterBounds[0]).replace('/', '.'));
                            i = 1;
                            while (i < typeParameterBounds.length) {
                                source.append(" & ").append(Signature.toString((String)typeParameterBounds[i]).replace('/', '.'));
                                ++i;
                            }
                            ++j;
                        }
                        source.append("> ");
                    }
                    source.append(Signature.toString((String)Signature.getReturnType((String)genericSignature)).replace('/', '.')).append(' ').append(method.name()).append('(');
                    parameterTypes = Signature.getParameterTypes((String)genericSignature);
                    i = 0;
                    if (parameterTypes.length != 0) {
                        source.append(Signature.toString((String)parameterTypes[0]).replace('/', '.')).append(" arg").append(i++);
                        if (method.isVarArgs()) {
                            j = 1;
                            while (j < parameterTypes.length - 1) {
                                source.append(',').append(Signature.toString((String)parameterTypes[j]).replace('/', '.')).append(" arg").append(i++);
                                ++j;
                            }
                            typeName = Signature.toString((String)parameterTypes[parameterTypes.length - 1]).replace('/', '.');
                            source.append(',').append(typeName.substring(0, typeName.length() - 2)).append("...").append(" arg").append(i++);
                        } else {
                            j = 1;
                            while (j < parameterTypes.length) {
                                source.append(',').append(Signature.toString((String)parameterTypes[j]).replace('/', '.')).append(" arg").append(i++);
                                ++j;
                            }
                        }
                    }
                    source.append(')');
                    break block26;
                }
                source.append(this.getDotName(method.returnTypeName())).append(' ').append(method.name()).append('(');
                arguments = method.argumentTypeNames();
                i = 0;
                if (arguments.size() == 0) break block27;
                iterator = arguments.iterator();
                source.append(this.getDotName((String)iterator.next())).append(" arg").append(i++);
                if (!method.isVarArgs()) ** GOTO lbl113
                while (iterator.hasNext()) {
                    source.append(',');
                    argName = this.getDotName((String)iterator.next());
                    if (!iterator.hasNext()) {
                        source.append(argName.substring(0, argName.length() - 2)).append("...");
                    } else {
                        source.append(argName);
                    }
                    source.append(" arg").append(i++);
                }
                break block27;
lbl-1000:
                // 1 sources

                {
                    source.append(',').append(this.getDotName((String)iterator.next())).append(" arg").append(i++);
lbl113:
                    // 2 sources

                    ** while (iterator.hasNext())
                }
            }
            source.append(')');
        }
        if (method.isAbstract() || method.isNative()) {
            source.append(";\n");
        } else {
            source.append('{').append('\n');
            source.append(this.getReturnStatement(method.returnTypeName()));
            source.append('}').append('\n');
        }
        return source;
    }

    private String getReturnStatement(String returnTypeName) {
        String typeName = this.getSimpleName(returnTypeName);
        if (typeName.charAt(typeName.length() - 1) == ']') {
            return "return null;\n";
        }
        switch (typeName.charAt(0)) {
            case 'v': {
                return "";
            }
            case 'b': {
                if (typeName.charAt(1) == 'o') {
                    return "return false;\n";
                }
            }
            case 'c': 
            case 'd': 
            case 'f': 
            case 'i': 
            case 'l': 
            case 's': {
                return "return 0;\n";
            }
        }
        return "return null;\n";
    }

    private String getDotName(String typeName) {
        return typeName.replace('$', '.');
    }

    private boolean isAnonymousTypeName(String typeName) {
        char char0 = this.getSimpleName(typeName).charAt(0);
        return '0' <= char0 && char0 <= '9';
    }

    private String getSimpleName(String qualifiedName) {
        int pos = qualifiedName.lastIndexOf(36);
        if (pos == -1) {
            pos = qualifiedName.lastIndexOf(46);
        }
        return pos == -1 ? qualifiedName : qualifiedName.substring(pos + 1);
    }

    private String getPackageName(String qualifiedName) {
        int pos = qualifiedName.lastIndexOf(46);
        return pos == -1 ? null : qualifiedName.substring(0, pos);
    }

    private boolean isADirectInnerType(String typeName, String nestedTypeName) {
        String end = nestedTypeName.substring(typeName.length() + 1);
        return end.indexOf(36) == -1;
    }

    private boolean isInStaticMethod() {
        return this.fIsInStaticMethod;
    }

    public StringBuffer getSource() {
        return this.fSource;
    }

    public int getCodeSnippetPosition() {
        return this.fCodeSnippetPosition;
    }

    public String getCompilationUnitName() {
        return this.fCompilationUnitName;
    }

    public int getSnippetStart() {
        return this.fCodeSnippetPosition - 2;
    }

    public int getRunMethodStart() {
        return this.fCodeSnippetPosition - this.fRunMethodStartOffset;
    }

    public int getRunMethodLength() {
        return this.fRunMethodLength;
    }

    public boolean isSourceLevelGreaterOrEqual(int major, int minor) {
        return this.fSourceMajorLevel > major || this.fSourceMajorLevel == major && this.fSourceMinorLevel >= minor;
    }
}

