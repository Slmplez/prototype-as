/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import java.util.ArrayList;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.ast.ArrayReference;
import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConditionalExpression;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.CaptureBinding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.PolymorphicMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.RawTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.core.util.BindingKeyParser;
import org.eclipse.jdt.internal.core.util.BindingKeyResolver;
import org.eclipse.jdt.internal.core.util.Util;

public class BindingKeyResolver
extends BindingKeyParser {
    Compiler compiler;
    Binding compilerBinding;
    char[][] compoundName;
    int dimension;
    LookupEnvironment environment;
    ReferenceBinding genericType;
    MethodBinding methodBinding;
    AnnotationBinding annotationBinding;
    char[] secondarySimpleName;
    CompilationUnitDeclaration parsedUnit;
    BlockScope scope;
    TypeBinding typeBinding;
    TypeDeclaration typeDeclaration;
    ArrayList types = new ArrayList();
    int wildcardRank;
    CompilationUnitDeclaration outerMostParsedUnit;
    HashtableOfObject resolvedUnits;

    private BindingKeyResolver(BindingKeyParser parser, Compiler compiler, LookupEnvironment environment, CompilationUnitDeclaration outerMostParsedUnit, HashtableOfObject parsedUnits) {
        super(parser);
        this.compiler = compiler;
        this.environment = environment;
        this.outerMostParsedUnit = outerMostParsedUnit;
        this.resolvedUnits = parsedUnits;
    }

    public BindingKeyResolver(String key, Compiler compiler, LookupEnvironment environment) {
        super(key);
        this.compiler = compiler;
        this.environment = environment;
        this.resolvedUnits = new HashtableOfObject();
    }

    public char[][] compoundName() {
        return this.compoundName;
    }

    public void consumeAnnotation() {
        AnnotationBinding[] annotationBindings;
        int size = this.types.size();
        if (size == 0) {
            return;
        }
        Binding annotationType = ((BindingKeyResolver)this.types.get((int)(size - 1))).compilerBinding;
        if (this.compilerBinding == null && this.typeBinding instanceof ReferenceBinding) {
            annotationBindings = ((ReferenceBinding)this.typeBinding).getAnnotations();
        } else if (this.compilerBinding instanceof MethodBinding) {
            annotationBindings = ((MethodBinding)this.compilerBinding).getAnnotations();
        } else if (this.compilerBinding instanceof VariableBinding) {
            annotationBindings = ((VariableBinding)this.compilerBinding).getAnnotations();
        } else {
            return;
        }
        int i = 0;
        int length = annotationBindings.length;
        while (i < length) {
            AnnotationBinding binding = annotationBindings[i];
            if (binding.getAnnotationType() == annotationType) {
                this.annotationBinding = binding;
                break;
            }
            ++i;
        }
    }

    public void consumeArrayDimension(char[] brakets) {
        this.dimension = brakets.length;
    }

    public void consumeBaseType(char[] baseTypeSig) {
        this.compoundName = new char[][]{this.getKey().toCharArray()};
        TypeBinding baseTypeBinding = this.getBaseTypeBinding(baseTypeSig);
        if (baseTypeBinding != null) {
            this.typeBinding = baseTypeBinding;
        }
    }

    public void consumeCapture(int position) {
        CompilationUnitDeclaration outerParsedUnit;
        CompilationUnitDeclaration compilationUnitDeclaration = outerParsedUnit = this.outerMostParsedUnit == null ? this.parsedUnit : this.outerMostParsedUnit;
        if (outerParsedUnit == null) {
            return;
        }
        Binding wildcardBinding = ((BindingKeyResolver)this.types.get((int)0)).compilerBinding;
        class CaptureFinder
        extends ASTVisitor {
            CaptureBinding capture;
            final /* synthetic */ BindingKeyResolver this$0;
            private final /* synthetic */ int val$position;
            private final /* synthetic */ Binding val$wildcardBinding;

            CaptureFinder(BindingKeyResolver bindingKeyResolver, int n, Binding binding) {
                this.this$0 = bindingKeyResolver;
                this.val$position = n;
                this.val$wildcardBinding = binding;
            }

            boolean checkType(TypeBinding binding) {
                if (binding == null) {
                    return false;
                }
                switch (binding.kind()) {
                    case 260: {
                        TypeBinding[] arguments = ((ParameterizedTypeBinding)binding).arguments;
                        if (arguments == null) {
                            return false;
                        }
                        int i = 0;
                        int length = arguments.length;
                        while (i < length) {
                            if (this.checkType(arguments[i])) {
                                return true;
                            }
                            ++i;
                        }
                        break;
                    }
                    case 516: {
                        return this.checkType(((WildcardBinding)binding).bound);
                    }
                    case 8196: {
                        if (this.checkType(((WildcardBinding)binding).bound)) {
                            return true;
                        }
                        TypeBinding[] otherBounds = ((WildcardBinding)binding).otherBounds;
                        int i = 0;
                        int length = otherBounds.length;
                        while (i < length) {
                            if (this.checkType(otherBounds[i])) {
                                return true;
                            }
                            ++i;
                        }
                        break;
                    }
                    case 68: {
                        return this.checkType(((ArrayBinding)binding).leafComponentType);
                    }
                    case 4100: {
                        if (!binding.isCapture()) break;
                        CaptureBinding captureBinding = (CaptureBinding)binding;
                        if (captureBinding.position != this.val$position || captureBinding.wildcard != this.val$wildcardBinding) break;
                        this.capture = captureBinding;
                        return true;
                    }
                }
                return false;
            }

            public boolean visit(SingleNameReference singleNameReference, BlockScope blockScope) {
                if (this.checkType(singleNameReference.resolvedType)) {
                    return false;
                }
                return super.visit(singleNameReference, blockScope);
            }

            public boolean visit(QualifiedNameReference qualifiedNameReference, BlockScope blockScope) {
                if (this.checkType(qualifiedNameReference.resolvedType)) {
                    return false;
                }
                return super.visit(qualifiedNameReference, blockScope);
            }

            public boolean visit(MessageSend messageSend, BlockScope blockScope) {
                if (this.checkType(messageSend.resolvedType)) {
                    return false;
                }
                return super.visit(messageSend, blockScope);
            }

            public boolean visit(FieldReference fieldReference, BlockScope blockScope) {
                if (this.checkType(fieldReference.resolvedType)) {
                    return false;
                }
                return super.visit(fieldReference, blockScope);
            }

            public boolean visit(ConditionalExpression conditionalExpression, BlockScope blockScope) {
                if (this.checkType(conditionalExpression.resolvedType)) {
                    return false;
                }
                return super.visit(conditionalExpression, blockScope);
            }

            public boolean visit(CastExpression castExpression, BlockScope blockScope) {
                if (this.checkType(castExpression.resolvedType)) {
                    return false;
                }
                return super.visit(castExpression, blockScope);
            }

            public boolean visit(Assignment assignment, BlockScope blockScope) {
                if (this.checkType(assignment.resolvedType)) {
                    return false;
                }
                return super.visit(assignment, blockScope);
            }

            public boolean visit(ArrayReference arrayReference, BlockScope blockScope) {
                if (this.checkType(arrayReference.resolvedType)) {
                    return false;
                }
                return super.visit(arrayReference, blockScope);
            }
        }
        CaptureFinder captureFinder = new CaptureFinder(this, position, wildcardBinding);
        outerParsedUnit.traverse((ASTVisitor)captureFinder, outerParsedUnit.scope);
        this.typeBinding = captureFinder.capture;
    }

    public void consumeException() {
        this.types = new ArrayList();
    }

    public void consumeField(char[] fieldName) {
        if (this.typeBinding == null) {
            return;
        }
        FieldBinding[] fields = ((ReferenceBinding)this.typeBinding).availableFields();
        int i = 0;
        int length = fields.length;
        while (i < length) {
            FieldBinding field = fields[i];
            if (CharOperation.equals(fieldName, field.name)) {
                this.typeBinding = null;
                this.compilerBinding = field;
                return;
            }
            ++i;
        }
    }

    public void consumeParameterizedGenericMethod() {
        if (this.methodBinding == null) {
            return;
        }
        TypeBinding[] arguments = this.getTypeBindingArguments();
        if (arguments == null) {
            this.methodBinding = null;
            this.compilerBinding = null;
            return;
        }
        this.methodBinding = arguments.length != this.methodBinding.typeVariables().length ? this.environment.createParameterizedGenericMethod(this.methodBinding, (RawTypeBinding)null) : this.environment.createParameterizedGenericMethod(this.methodBinding, arguments);
        this.compilerBinding = this.methodBinding;
    }

    public void consumeLocalType(char[] uniqueKey) {
        LocalTypeBinding[] localTypeBindings = this.parsedUnit.localTypes;
        int i = 0;
        while (i < this.parsedUnit.localTypeCount) {
            if (CharOperation.equals(uniqueKey, localTypeBindings[i].computeUniqueKey(false))) {
                this.typeBinding = localTypeBindings[i];
                return;
            }
            ++i;
        }
    }

    public void consumeLocalVar(char[] varName, int occurrenceCount) {
        if (this.scope == null) {
            if (this.methodBinding == null) {
                return;
            }
            this.scope = this.methodBinding.sourceMethod().scope;
        }
        int i = 0;
        while (i < this.scope.localIndex) {
            LocalVariableBinding local = this.scope.locals[i];
            if (CharOperation.equals(local.name, varName) && occurrenceCount-- == 0) {
                this.methodBinding = null;
                this.compilerBinding = local;
                return;
            }
            ++i;
        }
    }

    public void consumeMethod(char[] selector, char[] signature) {
        if (this.typeBinding == null) {
            return;
        }
        MethodBinding[] methods = ((ReferenceBinding)this.typeBinding).availableMethods();
        int i = 0;
        int methodLength = methods.length;
        while (i < methodLength) {
            MethodBinding method = methods[i];
            if (CharOperation.equals(selector, method.selector) || selector.length == 0 && method.isConstructor()) {
                char[] methodSignature = method.genericSignature();
                if (methodSignature == null) {
                    methodSignature = method.signature();
                }
                if (CharOperation.equals(signature, methodSignature)) {
                    this.typeBinding = null;
                    this.methodBinding = method;
                    this.compilerBinding = this.methodBinding;
                    return;
                }
                if ((method.tagBits & 0x10000000000000L) != 0L) {
                    this.typeBinding = null;
                    char[][] typeParameters = Signature.getParameterTypes(signature);
                    int length = typeParameters.length;
                    TypeBinding[] parameterTypes = new TypeBinding[length];
                    int j = 0;
                    while (j < length) {
                        parameterTypes[j] = this.getType(typeParameters[j]);
                        ++j;
                    }
                    PolymorphicMethodBinding polymorphicMethod = this.environment.createPolymorphicMethod(method, parameterTypes);
                    this.methodBinding = polymorphicMethod;
                    this.methodBinding = this.environment.updatePolymorphicMethodReturnType(polymorphicMethod, this.getType(Signature.getReturnType(signature)));
                    this.compilerBinding = this.methodBinding;
                    return;
                }
            }
            ++i;
        }
    }

    private TypeBinding getType(char[] type) {
        TypeBinding binding = null;
        int length = type.length;
        switch (length) {
            case 1: {
                switch (type[0]) {
                    case 'I': {
                        binding = TypeBinding.INT;
                        break;
                    }
                    case 'Z': {
                        binding = TypeBinding.BOOLEAN;
                        break;
                    }
                    case 'V': {
                        binding = TypeBinding.VOID;
                        break;
                    }
                    case 'C': {
                        binding = TypeBinding.CHAR;
                        break;
                    }
                    case 'D': {
                        binding = TypeBinding.DOUBLE;
                        break;
                    }
                    case 'B': {
                        binding = TypeBinding.BYTE;
                        break;
                    }
                    case 'F': {
                        binding = TypeBinding.FLOAT;
                        break;
                    }
                    case 'J': {
                        binding = TypeBinding.LONG;
                        break;
                    }
                    case 'S': {
                        binding = TypeBinding.SHORT;
                    }
                }
                break;
            }
            default: {
                int dimensions = 0;
                int start = 0;
                while (type[start] == '[') {
                    ++start;
                    ++dimensions;
                }
                binding = this.environment.getType(CharOperation.splitOn('/', type, start + 1, length - 1));
                if (dimensions == 0) break;
                binding = this.environment.createArrayType(binding, dimensions);
            }
        }
        return binding;
    }

    public void consumeMemberType(char[] simpleTypeName) {
        this.typeBinding = this.getTypeBinding(simpleTypeName);
    }

    public void consumePackage(char[] pkgName) {
        this.compoundName = CharOperation.splitOn('/', pkgName);
        this.compilerBinding = new PackageBinding(this.compoundName, null, this.environment);
    }

    public void consumeParameterizedType(char[] simpleTypeName, boolean isRaw) {
        if (this.typeBinding == null) {
            return;
        }
        TypeBinding[] arguments = this.getTypeBindingArguments();
        if (arguments == null) {
            this.typeBinding = null;
            this.genericType = null;
            return;
        }
        if (simpleTypeName != null) {
            this.genericType = this.genericType == null ? ((ReferenceBinding)this.typeBinding).getMemberType(simpleTypeName) : this.genericType.getMemberType(simpleTypeName);
            this.typeBinding = !isRaw ? this.environment.createParameterizedType(this.genericType, arguments, (ReferenceBinding)this.typeBinding) : this.environment.createRawType(this.genericType, (ReferenceBinding)this.typeBinding);
        } else {
            this.genericType = (ReferenceBinding)this.typeBinding;
            ReferenceBinding enclosing = this.genericType.enclosingType();
            if (enclosing != null) {
                enclosing = (ReferenceBinding)this.environment.convertToRawType(enclosing, false);
            }
            this.typeBinding = this.environment.createParameterizedType(this.genericType, arguments, enclosing);
        }
    }

    public void consumeParser(BindingKeyParser parser) {
        this.types.add(parser);
    }

    public void consumeScope(int scopeNumber) {
        if (this.scope == null) {
            if (this.methodBinding == null) {
                return;
            }
            this.scope = this.methodBinding.sourceMethod().scope;
        }
        if (scopeNumber >= this.scope.subscopeCount) {
            return;
        }
        this.scope = (BlockScope)this.scope.subscopes[scopeNumber];
    }

    public void consumeRawType() {
        if (this.typeBinding == null) {
            return;
        }
        this.typeBinding = this.environment.convertToRawType(this.typeBinding, false);
    }

    public void consumeSecondaryType(char[] simpleTypeName) {
        this.secondarySimpleName = simpleTypeName;
    }

    public void consumeFullyQualifiedName(char[] fullyQualifiedName) {
        this.compoundName = CharOperation.splitOn('/', fullyQualifiedName);
    }

    public void consumeTopLevelType() {
        char[] fileName;
        this.parsedUnit = this.getCompilationUnitDeclaration();
        if (this.parsedUnit != null && this.compiler != null && !this.resolvedUnits.containsKey(fileName = this.parsedUnit.getFileName())) {
            this.compiler.process(this.parsedUnit, this.compiler.totalUnits + 1);
            this.resolvedUnits.put(fileName, fileName);
        }
        if (this.parsedUnit == null) {
            this.typeBinding = this.getBinaryBinding();
        } else {
            char[] typeName = this.secondarySimpleName == null ? this.compoundName[this.compoundName.length - 1] : this.secondarySimpleName;
            this.typeBinding = this.getTypeBinding(typeName);
        }
    }

    public void consumeKey() {
        if (this.typeBinding != null) {
            this.typeBinding = this.getArrayBinding(this.dimension, this.typeBinding);
            this.compilerBinding = this.typeBinding;
        }
    }

    public void consumeTypeVariable(char[] position, char[] typeVariableName) {
        TypeVariableBinding[] typeVariableBindings;
        if (position.length > 0) {
            if (this.typeBinding == null) {
                return;
            }
            int pos = Integer.parseInt(new String(position));
            MethodBinding[] methods = ((ReferenceBinding)this.typeBinding).availableMethods();
            if (methods != null && pos < methods.length) {
                this.methodBinding = methods[pos];
            }
        }
        if (this.methodBinding != null) {
            typeVariableBindings = this.methodBinding.typeVariables();
        } else if (this.typeBinding != null) {
            typeVariableBindings = this.typeBinding.typeVariables();
        } else {
            return;
        }
        int i = 0;
        int length = typeVariableBindings.length;
        while (i < length) {
            TypeVariableBinding typeVariableBinding = typeVariableBindings[i];
            if (CharOperation.equals(typeVariableName, typeVariableBinding.sourceName())) {
                this.typeBinding = typeVariableBinding;
                return;
            }
            ++i;
        }
    }

    public void consumeTypeWithCapture() {
        BindingKeyResolver resolver = (BindingKeyResolver)this.types.get(0);
        this.typeBinding = (TypeBinding)resolver.compilerBinding;
    }

    public void consumeWildcardRank(int aRank) {
        this.wildcardRank = aRank;
    }

    public void consumeWildCard(int kind) {
        switch (kind) {
            case 1: 
            case 2: {
                BindingKeyResolver boundResolver = (BindingKeyResolver)this.types.get(0);
                Binding boundBinding = boundResolver.compilerBinding;
                if (boundBinding instanceof TypeBinding) {
                    this.typeBinding = this.environment.createWildcard((ReferenceBinding)this.typeBinding, this.wildcardRank, (TypeBinding)boundBinding, null, kind);
                    break;
                }
                this.typeBinding = null;
                break;
            }
            case 0: {
                this.typeBinding = this.environment.createWildcard((ReferenceBinding)this.typeBinding, this.wildcardRank, null, null, kind);
            }
        }
    }

    public AnnotationBinding getAnnotationBinding() {
        return this.annotationBinding;
    }

    private TypeBinding getArrayBinding(int dim, TypeBinding binding) {
        if (binding == null) {
            return null;
        }
        if (dim == 0) {
            return binding;
        }
        return this.environment.createArrayType(binding, dim);
    }

    private TypeBinding getBaseTypeBinding(char[] signature) {
        switch (signature[0]) {
            case 'I': {
                return TypeBinding.INT;
            }
            case 'Z': {
                return TypeBinding.BOOLEAN;
            }
            case 'V': {
                return TypeBinding.VOID;
            }
            case 'C': {
                return TypeBinding.CHAR;
            }
            case 'D': {
                return TypeBinding.DOUBLE;
            }
            case 'B': {
                return TypeBinding.BYTE;
            }
            case 'F': {
                return TypeBinding.FLOAT;
            }
            case 'J': {
                return TypeBinding.LONG;
            }
            case 'S': {
                return TypeBinding.SHORT;
            }
            case 'N': {
                return TypeBinding.NULL;
            }
        }
        return null;
    }

    private TypeBinding getBinaryBinding() {
        if (this.compoundName.length == 0) {
            return null;
        }
        return this.environment.getType(this.compoundName);
    }

    public CompilationUnitDeclaration getCompilationUnitDeclaration() {
        Object name = this.compoundName;
        if (((char[][])name).length == 0) {
            return null;
        }
        if (this.environment == null) {
            return null;
        }
        ReferenceBinding binding = this.environment.getType((char[][])name);
        if (!(binding instanceof SourceTypeBinding)) {
            if (this.secondarySimpleName == null) {
                return null;
            }
            int length = ((char[][])name).length;
            char[][] cArray = name;
            char[][] cArrayArray = new char[length][];
            name = cArrayArray;
            System.arraycopy(cArray, 0, cArrayArray, 0, length - 1);
            name[length - 1] = this.secondarySimpleName;
            binding = this.environment.getType((char[][])name);
            if (!(binding instanceof SourceTypeBinding)) {
                return null;
            }
        }
        SourceTypeBinding sourceTypeBinding = (SourceTypeBinding)binding;
        if (sourceTypeBinding.scope == null) {
            return null;
        }
        return sourceTypeBinding.scope.compilationUnitScope().referenceContext;
    }

    public Binding getCompilerBinding() {
        try {
            this.parse();
            return this.compilerBinding;
        }
        catch (RuntimeException e) {
            Util.log(e, "Could not create binding from binding key: " + this.getKey());
            return null;
        }
    }

    private TypeBinding getTypeBinding(char[] simpleTypeName) {
        TypeDeclaration[] typeDeclarations;
        if (this.typeBinding instanceof ReferenceBinding) {
            return ((ReferenceBinding)this.typeBinding).getMemberType(simpleTypeName);
        }
        Object object = this.typeDeclaration == null ? (this.parsedUnit == null ? null : this.parsedUnit.types) : (typeDeclarations = this.typeDeclaration.memberTypes);
        if (typeDeclarations == null) {
            return null;
        }
        int i = 0;
        int length = typeDeclarations.length;
        while (i < length) {
            TypeDeclaration declaration = typeDeclarations[i];
            if (CharOperation.equals(simpleTypeName, declaration.name)) {
                this.typeDeclaration = declaration;
                return declaration.binding;
            }
            ++i;
        }
        return null;
    }

    private TypeBinding[] getTypeBindingArguments() {
        int size = this.types.size();
        TypeBinding[] arguments = new TypeBinding[size];
        int i = 0;
        while (i < size) {
            BindingKeyResolver resolver = (BindingKeyResolver)this.types.get(i);
            TypeBinding compilerBinding2 = (TypeBinding)resolver.compilerBinding;
            if (compilerBinding2 == null) {
                this.types = new ArrayList();
                return null;
            }
            arguments[i] = compilerBinding2;
            ++i;
        }
        this.types = new ArrayList();
        return arguments;
    }

    public void malformedKey() {
        this.compoundName = CharOperation.NO_CHAR_CHAR;
    }

    public BindingKeyParser newParser() {
        return new BindingKeyResolver(this, this.compiler, this.environment, this.outerMostParsedUnit == null ? this.parsedUnit : this.outerMostParsedUnit, this.resolvedUnits);
    }

    public String toString() {
        return this.getKey();
    }
}

