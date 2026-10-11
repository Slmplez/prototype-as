/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.parser;

import org.eclipse.jdt.core.IAnnotatable;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.AnnotationMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.ISourceImport;
import org.eclipse.jdt.internal.compiler.env.ISourceType;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.TypeConverter;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.core.CompilationUnitElementInfo;
import org.eclipse.jdt.internal.core.ImportDeclaration;
import org.eclipse.jdt.internal.core.InitializerElementInfo;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.SourceAnnotationMethodInfo;
import org.eclipse.jdt.internal.core.SourceField;
import org.eclipse.jdt.internal.core.SourceFieldElementInfo;
import org.eclipse.jdt.internal.core.SourceMethod;
import org.eclipse.jdt.internal.core.SourceMethodElementInfo;
import org.eclipse.jdt.internal.core.SourceType;
import org.eclipse.jdt.internal.core.SourceTypeElementInfo;
import org.eclipse.jdt.internal.core.util.Util;

public class SourceTypeConverter
extends TypeConverter {
    public static final int FIELD = 1;
    public static final int CONSTRUCTOR = 2;
    public static final int METHOD = 4;
    public static final int MEMBER_TYPE = 8;
    public static final int FIELD_INITIALIZATION = 16;
    public static final int FIELD_AND_METHOD = 7;
    public static final int LOCAL_TYPE = 32;
    public static final int NONE = 0;
    private int flags;
    private CompilationUnitDeclaration unit;
    private Parser parser;
    private ICompilationUnit cu;
    private char[] source;

    private SourceTypeConverter(int flags, ProblemReporter problemReporter) {
        super(problemReporter, '.');
        this.flags = flags;
    }

    public static CompilationUnitDeclaration buildCompilationUnit(ISourceType[] sourceTypes, int flags, ProblemReporter problemReporter, CompilationResult compilationResult) {
        SourceTypeConverter converter = new SourceTypeConverter(flags, problemReporter);
        try {
            return converter.convert(sourceTypes, compilationResult);
        }
        catch (JavaModelException javaModelException) {
            return null;
        }
    }

    private CompilationUnitDeclaration convert(ISourceType[] sourceTypes, CompilationResult compilationResult) throws JavaModelException {
        this.unit = new CompilationUnitDeclaration(this.problemReporter, compilationResult, 0);
        if (sourceTypes.length == 0) {
            return this.unit;
        }
        SourceTypeElementInfo topLevelTypeInfo = (SourceTypeElementInfo)sourceTypes[0];
        org.eclipse.jdt.core.ICompilationUnit cuHandle = topLevelTypeInfo.getHandle().getCompilationUnit();
        this.cu = (ICompilationUnit)((Object)cuHandle);
        if (this.has1_5Compliance && ((CompilationUnitElementInfo)((JavaElement)((Object)this.cu)).getElementInfo()).annotationNumber > 10 && (this.flags & 0x20) == 0) {
            return new Parser(this.problemReporter, true).dietParse(this.cu, compilationResult);
        }
        int start = topLevelTypeInfo.getNameSourceStart();
        int end = topLevelTypeInfo.getNameSourceEnd();
        String[] packageName = ((PackageFragment)cuHandle.getParent()).names;
        if (packageName.length > 0) {
            this.unit.currentPackage = this.createImportReference(packageName, start, end, false, 0);
        }
        IImportDeclaration[] importDeclarations = topLevelTypeInfo.getHandle().getCompilationUnit().getImports();
        int importCount = importDeclarations.length;
        this.unit.imports = new ImportReference[importCount];
        int i = 0;
        while (i < importCount) {
            ImportDeclaration importDeclaration = (ImportDeclaration)importDeclarations[i];
            ISourceImport sourceImport = (ISourceImport)importDeclaration.getElementInfo();
            String nameWithoutStar = importDeclaration.getNameWithoutStar();
            this.unit.imports[i] = this.createImportReference(Util.splitOn('.', nameWithoutStar, 0, nameWithoutStar.length()), sourceImport.getDeclarationSourceStart(), sourceImport.getDeclarationSourceEnd(), importDeclaration.isOnDemand(), sourceImport.getModifiers());
            ++i;
        }
        try {
            int typeCount = sourceTypes.length;
            TypeDeclaration[] types = new TypeDeclaration[typeCount];
            int i2 = 0;
            while (i2 < typeCount) {
                SourceTypeElementInfo typeInfo = (SourceTypeElementInfo)sourceTypes[i2];
                types[i2] = this.convert((SourceType)typeInfo.getHandle(), compilationResult);
                ++i2;
            }
            this.unit.types = types;
            return this.unit;
        }
        catch (AnonymousMemberFound anonymousMemberFound) {
            return new Parser(this.problemReporter, true).parse(this.cu, compilationResult);
        }
    }

    private Initializer convert(InitializerElementInfo initializerInfo, CompilationResult compilationResult) throws JavaModelException {
        Block block = new Block(0);
        Initializer initializer = new Initializer(block, 0);
        int start = initializerInfo.getDeclarationSourceStart();
        int end = initializerInfo.getDeclarationSourceEnd();
        initializer.sourceStart = initializer.declarationSourceStart = start;
        initializer.sourceEnd = initializer.declarationSourceEnd = end;
        initializer.modifiers = initializerInfo.getModifiers();
        IJavaElement[] children = initializerInfo.getChildren();
        int typesLength = children.length;
        if (typesLength > 0) {
            Statement[] statements = new Statement[typesLength];
            int i = 0;
            while (i < typesLength) {
                SourceType type = (SourceType)children[i];
                TypeDeclaration localType = this.convert(type, compilationResult);
                if ((localType.bits & 0x200) != 0) {
                    QualifiedAllocationExpression expression = new QualifiedAllocationExpression(localType);
                    expression.type = localType.superclass;
                    localType.superclass = null;
                    localType.superInterfaces = null;
                    localType.allocation = expression;
                    statements[i] = expression;
                } else {
                    statements[i] = localType;
                }
                ++i;
            }
            block.statements = statements;
        }
        return initializer;
    }

    private FieldDeclaration convert(SourceField fieldHandle, TypeDeclaration type, CompilationResult compilationResult) throws JavaModelException {
        char[] initializationSource;
        boolean isEnumConstant;
        SourceFieldElementInfo fieldInfo = (SourceFieldElementInfo)fieldHandle.getElementInfo();
        FieldDeclaration field = new FieldDeclaration();
        int start = fieldInfo.getNameSourceStart();
        int end = fieldInfo.getNameSourceEnd();
        field.name = fieldHandle.getElementName().toCharArray();
        field.sourceStart = start;
        field.sourceEnd = end;
        field.declarationSourceStart = fieldInfo.getDeclarationSourceStart();
        field.declarationSourceEnd = fieldInfo.getDeclarationSourceEnd();
        int modifiers = fieldInfo.getModifiers();
        boolean bl = isEnumConstant = (modifiers & 0x4000) != 0;
        if (isEnumConstant) {
            field.modifiers = modifiers & 0xFFFFBFFF;
        } else {
            field.modifiers = modifiers;
            field.type = this.createTypeReference(fieldInfo.getTypeName(), start, end);
        }
        if (this.has1_5Compliance) {
            field.annotations = this.convertAnnotations(fieldHandle);
        }
        if ((this.flags & 0x10) != 0 && (initializationSource = fieldInfo.getInitializationSource()) != null) {
            if (this.parser == null) {
                this.parser = new Parser(this.problemReporter, true);
            }
            this.parser.parse(field, type, this.unit, initializationSource);
        }
        if ((this.flags & 0x20) != 0) {
            IJavaElement[] children = fieldInfo.getChildren();
            int childrenLength = children.length;
            if (childrenLength == 1) {
                field.initialization = this.convert(children[0], isEnumConstant ? field : null, compilationResult);
            } else if (childrenLength > 1) {
                ArrayInitializer initializer = new ArrayInitializer();
                field.initialization = initializer;
                Expression[] expressions = new Expression[childrenLength];
                initializer.expressions = expressions;
                int i = 0;
                while (i < childrenLength) {
                    expressions[i] = this.convert(children[i], isEnumConstant ? field : null, compilationResult);
                    ++i;
                }
            }
        }
        return field;
    }

    private QualifiedAllocationExpression convert(IJavaElement localType, FieldDeclaration enumConstant, CompilationResult compilationResult) throws JavaModelException {
        TypeDeclaration anonymousLocalTypeDeclaration = this.convert((SourceType)localType, compilationResult);
        QualifiedAllocationExpression expression = new QualifiedAllocationExpression(anonymousLocalTypeDeclaration);
        expression.type = anonymousLocalTypeDeclaration.superclass;
        anonymousLocalTypeDeclaration.superclass = null;
        anonymousLocalTypeDeclaration.superInterfaces = null;
        anonymousLocalTypeDeclaration.allocation = expression;
        if (enumConstant != null) {
            anonymousLocalTypeDeclaration.modifiers &= 0xFFFFBFFF;
            expression.enumConstant = enumConstant;
            expression.type = null;
        }
        return expression;
    }

    private AbstractMethodDeclaration convert(SourceMethod methodHandle, SourceMethodElementInfo methodInfo, CompilationResult compilationResult) throws JavaModelException {
        IJavaElement[] children;
        int typesLength;
        char[][] exceptionTypeNames;
        int exceptionCount;
        int i;
        int argumentCount;
        AbstractMethodDeclaration method;
        AbstractMethodDeclaration decl;
        int parameterCount;
        int start = methodInfo.getNameSourceStart();
        int end = methodInfo.getNameSourceEnd();
        TypeParameter[] typeParams = null;
        char[][] typeParameterNames = methodInfo.getTypeParameterNames();
        if (typeParameterNames != null && (parameterCount = typeParameterNames.length) > 0) {
            char[][][] typeParameterBounds = methodInfo.getTypeParameterBounds();
            typeParams = new TypeParameter[parameterCount];
            int i2 = 0;
            while (i2 < parameterCount) {
                typeParams[i2] = this.createTypeParameter(typeParameterNames[i2], typeParameterBounds[i2], start, end);
                ++i2;
            }
        }
        int modifiers = methodInfo.getModifiers();
        if (methodInfo.isConstructor()) {
            decl = new ConstructorDeclaration(compilationResult);
            decl.bits &= 0xFFFFFF7F;
            method = decl;
            decl.typeParameters = typeParams;
        } else {
            if (methodInfo.isAnnotationMethod()) {
                boolean hasDefaultValue;
                AnnotationMethodDeclaration annotationMethodDeclaration = new AnnotationMethodDeclaration(compilationResult);
                SourceAnnotationMethodInfo annotationMethodInfo = (SourceAnnotationMethodInfo)methodInfo;
                boolean bl = hasDefaultValue = annotationMethodInfo.defaultValueStart != -1 || annotationMethodInfo.defaultValueEnd != -1;
                if ((this.flags & 0x10) != 0 && hasDefaultValue) {
                    char[] defaultValueSource = CharOperation.subarray(this.getSource(), annotationMethodInfo.defaultValueStart, annotationMethodInfo.defaultValueEnd + 1);
                    if (defaultValueSource != null) {
                        Expression expression = this.parseMemberValue(defaultValueSource);
                        if (expression != null) {
                            annotationMethodDeclaration.defaultValue = expression;
                        }
                    } else {
                        hasDefaultValue = false;
                    }
                }
                if (hasDefaultValue) {
                    modifiers |= 0x20000;
                }
                decl = annotationMethodDeclaration;
            } else {
                decl = new MethodDeclaration(compilationResult);
            }
            ((MethodDeclaration)decl).returnType = this.createTypeReference(methodInfo.getReturnTypeName(), start, end);
            ((MethodDeclaration)decl).typeParameters = typeParams;
            method = decl;
        }
        method.selector = methodHandle.getElementName().toCharArray();
        boolean isVarargs = (modifiers & 0x80) != 0;
        method.modifiers = modifiers & 0xFFFFFF7F;
        method.sourceStart = start;
        method.sourceEnd = end;
        method.declarationSourceStart = methodInfo.getDeclarationSourceStart();
        method.declarationSourceEnd = methodInfo.getDeclarationSourceEnd();
        if (this.has1_5Compliance) {
            method.annotations = this.convertAnnotations(methodHandle);
        }
        String[] argumentTypeSignatures = methodHandle.getParameterTypes();
        char[][] argumentNames = methodInfo.getArgumentNames();
        int n = argumentCount = argumentTypeSignatures == null ? 0 : argumentTypeSignatures.length;
        if (argumentCount > 0) {
            long position = ((long)start << 32) + (long)end;
            method.arguments = new Argument[argumentCount];
            i = 0;
            while (i < argumentCount) {
                TypeReference typeReference = this.createTypeReference(argumentTypeSignatures[i], start, end);
                if (isVarargs && i == argumentCount - 1) {
                    typeReference.bits |= 0x4000;
                }
                method.arguments[i] = new Argument(argumentNames[i], position, typeReference, 0);
                ++i;
            }
        }
        int n2 = exceptionCount = (exceptionTypeNames = methodInfo.getExceptionTypeNames()) == null ? 0 : exceptionTypeNames.length;
        if (exceptionCount > 0) {
            method.thrownExceptions = new TypeReference[exceptionCount];
            i = 0;
            while (i < exceptionCount) {
                method.thrownExceptions[i] = this.createTypeReference(exceptionTypeNames[i], start, end);
                ++i;
            }
        }
        if ((this.flags & 0x20) != 0 && (typesLength = (children = methodInfo.getChildren()).length) != 0) {
            Statement[] statements = new Statement[typesLength];
            int i3 = 0;
            while (i3 < typesLength) {
                SourceType type = (SourceType)children[i3];
                TypeDeclaration localType = this.convert(type, compilationResult);
                if ((localType.bits & 0x200) != 0) {
                    QualifiedAllocationExpression expression = new QualifiedAllocationExpression(localType);
                    expression.type = localType.superclass;
                    localType.superclass = null;
                    localType.superInterfaces = null;
                    localType.allocation = expression;
                    statements[i3] = expression;
                } else {
                    statements[i3] = localType;
                }
                ++i3;
            }
            method.statements = statements;
        }
        return method;
    }

    private TypeDeclaration convert(SourceType typeHandle, CompilationResult compilationResult) throws JavaModelException {
        boolean needMethod;
        int length;
        char[][] interfaceNames;
        int interfaceCount;
        int i;
        char[][] typeParameterNames;
        int end;
        int start;
        SourceTypeElementInfo typeInfo = (SourceTypeElementInfo)typeHandle.getElementInfo();
        if (typeInfo.isAnonymousMember()) {
            throw new AnonymousMemberFound();
        }
        TypeDeclaration type = new TypeDeclaration(compilationResult);
        if (typeInfo.getEnclosingType() == null) {
            if (typeHandle.isAnonymous()) {
                type.name = CharOperation.NO_CHAR;
                type.bits |= 0x300;
            } else if (typeHandle.isLocal()) {
                type.bits |= 0x100;
            }
        } else {
            type.bits |= 0x400;
        }
        if ((type.bits & 0x200) == 0) {
            type.name = typeInfo.getName();
        }
        type.name = typeInfo.getName();
        type.sourceStart = start = typeInfo.getNameSourceStart();
        type.sourceEnd = end = typeInfo.getNameSourceEnd();
        type.modifiers = typeInfo.getModifiers();
        type.declarationSourceStart = typeInfo.getDeclarationSourceStart();
        type.bodyEnd = type.declarationSourceEnd = typeInfo.getDeclarationSourceEnd();
        if (this.has1_5Compliance) {
            type.annotations = this.convertAnnotations(typeHandle);
        }
        if ((typeParameterNames = typeInfo.getTypeParameterNames()).length > 0) {
            int parameterCount = typeParameterNames.length;
            char[][][] typeParameterBounds = typeInfo.getTypeParameterBounds();
            type.typeParameters = new TypeParameter[parameterCount];
            i = 0;
            while (i < parameterCount) {
                type.typeParameters[i] = this.createTypeParameter(typeParameterNames[i], typeParameterBounds[i], start, end);
                ++i;
            }
        }
        if (typeInfo.getSuperclassName() != null) {
            type.superclass = this.createTypeReference(typeInfo.getSuperclassName(), start, end, true);
            type.superclass.bits |= 0x10;
        }
        int n = interfaceCount = (interfaceNames = typeInfo.getInterfaceNames()) == null ? 0 : interfaceNames.length;
        if (interfaceCount > 0) {
            type.superInterfaces = new TypeReference[interfaceCount];
            i = 0;
            while (i < interfaceCount) {
                type.superInterfaces[i] = this.createTypeReference(interfaceNames[i], start, end, true);
                type.superInterfaces[i].bits |= 0x10;
                ++i;
            }
        }
        if ((this.flags & 8) != 0) {
            SourceType[] sourceMemberTypes = typeInfo.getMemberTypeHandles();
            int sourceMemberTypeCount = sourceMemberTypes.length;
            type.memberTypes = new TypeDeclaration[sourceMemberTypeCount];
            int i2 = 0;
            while (i2 < sourceMemberTypeCount) {
                type.memberTypes[i2] = this.convert(sourceMemberTypes[i2], compilationResult);
                type.memberTypes[i2].enclosingType = type;
                ++i2;
            }
        }
        InitializerElementInfo[] initializers = null;
        int initializerCount = 0;
        if ((this.flags & 0x20) != 0) {
            initializers = typeInfo.getInitializers();
            initializerCount = initializers.length;
        }
        SourceField[] sourceFields = null;
        int sourceFieldCount = 0;
        if ((this.flags & 1) != 0) {
            sourceFields = typeInfo.getFieldHandles();
            sourceFieldCount = sourceFields.length;
        }
        if ((length = initializerCount + sourceFieldCount) > 0) {
            type.fields = new FieldDeclaration[length];
            int i3 = 0;
            while (i3 < initializerCount) {
                type.fields[i3] = this.convert(initializers[i3], compilationResult);
                ++i3;
            }
            int index = 0;
            int i4 = initializerCount;
            while (i4 < length) {
                type.fields[i4] = this.convert(sourceFields[index++], type, compilationResult);
                ++i4;
            }
        }
        boolean needConstructor = (this.flags & 2) != 0;
        boolean bl = needMethod = (this.flags & 4) != 0;
        if (needConstructor || needMethod) {
            boolean isAbstract;
            SourceMethod[] sourceMethods = typeInfo.getMethodHandles();
            int sourceMethodCount = sourceMethods.length;
            int extraConstructor = 0;
            int methodCount = 0;
            int kind = TypeDeclaration.kind(type.modifiers);
            boolean bl2 = isAbstract = kind == 2 || kind == 4;
            if (!isAbstract) {
                extraConstructor = needConstructor ? 1 : 0;
                int i5 = 0;
                while (i5 < sourceMethodCount) {
                    if (sourceMethods[i5].isConstructor()) {
                        if (needConstructor) {
                            extraConstructor = 0;
                            ++methodCount;
                        }
                    } else if (needMethod) {
                        ++methodCount;
                    }
                    ++i5;
                }
            } else {
                methodCount = needMethod ? sourceMethodCount : 0;
            }
            type.methods = new AbstractMethodDeclaration[methodCount + extraConstructor];
            if (extraConstructor != 0) {
                type.methods[0] = type.createDefaultConstructor(false, false);
            }
            int index = 0;
            boolean hasAbstractMethods = false;
            int i6 = 0;
            while (i6 < sourceMethodCount) {
                SourceMethod sourceMethod = sourceMethods[i6];
                SourceMethodElementInfo methodInfo = (SourceMethodElementInfo)sourceMethod.getElementInfo();
                boolean isConstructor = methodInfo.isConstructor();
                if ((methodInfo.getModifiers() & 0x400) != 0) {
                    hasAbstractMethods = true;
                }
                if (isConstructor && needConstructor || !isConstructor && needMethod) {
                    AbstractMethodDeclaration method = this.convert(sourceMethod, methodInfo, compilationResult);
                    if (isAbstract || method.isAbstract()) {
                        method.modifiers |= 0x1000000;
                    }
                    type.methods[extraConstructor + index++] = method;
                }
                ++i6;
            }
            if (hasAbstractMethods) {
                type.bits |= 0x800;
            }
        }
        return type;
    }

    private Annotation[] convertAnnotations(IAnnotatable element) throws JavaModelException {
        IAnnotation[] annotations = element.getAnnotations();
        int length = annotations.length;
        Annotation[] astAnnotations = new Annotation[length];
        if (length > 0) {
            char[] cuSource = this.getSource();
            int recordedAnnotations = 0;
            int i = 0;
            while (i < length) {
                Expression expression;
                int end;
                ISourceRange positions = annotations[i].getSourceRange();
                int start = positions.getOffset();
                char[] annotationSource = CharOperation.subarray(cuSource, start, end = start + positions.getLength());
                if (annotationSource != null && (expression = this.parseMemberValue(annotationSource)) instanceof Annotation) {
                    astAnnotations[recordedAnnotations++] = (Annotation)expression;
                }
                ++i;
            }
            if (length != recordedAnnotations) {
                Annotation[] annotationArray = astAnnotations;
                astAnnotations = new Annotation[recordedAnnotations];
                System.arraycopy(annotationArray, 0, astAnnotations, 0, recordedAnnotations);
            }
        }
        return astAnnotations;
    }

    private char[] getSource() {
        if (this.source == null) {
            this.source = this.cu.getContents();
        }
        return this.source;
    }

    private Expression parseMemberValue(char[] memberValue) {
        if (this.parser == null) {
            this.parser = new Parser(this.problemReporter, true);
        }
        return this.parser.parseMemberValue(memberValue, 0, memberValue.length, this.unit);
    }

    static class AnonymousMemberFound
    extends RuntimeException {
        private static final long serialVersionUID = 1L;

        AnonymousMemberFound() {
        }
    }
}

