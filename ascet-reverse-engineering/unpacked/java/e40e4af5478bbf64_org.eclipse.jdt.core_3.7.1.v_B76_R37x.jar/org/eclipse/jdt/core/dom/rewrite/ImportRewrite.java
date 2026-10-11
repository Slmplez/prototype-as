/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.text.edits.MultiTextEdit
 *  org.eclipse.text.edits.TextEdit
 */
package org.eclipse.jdt.core.dom.rewrite;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTParser;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.IMethodBinding;
import org.eclipse.jdt.core.dom.ITypeBinding;
import org.eclipse.jdt.core.dom.IVariableBinding;
import org.eclipse.jdt.core.dom.ImportDeclaration;
import org.eclipse.jdt.core.dom.Modifier;
import org.eclipse.jdt.core.dom.ParameterizedType;
import org.eclipse.jdt.core.dom.PrimitiveType;
import org.eclipse.jdt.core.dom.SimpleType;
import org.eclipse.jdt.core.dom.Type;
import org.eclipse.jdt.core.dom.WildcardType;
import org.eclipse.jdt.internal.core.dom.rewrite.ImportRewriteAnalyzer;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;
import org.eclipse.text.edits.MultiTextEdit;
import org.eclipse.text.edits.TextEdit;

public final class ImportRewrite {
    private static final char STATIC_PREFIX = 's';
    private static final char NORMAL_PREFIX = 'n';
    private final ImportRewriteContext defaultContext;
    private final ICompilationUnit compilationUnit;
    private final CompilationUnit astRoot;
    private final boolean restoreExistingImports;
    private final List existingImports;
    private final Map importsKindMap;
    private String[] importOrder;
    private int importOnDemandThreshold;
    private int staticImportOnDemandThreshold;
    private List addedImports;
    private List removedImports;
    private String[] createdImports;
    private String[] createdStaticImports;
    private boolean filterImplicitImports;
    private boolean useContextToFilterImplicitImports;

    public static ImportRewrite create(ICompilationUnit cu, boolean restoreExistingImports) throws JavaModelException {
        if (cu == null) {
            throw new IllegalArgumentException("Compilation unit must not be null");
        }
        ArrayList<String> existingImport = null;
        if (restoreExistingImports) {
            existingImport = new ArrayList<String>();
            IImportDeclaration[] imports = cu.getImports();
            int i = 0;
            while (i < imports.length) {
                IImportDeclaration curr = imports[i];
                char prefix = Flags.isStatic(curr.getFlags()) ? (char)'s' : 'n';
                existingImport.add(String.valueOf(prefix) + curr.getElementName());
                ++i;
            }
        }
        return new ImportRewrite(cu, null, existingImport);
    }

    public static ImportRewrite create(CompilationUnit astRoot, boolean restoreExistingImports) {
        if (astRoot == null) {
            throw new IllegalArgumentException("AST must not be null");
        }
        ITypeRoot typeRoot = astRoot.getTypeRoot();
        if (!(typeRoot instanceof ICompilationUnit)) {
            throw new IllegalArgumentException("AST must have been constructed from a Java element");
        }
        ArrayList<String> existingImport = null;
        if (restoreExistingImports) {
            existingImport = new ArrayList<String>();
            List imports = astRoot.imports();
            int i = 0;
            while (i < imports.size()) {
                ImportDeclaration curr = (ImportDeclaration)imports.get(i);
                StringBuffer buf = new StringBuffer();
                buf.append(curr.isStatic() ? (char)'s' : 'n').append(curr.getName().getFullyQualifiedName());
                if (curr.isOnDemand()) {
                    if (buf.length() > 1) {
                        buf.append('.');
                    }
                    buf.append('*');
                }
                existingImport.add(buf.toString());
                ++i;
            }
        }
        return new ImportRewrite((ICompilationUnit)typeRoot, astRoot, existingImport);
    }

