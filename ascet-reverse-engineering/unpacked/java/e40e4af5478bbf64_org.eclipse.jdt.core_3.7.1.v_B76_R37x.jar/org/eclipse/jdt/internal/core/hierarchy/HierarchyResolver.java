/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.jdt.internal.core.hierarchy;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.IErrorHandlingPolicy;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.IGenericType;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.env.ISourceType;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.ITypeRequestor;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.SourceTypeConverter;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.Messages;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.Member;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.SourceTypeElementInfo;
import org.eclipse.jdt.internal.core.hierarchy.HierarchyBuilder;
import org.eclipse.jdt.internal.core.hierarchy.HierarchyType;
import org.eclipse.jdt.internal.core.hierarchy.TypeHierarchy;
import org.eclipse.jdt.internal.core.util.ASTNodeFinder;
import org.eclipse.jdt.internal.core.util.HandleFactory;

public class HierarchyResolver
implements ITypeRequestor {
    private ReferenceBinding focusType;
    private boolean superTypesOnly;
    private boolean hasMissingSuperClass;
    LookupEnvironment lookupEnvironment;
    private CompilerOptions options;
    HierarchyBuilder builder;
    private ReferenceBinding[] typeBindings;
    private int typeIndex;
    private IGenericType[] typeModels;
    private static final CompilationUnitDeclaration FakeUnit;

    static {
        IErrorHandlingPolicy policy = DefaultErrorHandlingPolicies.exitAfterAllProblems();
        ProblemReporter problemReporter = new ProblemReporter(policy, new CompilerOptions(), new DefaultProblemFactory());
        CompilationResult result = new CompilationResult(CharOperation.NO_CHAR, 0, 0, 0);
        FakeUnit = new CompilationUnitDeclaration(problemReporter, result, 0);
    }

    public HierarchyResolver(INameEnvironment nameEnvironment, Map settings, HierarchyBuilder builder, IProblemFactory problemFactory) {
        this.options = new CompilerOptions(settings);
        IErrorHandlingPolicy policy = DefaultErrorHandlingPolicies.exitAfterAllProblems();
        ProblemReporter problemReporter = new ProblemReporter(policy, this.options, problemFactory);
        this.setEnvironment(new LookupEnvironment(this, this.options, problemReporter, nameEnvironment), builder);
    }

    public HierarchyResolver(LookupEnvironment lookupEnvironment, HierarchyBuilder builder) {
        this.setEnvironment(lookupEnvironment, builder);
    }

    public void accept(IBinaryType binaryType, PackageBinding packageBinding, AccessRestriction accessRestriction) {
        IProgressMonitor progressMonitor = this.builder.hierarchy.progressMonitor;
        if (progressMonitor != null && progressMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        BinaryTypeBinding typeBinding = this.lookupEnvironment.createBinaryTypeFrom(binaryType, packageBinding, accessRestriction);
        try {
            this.remember(binaryType, (ReferenceBinding)typeBinding);
        }
        catch (AbortCompilation abortCompilation) {}
    }

    public void accept(ICompilationUnit sourceUnit, AccessRestriction accessRestriction) {
        this.lookupEnvironment.problemReporter.abortDueToInternalError(Messages.accept_cannot + sourceUnit.getFileName());
    }

    public void accept(ISourceType[] sourceTypes, PackageBinding packageBinding, AccessRestriction accessRestriction) {
        IProgressMonitor progressMonitor = this.builder.hierarchy.progressMonitor;
        if (progressMonitor != null && progressMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        ISourceType sourceType = sourceTypes[0];
        while (sourceType.getEnclosingType() != null) {
            sourceType = sourceType.getEnclosingType();
        }
        CompilationResult result = new CompilationResult(sourceType.getFileName(), 1, 1, this.options.maxProblemsPerUnit);
        CompilationUnitDeclaration unit = SourceTypeConverter.buildCompilationUnit(new ISourceType[]{sourceType}, 8, this.lookupEnvironment.problemReporter, result);
        if (unit != null) {
            try {
                this.lookupEnvironment.buildTypeBindings(unit, accessRestriction);
                org.eclipse.jdt.core.ICompilationUnit cu = ((SourceTypeElementInfo)sourceType).getHandle().getCompilationUnit();
                this.rememberAllTypes(unit, cu, false);
                this.lookupEnvironment.completeTypeBindings(unit, true);
            }
            catch (AbortCompilation abortCompilation) {}
        }
    }

    private IType findSuperClass(IGenericType type, ReferenceBinding typeBinding) {
        ReferenceBinding superBinding = typeBinding.superclass();
        if (superBinding != null) {
            superBinding = (ReferenceBinding)superBinding.erasure();
            if (typeBinding.isHierarchyInconsistent()) {
                if (superBinding.problemId() == 1) {
                    this.hasMissingSuperClass = true;
                    this.builder.hierarchy.missingTypes.add(new String(superBinding.sourceName));
                    return null;
                }
                if (superBinding.id == 1) {
                    int separator;
                    char[] superclassName;
                    if (type instanceof IBinaryType) {
                        superclassName = ((IBinaryType)type).getSuperclassName();
                        separator = 47;
                    } else if (type instanceof ISourceType) {
                        superclassName = ((ISourceType)type).getSuperclassName();
                        separator = 46;
                    } else if (type instanceof HierarchyType) {
                        superclassName = ((HierarchyType)type).superclassName;
                        separator = 46;
                    } else {
                        return null;
                    }
                    if (superclassName != null) {
                        char[] simpleName;
                        int lastSeparator = CharOperation.lastIndexOf((char)separator, superclassName);
                        char[] cArray = simpleName = lastSeparator == -1 ? superclassName : CharOperation.subarray(superclassName, lastSeparator + 1, superclassName.length);
                        if (!CharOperation.equals(simpleName, TypeConstants.OBJECT)) {
                            this.hasMissingSuperClass = true;
                            this.builder.hierarchy.missingTypes.add(new String(simpleName));
                            return null;
                        }
                    }
                }
            }
            int t = this.typeIndex;
            while (t >= 0) {
                if (this.typeBindings[t] == superBinding) {
                    return this.builder.getHandle(this.typeModels[t], superBinding);
                }
                --t;
            }
        }
        return null;
    }

    private IType[] findSuperInterfaces(IGenericType type, ReferenceBinding typeBinding) {
        char separator;
        Object superInterfaceNames;
        if (type instanceof IBinaryType) {
            superInterfaceNames = ((IBinaryType)type).getInterfaceNames();
            separator = '/';
        } else if (type instanceof ISourceType) {
            ISourceType sourceType = (ISourceType)type;
            superInterfaceNames = sourceType.getName().length == 0 ? (typeBinding.superInterfaces() != null && typeBinding.superInterfaces().length > 0 ? (Object)new char[][]{sourceType.getSuperclassName()} : sourceType.getInterfaceNames()) : (TypeDeclaration.kind(sourceType.getModifiers()) == 4 ? (Object)new char[][]{TypeConstants.CharArray_JAVA_LANG_ANNOTATION_ANNOTATION} : sourceType.getInterfaceNames());
            separator = '.';
        } else if (type instanceof HierarchyType) {
            HierarchyType hierarchyType = (HierarchyType)type;
            superInterfaceNames = hierarchyType.name.length == 0 ? (typeBinding.superInterfaces() != null && typeBinding.superInterfaces().length > 0 ? (Object)new char[][]{hierarchyType.superclassName} : hierarchyType.superInterfaceNames) : hierarchyType.superInterfaceNames;
            separator = '.';
        } else {
            return null;
        }
        ReferenceBinding[] interfaceBindings = typeBinding.superInterfaces();
        int bindingIndex = 0;
        int bindingLength = interfaceBindings == null ? 0 : interfaceBindings.length;
        int length = superInterfaceNames == null ? 0 : ((char[][])superInterfaceNames).length;
        IType[] superinterfaces = new IType[length];
        int index = 0;
        int i = 0;
        while (i < length) {
            block14: {
                int lastSeparator;
                int start;
                int lastDollar;
                char[] superInterfaceName = superInterfaceNames[i];
                int end = superInterfaceName.length;
                int genericStart = CharOperation.indexOf('<', superInterfaceName);
                if (genericStart != -1) {
                    end = genericStart;
                }
                if ((lastDollar = CharOperation.lastIndexOf('$', superInterfaceName, start = (lastSeparator = CharOperation.lastIndexOf(separator, superInterfaceName, 0, end)) + 1)) != -1) {
                    start = lastDollar + 1;
                }
                char[] simpleName = CharOperation.subarray(superInterfaceName, start, end);
                if (bindingIndex < bindingLength) {
                    ReferenceBinding interfaceBinding = (ReferenceBinding)interfaceBindings[bindingIndex].erasure();
                    if (CharOperation.equals(simpleName, interfaceBinding.sourceName)) {
                        ++bindingIndex;
                        int t = this.typeIndex;
                        while (t >= 0) {
                            IType handle;
                            if (this.typeBindings[t] == interfaceBinding && (handle = this.builder.getHandle(this.typeModels[t], interfaceBinding)) != null) {
                                superinterfaces[index++] = handle;
                                break block14;
                            }
                            --t;
                        }
                    }
                }
                this.builder.hierarchy.missingTypes.add(new String(simpleName));
            }
            ++i;
        }
        if (index != length) {
            IType[] iTypeArray = superinterfaces;
            superinterfaces = new IType[index];
            System.arraycopy(iTypeArray, 0, superinterfaces, 0, index);
        }
        return superinterfaces;
    }

    /*
     * Unable to fully structure code
     */
    private void fixSupertypeBindings() {
        current = this.typeIndex;
        while (current >= 0) {
            block16: {
                block17: {
                    typeBinding = this.typeBindings[current];
                    if ((typeBinding.tagBits & 131072L) == 0L) break block16;
                    if (!(typeBinding instanceof SourceTypeBinding)) break block17;
                    if (!(typeBinding instanceof LocalTypeBinding)) ** GOTO lbl-1000
                    localTypeBinding = (LocalTypeBinding)typeBinding;
                    allocationExpression = localTypeBinding.scope.referenceContext.allocation;
                    if (allocationExpression != null && (type = allocationExpression.type) != null && type.resolvedType != null) {
                        localTypeBinding.superclass = (ReferenceBinding)type.resolvedType;
                    } else if ((scope = ((SourceTypeBinding)typeBinding).scope) != null) {
                        typeDeclaration = scope.referenceContext;
                        superclassRef = typeDeclaration == null ? null : typeDeclaration.superclass;
                        v0 = superclass = superclassRef == null ? null : superclassRef.resolvedType;
                        if (superclass != null) {
                            superclass = superclass.closestMatch();
                        }
                        if (superclass instanceof ReferenceBinding && !this.subTypeOfType((ReferenceBinding)superclass, typeBinding)) {
                            ((SourceTypeBinding)typeBinding).superclass = (ReferenceBinding)superclass;
                        }
                        superInterfaces = typeDeclaration == null ? null : typeDeclaration.superInterfaces;
                        interfaceBindings = typeBinding.superInterfaces();
                        if (superInterfaces != null && (length = superInterfaces.length) > (interfaceBindings == null ? 0 : interfaceBindings.length)) {
                            interfaceBindings = new ReferenceBinding[length];
                            index = 0;
                            i = 0;
                            while (i < length) {
                                superInterface = superInterfaces[i].resolvedType;
                                if (superInterface != null) {
                                    superInterface = superInterface.closestMatch();
                                }
                                if (superInterface instanceof ReferenceBinding && !this.subTypeOfType((ReferenceBinding)superInterface, typeBinding)) {
                                    interfaceBindings[index++] = (ReferenceBinding)superInterface;
                                }
                                ++i;
                            }
                            if (index < length) {
                                v1 = interfaceBindings;
                                interfaceBindings = new ReferenceBinding[index];
                                System.arraycopy(v1, 0, interfaceBindings, 0, index);
                            }
                            ((SourceTypeBinding)typeBinding).superInterfaces = interfaceBindings;
                        }
                    }
                    break block16;
                }
                if (typeBinding instanceof BinaryTypeBinding) {
                    try {
                        typeBinding.superclass();
                    }
                    catch (AbortCompilation v2) {
                        ((BinaryTypeBinding)typeBinding).tagBits &= -33554433L;
                        this.builder.hierarchy.missingTypes.add(new String(typeBinding.superclass().sourceName()));
                        this.hasMissingSuperClass = true;
                    }
                    try {
                        typeBinding.superInterfaces();
                    }
                    catch (AbortCompilation v3) {
                        ((BinaryTypeBinding)typeBinding).tagBits &= -67108865L;
                    }
                }
            }
            --current;
        }
    }

    private void remember(IGenericType suppliedType, ReferenceBinding typeBinding) {
        if (typeBinding == null) {
            return;
        }
        if (++this.typeIndex == this.typeModels.length) {
            this.typeModels = new IGenericType[this.typeIndex * 2];
            System.arraycopy(this.typeModels, 0, this.typeModels, 0, this.typeIndex);
            this.typeBindings = new ReferenceBinding[this.typeIndex * 2];
            System.arraycopy(this.typeBindings, 0, this.typeBindings, 0, this.typeIndex);
        }
        this.typeModels[this.typeIndex] = suppliedType;
        this.typeBindings[this.typeIndex] = typeBinding;
    }

    private void remember(IType type, ReferenceBinding typeBinding) {
        if (((CompilationUnit)type.getCompilationUnit()).isOpen()) {
            try {
                IGenericType genericType = (IGenericType)((JavaElement)((Object)type)).getElementInfo();
                this.remember(genericType, typeBinding);
            }
            catch (JavaModelException javaModelException) {
                return;
            }
        } else {
            if (typeBinding == null) {
                return;
            }
            TypeDeclaration typeDeclaration = ((SourceTypeBinding)typeBinding).scope.referenceType();
            char[] superclassName = null;
            TypeReference superclass = (typeDeclaration.bits & 0x200) != 0 ? typeDeclaration.allocation.type : typeDeclaration.superclass;
            if (superclass != null) {
                char[][] typeName = superclass.getTypeName();
                superclassName = typeName == null ? null : typeName[typeName.length - 1];
            }
            Object superInterfaceNames = null;
            TypeReference[] superInterfaces = typeDeclaration.superInterfaces;
            if (superInterfaces != null) {
                int length = superInterfaces.length;
                superInterfaceNames = new char[length][];
                int i = 0;
                while (i < length) {
                    TypeReference superInterface = superInterfaces[i];
                    char[][] typeName = superInterface.getTypeName();
                    superInterfaceNames[i] = typeName[typeName.length - 1];
                    ++i;
                }
            }
            HierarchyType hierarchyType = new HierarchyType(type, typeDeclaration.name, typeDeclaration.binding.modifiers, superclassName, (char[][])superInterfaceNames);
            this.remember(hierarchyType, (ReferenceBinding)typeDeclaration.binding);
        }
    }

    private void rememberAllTypes(CompilationUnitDeclaration parsedUnit, org.eclipse.jdt.core.ICompilationUnit cu, boolean includeLocalTypes) {
        TypeDeclaration[] types = parsedUnit.types;
        if (types != null) {
            int i = 0;
            int length = types.length;
            while (i < length) {
                TypeDeclaration type = types[i];
                this.rememberWithMemberTypes(type, cu.getType(new String(type.name)));
                ++i;
            }
        }
        if (includeLocalTypes && parsedUnit.localTypes != null) {
            HandleFactory factory = new HandleFactory();
            HashSet existingElements = new HashSet(parsedUnit.localTypeCount);
            HashMap knownScopes = new HashMap(parsedUnit.localTypeCount);
            int i = 0;
            while (i < parsedUnit.localTypeCount) {
                LocalTypeBinding localType = parsedUnit.localTypes[i];
                ClassScope classScope = localType.scope;
                TypeDeclaration typeDecl = classScope.referenceType();
                IType typeHandle = (IType)factory.createElement(classScope, cu, existingElements, knownScopes);
                this.rememberWithMemberTypes(typeDecl, typeHandle);
                ++i;
            }
        }
    }

    private void rememberWithMemberTypes(TypeDeclaration typeDecl, IType typeHandle) {
        this.remember(typeHandle, (ReferenceBinding)typeDecl.binding);
        TypeDeclaration[] memberTypes = typeDecl.memberTypes;
        if (memberTypes != null) {
            int i = 0;
            int length = memberTypes.length;
            while (i < length) {
                TypeDeclaration memberType = memberTypes[i];
                this.rememberWithMemberTypes(memberType, typeHandle.getType(new String(memberType.name)));
                ++i;
            }
        }
    }

    private void reportHierarchy(IType focus, TypeDeclaration focusLocalType, ReferenceBinding binaryTypeBinding) {
        if (focus != null) {
            if (binaryTypeBinding != null) {
                this.focusType = binaryTypeBinding;
            } else if (focusLocalType != null) {
                this.focusType = focusLocalType.binding;
            } else {
                char[] fullyQualifiedName = focus.getFullyQualifiedName().toCharArray();
                this.setFocusType(CharOperation.splitOn('.', fullyQualifiedName));
            }
        }
        this.fixSupertypeBindings();
        int objectIndex = -1;
        IProgressMonitor progressMonitor = this.builder.hierarchy.progressMonitor;
        int current = this.typeIndex;
        while (current >= 0) {
            if (progressMonitor != null && progressMonitor.isCanceled()) {
                throw new OperationCanceledException();
            }
            ReferenceBinding typeBinding = this.typeBindings[current];
            if (typeBinding.id == 1) {
                objectIndex = current;
            } else {
                IGenericType suppliedType = this.typeModels[current];
                if (this.subOrSuperOfFocus(typeBinding)) {
                    IType superclass = typeBinding.isInterface() ? null : this.findSuperClass(suppliedType, typeBinding);
                    IType[] superinterfaces = this.findSuperInterfaces(suppliedType, typeBinding);
                    this.builder.connect(suppliedType, this.builder.getHandle(suppliedType, typeBinding), superclass, superinterfaces);
                }
            }
            --current;
        }
        if (!(objectIndex <= -1 || this.hasMissingSuperClass && this.focusType != null)) {
            IGenericType objectType = this.typeModels[objectIndex];
            this.builder.connect(objectType, this.builder.getHandle(objectType, this.typeBindings[objectIndex]), null, null);
        }
    }

    private void reset() {
        this.lookupEnvironment.reset();
        this.focusType = null;
        this.superTypesOnly = false;
        this.typeIndex = -1;
        this.typeModels = new IGenericType[5];
        this.typeBindings = new ReferenceBinding[5];
    }

    public void resolve(IGenericType suppliedType) {
        block15: {
            try {
                try {
                    if (suppliedType.isBinaryType()) {
                        int startIndex;
                        BinaryTypeBinding binaryTypeBinding = this.lookupEnvironment.cacheBinaryType((IBinaryType)suppliedType, false, null);
                        this.remember(suppliedType, (ReferenceBinding)binaryTypeBinding);
                        int i = startIndex = this.typeIndex;
                        while (i <= this.typeIndex) {
                            block14: {
                                IGenericType igType = this.typeModels[i];
                                if (igType != null && igType.isBinaryType()) {
                                    CompilationUnitDeclaration previousUnitBeingCompleted = this.lookupEnvironment.unitBeingCompleted;
                                    try {
                                        try {
                                            if (previousUnitBeingCompleted == null) {
                                                this.lookupEnvironment.unitBeingCompleted = FakeUnit;
                                            }
                                            ReferenceBinding typeBinding = this.typeBindings[i];
                                            typeBinding.superclass();
                                            typeBinding.superInterfaces();
                                        }
                                        catch (AbortCompilation abortCompilation) {
                                            this.lookupEnvironment.unitBeingCompleted = previousUnitBeingCompleted;
                                            break block14;
                                        }
                                    }
                                    catch (Throwable throwable) {
                                        this.lookupEnvironment.unitBeingCompleted = previousUnitBeingCompleted;
                                        throw throwable;
                                    }
                                    this.lookupEnvironment.unitBeingCompleted = previousUnitBeingCompleted;
                                }
                            }
                            ++i;
                        }
                        this.superTypesOnly = true;
                        this.reportHierarchy(this.builder.getType(), null, binaryTypeBinding);
                        break block15;
                    }
                    org.eclipse.jdt.core.ICompilationUnit cu = ((SourceTypeElementInfo)suppliedType).getHandle().getCompilationUnit();
                    HashSet<String> localTypes = new HashSet<String>();
                    localTypes.add(cu.getPath().toString());
                    this.superTypesOnly = true;
                    this.resolve(new Openable[]{(Openable)((Object)cu)}, localTypes, null);
                }
                catch (AbortCompilation abortCompilation) {
                    this.reset();
                }
            }
            finally {
                this.reset();
            }
        }
    }

    public void resolve(Openable[] openables, HashSet localTypes, IProgressMonitor monitor) {
        try {
            char[] fullyQualifiedName;
            CompilationUnitDeclaration parsedUnit;
            int openablesLength = openables.length;
            CompilationUnitDeclaration[] parsedUnits = new CompilationUnitDeclaration[openablesLength];
            boolean[] hasLocalType = new boolean[openablesLength];
            org.eclipse.jdt.core.ICompilationUnit[] cus = new org.eclipse.jdt.core.ICompilationUnit[openablesLength];
            int unitsIndex = 0;
            CompilationUnitDeclaration focusUnit = null;
            ReferenceBinding focusBinaryBinding = null;
            IType focus = this.builder.getType();
            Openable focusOpenable = null;
            if (focus != null) {
                focusOpenable = focus.isBinary() ? (Openable)((Object)focus.getClassFile()) : (Openable)((Object)focus.getCompilationUnit());
            }
            Parser parser = new Parser(this.lookupEnvironment.problemReporter, true);
            int i = 0;
            while (i < openablesLength) {
                block53: {
                    Openable openable = openables[i];
                    if (openable instanceof org.eclipse.jdt.core.ICompilationUnit) {
                        org.eclipse.jdt.core.ICompilationUnit cu = (org.eclipse.jdt.core.ICompilationUnit)((Object)openable);
                        boolean containsLocalType = false;
                        if (localTypes == null) {
                            containsLocalType = true;
                        } else {
                            IPath path = cu.getPath();
                            containsLocalType = localTypes.contains(path.toString());
                        }
                        CompilationUnitDeclaration parsedUnit2 = null;
                        if (cu.isOpen()) {
                            CompilationResult result = new CompilationResult((ICompilationUnit)((Object)cu), i, openablesLength, this.options.maxProblemsPerUnit);
                            ISourceType[] typeInfos = null;
                            try {
                                IType[] topLevelTypes = cu.getTypes();
                                int topLevelLength = topLevelTypes.length;
                                if (topLevelLength == 0) break block53;
                                typeInfos = new SourceTypeElementInfo[topLevelLength];
                                int j = 0;
                                while (j < topLevelLength) {
                                    IType topLevelType = topLevelTypes[j];
                                    typeInfos[j] = (SourceTypeElementInfo)((JavaElement)((Object)topLevelType)).getElementInfo();
                                    ++j;
                                }
                            }
                            catch (JavaModelException javaModelException) {}
                            int flags = !containsLocalType ? 8 : 47;
                            parsedUnit2 = SourceTypeConverter.buildCompilationUnit(typeInfos, flags, this.lookupEnvironment.problemReporter, result);
                            if (containsLocalType) {
                                parsedUnit2.bits |= 0x10;
                            }
                        } else {
                            IFile file = (IFile)cu.getResource();
                            ICompilationUnit sourceUnit = this.builder.createCompilationUnitFromPath(openable, file);
                            CompilationResult unitResult = new CompilationResult(sourceUnit, i, openablesLength, this.options.maxProblemsPerUnit);
                            parsedUnit2 = parser.dietParse(sourceUnit, unitResult);
                        }
                        if (parsedUnit2 != null) {
                            hasLocalType[unitsIndex] = containsLocalType;
                            cus[unitsIndex] = cu;
                            parsedUnits[unitsIndex++] = parsedUnit2;
                            try {
                                this.lookupEnvironment.buildTypeBindings(parsedUnit2, null);
                                if (openable.equals(focusOpenable)) {
                                    focusUnit = parsedUnit2;
                                }
                            }
                            catch (AbortCompilation abortCompilation) {}
                        }
                    } else {
                        ClassFile classFile = (ClassFile)openable;
                        IBinaryType binaryType = (IBinaryType)JavaModelManager.getJavaModelManager().getInfo(classFile.getType());
                        if (binaryType == null) {
                            if (classFile.getPackageFragmentRoot().isArchive()) {
                                binaryType = this.builder.createInfoFromClassFileInJar(classFile);
                            } else {
                                IResource file = classFile.resource();
                                binaryType = this.builder.createInfoFromClassFile(classFile, file);
                            }
                        }
                        if (binaryType != null) {
                            try {
                                BinaryTypeBinding binaryTypeBinding = this.lookupEnvironment.cacheBinaryType(binaryType, false, null);
                                this.remember(binaryType, (ReferenceBinding)binaryTypeBinding);
                                if (openable.equals(focusOpenable)) {
                                    focusBinaryBinding = binaryTypeBinding;
                                }
                            }
                            catch (AbortCompilation abortCompilation) {}
                        }
                    }
                }
                ++i;
            }
            TypeDeclaration focusLocalType = null;
            if (focus != null && focusBinaryBinding == null && focusUnit != null && ((Member)((Object)focus)).getOuterMostLocalContext() != null) {
                focusLocalType = new ASTNodeFinder(focusUnit).findType(focus);
            }
            int i2 = 0;
            while (i2 <= this.typeIndex) {
                block55: {
                    IGenericType suppliedType = this.typeModels[i2];
                    if (suppliedType != null && suppliedType.isBinaryType()) {
                        CompilationUnitDeclaration previousUnitBeingCompleted = this.lookupEnvironment.unitBeingCompleted;
                        try {
                            try {
                                if (previousUnitBeingCompleted == null) {
                                    this.lookupEnvironment.unitBeingCompleted = FakeUnit;
                                }
                                ReferenceBinding typeBinding = this.typeBindings[i2];
                                typeBinding.superclass();
                                typeBinding.superInterfaces();
                            }
                            catch (AbortCompilation abortCompilation) {
                                this.lookupEnvironment.unitBeingCompleted = previousUnitBeingCompleted;
                                break block55;
                            }
                        }
                        catch (Throwable throwable) {
                            this.lookupEnvironment.unitBeingCompleted = previousUnitBeingCompleted;
                            throw throwable;
                        }
                        this.lookupEnvironment.unitBeingCompleted = previousUnitBeingCompleted;
                    }
                }
                ++i2;
            }
            i2 = 0;
            while (i2 < unitsIndex) {
                parsedUnit = parsedUnits[i2];
                if (parsedUnit != null) {
                    try {
                        if (hasLocalType[i2]) {
                            if (monitor != null && monitor.isCanceled()) {
                                throw new OperationCanceledException();
                            }
                            parser.getMethodBodies(parsedUnit);
                        }
                    }
                    catch (AbortCompilation abortCompilation) {
                        hasLocalType[i2] = false;
                    }
                }
                ++i2;
            }
            try {
                this.lookupEnvironment.completeTypeBindings(parsedUnits, hasLocalType, unitsIndex);
                i2 = 0;
                while (i2 < unitsIndex) {
                    parsedUnit = parsedUnits[i2];
                    if (parsedUnit != null && !parsedUnit.hasErrors()) {
                        boolean containsLocalType = hasLocalType[i2];
                        if (containsLocalType) {
                            if (monitor != null && monitor.isCanceled()) {
                                throw new OperationCanceledException();
                            }
                            parsedUnit.scope.faultInTypes();
                            parsedUnit.resolve();
                        }
                        this.rememberAllTypes(parsedUnit, cus[i2], containsLocalType);
                    }
                    ++i2;
                }
            }
            catch (AbortCompilation abortCompilation) {}
            this.worked(monitor, 1);
            if (focusBinaryBinding == null && focus != null && focus.isBinary() && (focusBinaryBinding = this.lookupEnvironment.getCachedType(CharOperation.splitOn('.', fullyQualifiedName = focus.getFullyQualifiedName().toCharArray()))) == null) {
                return;
            }
            try {
                this.reportHierarchy(focus, focusLocalType, focusBinaryBinding);
            }
            catch (ClassCastException classCastException) {
            }
            catch (AbortCompilation e) {
                if (TypeHierarchy.DEBUG) {
                    e.printStackTrace();
                }
            }
        }
        finally {
            this.reset();
        }
    }

    private void setEnvironment(LookupEnvironment lookupEnvironment, HierarchyBuilder builder) {
        this.lookupEnvironment = lookupEnvironment;
        this.builder = builder;
        this.typeIndex = -1;
        this.typeModels = new IGenericType[5];
        this.typeBindings = new ReferenceBinding[5];
    }

    public ReferenceBinding setFocusType(char[][] compoundName) {
        if (compoundName == null || this.lookupEnvironment == null) {
            return null;
        }
        this.focusType = this.lookupEnvironment.getCachedType(compoundName);
        if (this.focusType == null) {
            int length;
            char[] typeName;
            int firstDollar;
            this.focusType = this.lookupEnvironment.askForType(compoundName);
            if (this.focusType == null && (firstDollar = CharOperation.indexOf('$', typeName = compoundName[(length = compoundName.length) - 1])) != -1) {
                compoundName[length - 1] = CharOperation.subarray(typeName, 0, firstDollar);
                this.focusType = this.lookupEnvironment.askForType(compoundName);
                if (this.focusType != null) {
                    char[][] memberTypeNames = CharOperation.splitOn('$', typeName, firstDollar + 1, typeName.length);
                    int i = 0;
                    while (i < memberTypeNames.length) {
                        this.focusType = this.focusType.getMemberType(memberTypeNames[i]);
                        ++i;
                    }
                }
            }
        }
        return this.focusType;
    }

    public boolean subOrSuperOfFocus(ReferenceBinding typeBinding) {
        block5: {
            if (this.focusType == null) {
                return true;
            }
            try {
                if (!this.subTypeOfType(this.focusType, typeBinding)) break block5;
                return true;
            }
            catch (AbortCompilation abortCompilation) {}
        }
        if (!this.superTypesOnly && this.subTypeOfType(typeBinding, this.focusType)) {
            return true;
        }
        return false;
    }

    private boolean subTypeOfType(ReferenceBinding subType, ReferenceBinding typeBinding) {
        if (typeBinding == null || subType == null) {
            return false;
        }
        if (subType == typeBinding) {
            return true;
        }
        ReferenceBinding superclass = subType.superclass();
        if (superclass != null) {
            superclass = (ReferenceBinding)superclass.erasure();
        }
        if (this.subTypeOfType(superclass, typeBinding)) {
            return true;
        }
        ReferenceBinding[] superInterfaces = subType.superInterfaces();
        if (superInterfaces != null) {
            int i = 0;
            int length = superInterfaces.length;
            while (i < length) {
                ReferenceBinding superInterface = (ReferenceBinding)superInterfaces[i].erasure();
                if (this.subTypeOfType(superInterface, typeBinding)) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    protected void worked(IProgressMonitor monitor, int work) {
        if (monitor != null) {
            if (monitor.isCanceled()) {
                throw new OperationCanceledException();
            }
            monitor.worked(work);
        }
    }
}

