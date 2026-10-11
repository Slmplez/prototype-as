/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.impl;

import java.util.Map;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.impl.AssistOptions;
import org.eclipse.jdt.internal.codeassist.impl.AssistParser;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.ISourceType;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.ITypeRequestor;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.ImportBinding;
import org.eclipse.jdt.internal.compiler.lookup.ImportConflictBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.parser.SourceTypeConverter;
import org.eclipse.jdt.internal.core.SearchableEnvironment;

public abstract class Engine
implements ITypeRequestor {
    public LookupEnvironment lookupEnvironment;
    protected CompilationUnitScope unitScope;
    public SearchableEnvironment nameEnvironment;
    public AssistOptions options;
    public CompilerOptions compilerOptions;
    public boolean forbiddenReferenceIsError;
    public boolean discouragedReferenceIsError;
    public boolean importCachesInitialized = false;
    public char[][][] importsCache;
    public ImportBinding[] onDemandImportsCache;
    public int importCacheCount = 0;
    public int onDemandImportCacheCount = 0;
    public char[] currentPackageName = null;

    public Engine(Map settings) {
        this.options = new AssistOptions(settings);
        this.compilerOptions = new CompilerOptions(settings);
        this.forbiddenReferenceIsError = (this.compilerOptions.getSeverity(0x20000020) & 1) != 0;
        this.discouragedReferenceIsError = (this.compilerOptions.getSeverity(0x20004000) & 1) != 0;
    }

    public void accept(IBinaryType binaryType, PackageBinding packageBinding, AccessRestriction accessRestriction) {
        this.lookupEnvironment.createBinaryTypeFrom(binaryType, packageBinding, accessRestriction);
    }

    public void accept(ICompilationUnit sourceUnit, AccessRestriction accessRestriction) {
        CompilationResult result = new CompilationResult(sourceUnit, 1, 1, this.compilerOptions.maxProblemsPerUnit);
        AssistParser assistParser = this.getParser();
        Object parserState = assistParser.becomeSimpleParser();
        CompilationUnitDeclaration parsedUnit = assistParser.dietParse(sourceUnit, result);
        assistParser.restoreAssistParser(parserState);
        this.lookupEnvironment.buildTypeBindings(parsedUnit, accessRestriction);
        this.lookupEnvironment.completeTypeBindings(parsedUnit, true);
    }

    public void accept(ISourceType[] sourceTypes, PackageBinding packageBinding, AccessRestriction accessRestriction) {
        CompilationResult result = new CompilationResult(sourceTypes[0].getFileName(), 1, 1, this.compilerOptions.maxProblemsPerUnit);
        CompilationUnitDeclaration unit = SourceTypeConverter.buildCompilationUnit(sourceTypes, 15, this.lookupEnvironment.problemReporter, result);
        if (unit != null) {
            this.lookupEnvironment.buildTypeBindings(unit, accessRestriction);
            this.lookupEnvironment.completeTypeBindings(unit, true);
        }
    }

    public abstract AssistParser getParser();

    public void initializeImportCaches() {
        ImportBinding[] importBindings;
        if (this.currentPackageName == null) {
            this.initializePackageCache();
        }
        int length = (importBindings = this.unitScope.imports) == null ? 0 : importBindings.length;
        int i = 0;
        while (i < length) {
            ImportBinding importBinding = importBindings[i];
            if (importBinding.onDemand) {
                if (this.onDemandImportsCache == null) {
                    this.onDemandImportsCache = new ImportBinding[length - i];
                }
                this.onDemandImportsCache[this.onDemandImportCacheCount++] = importBinding;
            } else if (!(importBinding.resolvedImport instanceof MethodBinding) || importBinding instanceof ImportConflictBinding) {
                if (this.importsCache == null) {
                    this.importsCache = new char[length - i][][];
                }
                this.importsCache[this.importCacheCount++] = new char[][]{importBinding.compoundName[importBinding.compoundName.length - 1], CharOperation.concatWith(importBinding.compoundName, '.')};
            }
            ++i;
        }
        this.importCachesInitialized = true;
    }

    public void initializePackageCache() {
        this.currentPackageName = this.unitScope.fPackage != null ? CharOperation.concatWith(this.unitScope.fPackage.compoundName, '.') : (this.unitScope.referenceContext != null && this.unitScope.referenceContext.currentPackage != null ? CharOperation.concatWith(this.unitScope.referenceContext.currentPackage.tokens, '.') : CharOperation.NO_CHAR);
    }

    protected boolean mustQualifyType(char[] packageName, char[] typeName, char[] enclosingTypeNames, int modifiers) {
        if (this.unitScope == null) {
            return true;
        }
        if (!this.importCachesInitialized) {
            this.initializeImportCaches();
        }
        int i = 0;
        while (i < this.importCacheCount) {
            char[][] importName = this.importsCache[i];
            if (CharOperation.equals(typeName, importName[0])) {
                char[] fullyQualifiedTypeName = enclosingTypeNames == null || enclosingTypeNames.length == 0 ? CharOperation.concat(packageName, typeName, '.') : CharOperation.concat(CharOperation.concat(packageName, enclosingTypeNames, '.'), typeName, '.');
                return !CharOperation.equals(fullyQualifiedTypeName, importName[1]);
            }
            ++i;
        }
        if ((enclosingTypeNames == null || enclosingTypeNames.length == 0) && CharOperation.equals(this.currentPackageName, packageName)) {
            return false;
        }
        char[] fullyQualifiedEnclosingTypeName = null;
        int i2 = 0;
        while (i2 < this.onDemandImportCacheCount) {
            ImportBinding importBinding = this.onDemandImportsCache[i2];
            Binding resolvedImport = importBinding.resolvedImport;
            char[][] importName = importBinding.compoundName;
            char[] importFlatName = CharOperation.concatWith(importName, '.');
            boolean isFound = false;
            if (resolvedImport instanceof ReferenceBinding) {
                if (enclosingTypeNames != null && enclosingTypeNames.length != 0) {
                    if (fullyQualifiedEnclosingTypeName == null) {
                        fullyQualifiedEnclosingTypeName = CharOperation.concat(packageName, enclosingTypeNames, '.');
                    }
                    if (CharOperation.equals(fullyQualifiedEnclosingTypeName, importFlatName)) {
                        isFound = importBinding.isStatic() ? (modifiers & 8) != 0 : true;
                    }
                }
            } else if ((enclosingTypeNames == null || enclosingTypeNames.length == 0) && CharOperation.equals(packageName, importFlatName)) {
                isFound = importBinding.isStatic() ? (modifiers & 8) != 0 : true;
            }
            if (isFound) {
                int j = 0;
                while (j < this.onDemandImportCacheCount) {
                    if (i2 != j) {
                        ImportBinding conflictingImportBinding = this.onDemandImportsCache[j];
                        if (conflictingImportBinding.resolvedImport instanceof ReferenceBinding) {
                            ReferenceBinding refBinding = (ReferenceBinding)conflictingImportBinding.resolvedImport;
                            if (refBinding.getMemberType(typeName) != null) {
                                return true;
                            }
                        } else {
                            char[] conflictingImportName = CharOperation.concatWith(conflictingImportBinding.compoundName, '.');
                            if (this.nameEnvironment.nameLookup.findType(String.valueOf(typeName), String.valueOf(conflictingImportName), false, 30, false) != null) {
                                return true;
                            }
                        }
                    }
                    ++j;
                }
                return false;
            }
            ++i2;
        }
        return true;
    }

    protected ASTNode parseBlockStatements(CompilationUnitDeclaration unit, int position) {
        int length = unit.types.length;
        int i = 0;
        while (i < length) {
            TypeDeclaration type = unit.types[i];
            if (type.declarationSourceStart < position && type.declarationSourceEnd >= position) {
                this.getParser().scanner.setSource(unit.compilationResult);
                return this.parseBlockStatements(type, unit, position);
            }
            ++i;
        }
        return null;
    }

    private ASTNode parseBlockStatements(TypeDeclaration type, CompilationUnitDeclaration unit, int position) {
        FieldDeclaration[] fields;
        AbstractMethodDeclaration[] methods;
        TypeDeclaration[] memberTypes = type.memberTypes;
        if (memberTypes != null) {
            int length = memberTypes.length;
            int i = 0;
            while (i < length) {
                TypeDeclaration memberType = memberTypes[i];
                if (memberType.bodyStart <= position && memberType.declarationSourceEnd >= position) {
                    return this.parseBlockStatements(memberType, unit, position);
                }
                ++i;
            }
        }
        if ((methods = type.methods) != null) {
            int length = methods.length;
            int i = 0;
            while (i < length) {
                AbstractMethodDeclaration method = methods[i];
                if (method.bodyStart <= position + 1 && !method.isDefaultConstructor() && method.declarationSourceEnd >= position) {
                    this.getParser().parseBlockStatements(method, unit);
                    return method;
                }
                ++i;
            }
        }
        if ((fields = type.fields) != null) {
            int length = fields.length;
            int i = 0;
            while (i < length) {
                FieldDeclaration field = fields[i];
                if (field.sourceStart <= position && field.declarationSourceEnd >= position) {
                    if (field instanceof Initializer) {
                        this.getParser().parseBlockStatements((Initializer)field, type, unit);
                    }
                    return field;
                }
                ++i;
            }
        }
        return null;
    }

    protected void reset(boolean resetLookupEnvironment) {
        if (resetLookupEnvironment) {
            this.lookupEnvironment.reset();
        }
    }

    public static char[] getTypeSignature(TypeBinding typeBinding) {
        char[] result = typeBinding.signature();
        if (result != null) {
            result = CharOperation.replaceOnCopy(result, '/', '.');
        }
        return result;
    }

    public static char[] getSignature(MethodBinding methodBinding) {
        char[] result = null;
        int oldMod = methodBinding.modifiers;
        methodBinding.modifiers |= 0x40000000;
        result = methodBinding.genericSignature();
        if (result == null) {
            result = methodBinding.signature();
        }
        methodBinding.modifiers = oldMod;
        if (result != null) {
            result = CharOperation.replaceOnCopy(result, '/', '.');
        }
        return result;
    }

    public static char[] getSignature(TypeBinding typeBinding) {
        char[] result = null;
        result = typeBinding.genericTypeSignature();
        if (result != null) {
            result = CharOperation.replaceOnCopy(result, '/', '.');
        }
        return result;
    }
}