    private ImportRewrite(ICompilationUnit cu, CompilationUnit astRoot, List existingImports) {
        this.compilationUnit = cu;
        this.astRoot = astRoot;
        if (existingImports != null) {
            this.existingImports = existingImports;
            this.restoreExistingImports = !existingImports.isEmpty();
        } else {
            this.existingImports = new ArrayList();
            this.restoreExistingImports = false;
        }
        this.filterImplicitImports = true;
        this.useContextToFilterImplicitImports = false;
        this.defaultContext = new ImportRewriteContext(){

            public int findInContext(String qualifier, String name, int kind) {
                return ImportRewrite.this.findInImports(qualifier, name, kind);
            }
        };
        this.addedImports = null;
        this.removedImports = null;
        this.createdImports = null;
        this.createdStaticImports = null;
        this.importOrder = CharOperation.NO_STRINGS;
        this.importOnDemandThreshold = 99;
        this.staticImportOnDemandThreshold = 99;
        this.importsKindMap = new HashMap();
    }

    public void setImportOrder(String[] order) {
        if (order == null) {
            throw new IllegalArgumentException("Order must not be null");
        }
        this.importOrder = order;
    }

    public void setOnDemandImportThreshold(int threshold) {
        if (threshold <= 0) {
            throw new IllegalArgumentException("Threshold must be positive.");
        }
        this.importOnDemandThreshold = threshold;
    }

    public void setStaticOnDemandImportThreshold(int threshold) {
        if (threshold <= 0) {
            throw new IllegalArgumentException("Threshold must be positive.");
        }
        this.staticImportOnDemandThreshold = threshold;
    }

    public ICompilationUnit getCompilationUnit() {
        return this.compilationUnit;
    }

    public ImportRewriteContext getDefaultImportRewriteContext() {
        return this.defaultContext;
    }

    public void setFilterImplicitImports(boolean filterImplicitImports) {
        this.filterImplicitImports = filterImplicitImports;
    }

    public void setUseContextToFilterImplicitImports(boolean useContextToFilterImplicitImports) {
        this.useContextToFilterImplicitImports = useContextToFilterImplicitImports;
    }

    private static int compareImport(char prefix, String qualifier, String name, String curr) {
        if (curr.charAt(0) != prefix || !curr.endsWith(name)) {
            return 2;
        }
        if ((curr = curr.substring(1)).length() == name.length()) {
            if (qualifier.length() == 0) {
                return 1;
            }
            return 3;
        }
        int dotPos = curr.length() - name.length() - 1;
        if (curr.charAt(dotPos) != '.') {
            return 2;
        }
        if (qualifier.length() != dotPos || !curr.startsWith(qualifier)) {
            return 3;
        }
        return 1;
    }

    final int findInImports(String qualifier, String name, int kind) {
        boolean allowAmbiguity = kind == 3 || name.length() == 1 && name.charAt(0) == '*';
        List imports = this.existingImports;
        char prefix = kind == 1 ? (char)'n' : 's';
        int i = imports.size() - 1;
        while (i >= 0) {
            String curr = (String)imports.get(i);
            int res = ImportRewrite.compareImport(prefix, qualifier, name, curr);
            if (!(res == 2 || allowAmbiguity && res != 1)) {
                if (prefix != 's') {
                    return res;
                }
                Object currKind = this.importsKindMap.get(curr.substring(1));
                if (currKind != null && currKind.equals(this.importsKindMap.get(String.valueOf(qualifier) + '.' + name))) {
                    return res;
                }
            }
            --i;
        }
        if (this.filterImplicitImports && this.useContextToFilterImplicitImports) {
            String fPackageName = this.compilationUnit.getParent().getElementName();
            String mainTypeSimpleName = JavaCore.removeJavaLikeExtension(this.compilationUnit.getElementName());
            String fMainTypeName = Util.concatenateName(fPackageName, mainTypeSimpleName, '.');
            if (kind == 1 && (qualifier.equals(fPackageName) || fMainTypeName.equals(Util.concatenateName(qualifier, name, '.')))) {
                return 1;
            }
        }
        return 2;
    }

    public Type addImportFromSignature(String typeSig, AST ast) {
        return this.addImportFromSignature(typeSig, ast, this.defaultContext);
    }

    public Type addImportFromSignature(String typeSig, AST ast, ImportRewriteContext context) {
        if (typeSig == null || typeSig.length() == 0) {
            throw new IllegalArgumentException("Invalid type signature: empty or null");
        }
        int sigKind = Signature.getTypeSignatureKind(typeSig);
        switch (sigKind) {
            case 2: {
                return ast.newPrimitiveType(PrimitiveType.toCode(Signature.toString(typeSig)));
            }
            case 4: {
                Type elementType = this.addImportFromSignature(Signature.getElementType(typeSig), ast, context);
                return ast.newArrayType(elementType, Signature.getArrayCount(typeSig));
            }
            case 1: {
                String erasureSig = Signature.getTypeErasure(typeSig);
                String erasureName = Signature.toString(erasureSig);
                if (erasureSig.charAt(0) == 'L') {
                    erasureName = this.internalAddImport(erasureName, context);
                }
                SimpleType baseType = ast.newSimpleType(ast.newName(erasureName));
                String[] typeArguments = Signature.getTypeArguments(typeSig);
                if (typeArguments.length > 0) {
                    ParameterizedType type = ast.newParameterizedType(baseType);
                    List argNodes = type.typeArguments();
                    int i = 0;
                    while (i < typeArguments.length) {
                        String curr = typeArguments[i];
                        if (this.containsNestedCapture(curr)) {
                            argNodes.add(ast.newWildcardType());
                        } else {
                            argNodes.add(this.addImportFromSignature(curr, ast, context));
                        }
                        ++i;
                    }
                    return type;
                }
                return baseType;
            }
            case 3: {
                return ast.newSimpleType(ast.newSimpleName(Signature.toString(typeSig)));
            }
            case 5: {
                WildcardType wildcardType = ast.newWildcardType();
                char ch = typeSig.charAt(0);
                if (ch != '*') {
                    Type bound = this.addImportFromSignature(typeSig.substring(1), ast, context);
                    wildcardType.setBound(bound, ch == '+');
                }
                return wildcardType;
            }
            case 6: {
                return this.addImportFromSignature(typeSig.substring(1), ast, context);
            }
        }
        throw new IllegalArgumentException("Unknown type signature kind: " + typeSig);
    }

    public String addImport(ITypeBinding binding) {
        return this.addImport(binding, this.defaultContext);
    }

    public String addImport(ITypeBinding binding, ImportRewriteContext context) {
        if (binding.isPrimitive() || binding.isTypeVariable() || binding.isRecovered()) {
            return binding.getName();
        }
        ITypeBinding normalizedBinding = ImportRewrite.normalizeTypeBinding(binding);
        if (normalizedBinding == null) {
            return "invalid";
        }
        if (normalizedBinding.isWildcardType()) {
            StringBuffer res = new StringBuffer("?");
            ITypeBinding bound = normalizedBinding.getBound();
            if (bound != null && !bound.isWildcardType() && !bound.isCapture()) {
                if (normalizedBinding.isUpperbound()) {
                    res.append(" extends ");
                } else {
                    res.append(" super ");
                }
                res.append(this.addImport(bound, context));
            }
            return res.toString();
        }
        if (normalizedBinding.isArray()) {
            StringBuffer res = new StringBuffer(this.addImport(normalizedBinding.getElementType(), context));
            int i = normalizedBinding.getDimensions();
            while (i > 0) {
                res.append("[]");
                --i;
            }
            return res.toString();
        }
        String qualifiedName = ImportRewrite.getRawQualifiedName(normalizedBinding);
        if (qualifiedName.length() > 0) {
            String str = this.internalAddImport(qualifiedName, context);
            ITypeBinding[] typeArguments = normalizedBinding.getTypeArguments();
            if (typeArguments.length > 0) {
                StringBuffer res = new StringBuffer(str);
                res.append('<');
                int i = 0;
                while (i < typeArguments.length) {
                    ITypeBinding curr;
                    if (i > 0) {
                        res.append(',');
                    }
                    if (this.containsNestedCapture(curr = typeArguments[i], false)) {
                        res.append('?');
                    } else {
                        res.append(this.addImport(curr, context));
                    }
                    ++i;
                }
                res.append('>');
                return res.toString();
            }
            return str;
        }
        return ImportRewrite.getRawName(normalizedBinding);
    }

    private boolean containsNestedCapture(ITypeBinding binding, boolean isNested) {
        if (binding == null || binding.isPrimitive() || binding.isTypeVariable()) {
            return false;
        }
        if (binding.isCapture()) {
            if (isNested) {
                return true;
            }
            return this.containsNestedCapture(binding.getWildcard(), true);
        }
        if (binding.isWildcardType()) {
            return this.containsNestedCapture(binding.getBound(), true);
        }
        if (binding.isArray()) {
            return this.containsNestedCapture(binding.getElementType(), true);
        }
        ITypeBinding[] typeArguments = binding.getTypeArguments();
        int i = 0;
        while (i < typeArguments.length) {
            if (this.containsNestedCapture(typeArguments[i], true)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private boolean containsNestedCapture(String signature) {
        return signature.length() > 1 && signature.indexOf(33, 1) != -1;
    }

    private static ITypeBinding normalizeTypeBinding(ITypeBinding binding) {
        if (binding != null && !binding.isNullType() && !"void".equals(binding.getName())) {
            if (binding.isAnonymous()) {
                ITypeBinding[] baseBindings = binding.getInterfaces();
                if (baseBindings.length > 0) {
                    return baseBindings[0];
                }
                return binding.getSuperclass();
            }
            if (binding.isCapture()) {
                return binding.getWildcard();
            }
            return binding;
        }
        return null;
    }

    public Type addImport(ITypeBinding binding, AST ast) {
        return this.addImport(binding, ast, this.defaultContext);
    }

    public Type addImport(ITypeBinding binding, AST ast, ImportRewriteContext context) {
        if (binding.isPrimitive()) {
            return ast.newPrimitiveType(PrimitiveType.toCode(binding.getName()));
        }
        ITypeBinding normalizedBinding = ImportRewrite.normalizeTypeBinding(binding);
        if (normalizedBinding == null) {
            return ast.newSimpleType(ast.newSimpleName("invalid"));
        }
        if (normalizedBinding.isTypeVariable()) {
            return ast.newSimpleType(ast.newSimpleName(binding.getName()));
        }
        if (normalizedBinding.isWildcardType()) {
            WildcardType wcType = ast.newWildcardType();
            ITypeBinding bound = normalizedBinding.getBound();
            if (bound != null && !bound.isWildcardType() && !bound.isCapture()) {
                Type boundType = this.addImport(bound, ast, context);
                wcType.setBound(boundType, normalizedBinding.isUpperbound());
            }
            return wcType;
        }
        if (normalizedBinding.isArray()) {
            Type elementType = this.addImport(normalizedBinding.getElementType(), ast, context);
            return ast.newArrayType(elementType, normalizedBinding.getDimensions());
        }
        String qualifiedName = ImportRewrite.getRawQualifiedName(normalizedBinding);
        if (qualifiedName.length() > 0) {
            String res = this.internalAddImport(qualifiedName, context);
            ITypeBinding[] typeArguments = normalizedBinding.getTypeArguments();
            if (typeArguments.length > 0) {
                SimpleType erasureType = ast.newSimpleType(ast.newName(res));
                ParameterizedType paramType = ast.newParameterizedType(erasureType);
                List arguments = paramType.typeArguments();
                int i = 0;
                while (i < typeArguments.length) {
                    ITypeBinding curr = typeArguments[i];
                    if (this.containsNestedCapture(curr, false)) {
                        arguments.add(ast.newWildcardType());
                    } else {
                        arguments.add(this.addImport(curr, ast, context));
                    }
                    ++i;
                }
                return paramType;
            }
            return ast.newSimpleType(ast.newName(res));
        }
        return ast.newSimpleType(ast.newName(ImportRewrite.getRawName(normalizedBinding)));
    }

    public String addImport(String qualifiedTypeName, ImportRewriteContext context) {
        int angleBracketOffset = qualifiedTypeName.indexOf(60);
        if (angleBracketOffset != -1) {
            return String.valueOf(this.internalAddImport(qualifiedTypeName.substring(0, angleBracketOffset), context)) + qualifiedTypeName.substring(angleBracketOffset);
        }
        int bracketOffset = qualifiedTypeName.indexOf(91);
        if (bracketOffset != -1) {
            return String.valueOf(this.internalAddImport(qualifiedTypeName.substring(0, bracketOffset), context)) + qualifiedTypeName.substring(bracketOffset);
        }
        return this.internalAddImport(qualifiedTypeName, context);
    }

    public String addImport(String qualifiedTypeName) {
        return this.addImport(qualifiedTypeName, this.defaultContext);
    }

    public String addStaticImport(IBinding binding) {
        return this.addStaticImport(binding, this.defaultContext);
    }

    public String addStaticImport(IBinding binding, ImportRewriteContext context) {
        if (Modifier.isStatic(binding.getModifiers())) {
            if (binding instanceof IVariableBinding) {
                IVariableBinding variableBinding = (IVariableBinding)binding;
                if (variableBinding.isField()) {
                    ITypeBinding declaringType = variableBinding.getDeclaringClass();
                    return this.addStaticImport(ImportRewrite.getRawQualifiedName(declaringType), binding.getName(), true, context);
                }
            } else if (binding instanceof IMethodBinding) {
                ITypeBinding declaringType = ((IMethodBinding)binding).getDeclaringClass();
                return this.addStaticImport(ImportRewrite.getRawQualifiedName(declaringType), binding.getName(), false, context);
            }
        }
        throw new IllegalArgumentException("Binding must be a static field or method.");
    }

    public String addStaticImport(String declaringTypeName, String simpleName, boolean isField) {
        return this.addStaticImport(declaringTypeName, simpleName, isField, this.defaultContext);
    }

    public String addStaticImport(String declaringTypeName, String simpleName, boolean isField, ImportRewriteContext context) {
        String key = String.valueOf(declaringTypeName) + '.' + simpleName;
        if (declaringTypeName.indexOf(46) == -1) {
            return key;
        }
        if (context == null) {
            context = this.defaultContext;
        }
        int kind = isField ? 2 : 3;
        this.importsKindMap.put(key, new Integer(kind));
        int res = context.findInContext(declaringTypeName, simpleName, kind);
        if (res == 3) {
            return key;
        }
        if (res == 2) {
            this.addEntry(String.valueOf('s') + key);
        }
        return simpleName;
    }

    private String internalAddImport(String fullTypeName, ImportRewriteContext context) {
        int res;
        String typeName;
        String typeContainerName;
        int idx = fullTypeName.lastIndexOf(46);
        if (idx != -1) {
            typeContainerName = fullTypeName.substring(0, idx);
            typeName = fullTypeName.substring(idx + 1);
        } else {
            typeContainerName = "";
            typeName = fullTypeName;
        }
        if (typeContainerName.length() == 0 && PrimitiveType.toCode(typeName) != null) {
            return fullTypeName;
        }
        if (context == null) {
            context = this.defaultContext;
        }
        if ((res = context.findInContext(typeContainerName, typeName, 1)) == 3) {
            return fullTypeName;
        }
        if (res == 2) {
            this.addEntry(String.valueOf('n') + fullTypeName);
        }
        return typeName;
    }

    private void addEntry(String entry) {
        this.existingImports.add(entry);
        if (this.removedImports != null && this.removedImports.remove(entry)) {
            return;
        }
        if (this.addedImports == null) {
            this.addedImports = new ArrayList();
        }
        this.addedImports.add(entry);
    }

    private boolean removeEntry(String entry) {
        if (this.existingImports.remove(entry)) {
            if (this.addedImports != null && this.addedImports.remove(entry)) {
                return true;
            }
            if (this.removedImports == null) {
                this.removedImports = new ArrayList();
            }
            this.removedImports.add(entry);
            return true;
        }
        return false;
    }

    public boolean removeImport(String qualifiedName) {
        return this.removeEntry(String.valueOf('n') + qualifiedName);
    }

    public boolean removeStaticImport(String qualifiedName) {
        return this.removeEntry(String.valueOf('s') + qualifiedName);
    }

    private static String getRawName(ITypeBinding normalizedBinding) {
        return normalizedBinding.getTypeDeclaration().getName();
    }

    private static String getRawQualifiedName(ITypeBinding normalizedBinding) {
        return normalizedBinding.getTypeDeclaration().getQualifiedName();
    }

    public final TextEdit rewriteImports(IProgressMonitor monitor) throws CoreException {
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        try {
            String curr;
            int i;
            monitor.beginTask(Messages.bind(Messages.importRewrite_processDescription), 2);
            if (!this.hasRecordedChanges()) {
                this.createdImports = CharOperation.NO_STRINGS;
                this.createdStaticImports = CharOperation.NO_STRINGS;
                MultiTextEdit multiTextEdit = new MultiTextEdit();
                return multiTextEdit;
            }
            CompilationUnit usedAstRoot = this.astRoot;
            if (usedAstRoot == null) {
                ASTParser parser = ASTParser.newParser(4);
                parser.setSource(this.compilationUnit);
                parser.setFocalPosition(0);
                parser.setResolveBindings(false);
                usedAstRoot = (CompilationUnit)parser.createAST((IProgressMonitor)new SubProgressMonitor(monitor, 1));
            }
            ImportRewriteAnalyzer computer = new ImportRewriteAnalyzer(this.compilationUnit, usedAstRoot, this.importOrder, this.importOnDemandThreshold, this.staticImportOnDemandThreshold, this.restoreExistingImports, this.useContextToFilterImplicitImports);
            computer.setFilterImplicitImports(this.filterImplicitImports);
            if (this.addedImports != null) {
                i = 0;
                while (i < this.addedImports.size()) {
                    curr = (String)this.addedImports.get(i);
                    computer.addImport(curr.substring(1), 's' == curr.charAt(0));
                    ++i;
                }
            }
            if (this.removedImports != null) {
                i = 0;
                while (i < this.removedImports.size()) {
                    curr = (String)this.removedImports.get(i);
                    computer.removeImport(curr.substring(1), 's' == curr.charAt(0));
                    ++i;
                }
            }
            MultiTextEdit result = computer.getResultingEdits((IProgressMonitor)new SubProgressMonitor(monitor, 1));
            this.createdImports = computer.getCreatedImports();
            this.createdStaticImports = computer.getCreatedStaticImports();
            MultiTextEdit multiTextEdit = result;
            return multiTextEdit;
        }
        finally {
            monitor.done();
        }
    }

    public String[] getCreatedImports() {
        return this.createdImports;
    }

    public String[] getCreatedStaticImports() {
        return this.createdStaticImports;
    }

    public String[] getAddedImports() {
        return ImportRewrite.filterFromList(this.addedImports, 'n');
    }

    public String[] getAddedStaticImports() {
        return ImportRewrite.filterFromList(this.addedImports, 's');
    }

    public String[] getRemovedImports() {
        return ImportRewrite.filterFromList(this.removedImports, 'n');
    }

    public String[] getRemovedStaticImports() {
        return ImportRewrite.filterFromList(this.removedImports, 's');
    }

    public boolean hasRecordedChanges() {
        return !this.restoreExistingImports || this.addedImports != null && !this.addedImports.isEmpty() || this.removedImports != null && !this.removedImports.isEmpty();
    }

    private static String[] filterFromList(List imports, char prefix) {
        if (imports == null) {
            return CharOperation.NO_STRINGS;
        }
        ArrayList<String> res = new ArrayList<String>();
        int i = 0;
        while (i < imports.size()) {
            String curr = (String)imports.get(i);
            if (prefix == curr.charAt(0)) {
                res.add(curr.substring(1));
            }
            ++i;
        }
        return res.toArray(new String[res.size()]);
    }

    public static abstract class ImportRewriteContext {
        public static final int RES_NAME_FOUND = 1;
        public static final int RES_NAME_UNKNOWN = 2;
        public static final int RES_NAME_CONFLICT = 3;
        public static final int KIND_TYPE = 1;
        public static final int KIND_STATIC_FIELD = 2;
        public static final int KIND_STATIC_METHOD = 3;

        public abstract int findInContext(String var1, String var2, int var3);
    }
}

