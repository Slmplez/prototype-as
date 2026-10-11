/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.SubProgressMonitor
 */
package org.eclipse.jdt.internal.core.search;

import java.util.HashMap;
import java.util.HashSet;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IPackageDeclaration;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchDocument;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.core.search.SearchRequestor;
import org.eclipse.jdt.core.search.TypeNameMatch;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.ExtraFlags;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.DefaultWorkingCopyOwner;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.search.BasicSearchEngine;
import org.eclipse.jdt.internal.core.search.HierarchyScope;
import org.eclipse.jdt.internal.core.search.IRestrictedAccessConstructorRequestor;
import org.eclipse.jdt.internal.core.search.IRestrictedAccessTypeRequestor;
import org.eclipse.jdt.internal.core.search.IndexQueryRequestor;
import org.eclipse.jdt.internal.core.search.JavaSearchDocument;
import org.eclipse.jdt.internal.core.search.JavaSearchParticipant;
import org.eclipse.jdt.internal.core.search.JavaSearchScope;
import org.eclipse.jdt.internal.core.search.JavaSearchTypeNameMatch;
import org.eclipse.jdt.internal.core.search.PathCollector;
import org.eclipse.jdt.internal.core.search.PatternSearchJob;
import org.eclipse.jdt.internal.core.search.TypeNameMatchRequestorWrapper;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.search.indexing.IndexManager;
import org.eclipse.jdt.internal.core.search.matching.ConstructorDeclarationPattern;
import org.eclipse.jdt.internal.core.search.matching.DeclarationOfAccessedFieldsPattern;
import org.eclipse.jdt.internal.core.search.matching.DeclarationOfReferencedMethodsPattern;
import org.eclipse.jdt.internal.core.search.matching.DeclarationOfReferencedTypesPattern;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.matching.MultiTypeDeclarationPattern;
import org.eclipse.jdt.internal.core.search.matching.QualifiedTypeDeclarationPattern;
import org.eclipse.jdt.internal.core.search.matching.SecondaryTypeDeclarationPattern;
import org.eclipse.jdt.internal.core.search.matching.TypeDeclarationPattern;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class BasicSearchEngine {
    private Parser parser;
    private CompilerOptions compilerOptions;
    private org.eclipse.jdt.core.ICompilationUnit[] workingCopies;
    private WorkingCopyOwner workingCopyOwner;
    public static boolean VERBOSE = false;

    public BasicSearchEngine() {
    }

    public BasicSearchEngine(org.eclipse.jdt.core.ICompilationUnit[] workingCopies) {
        this.workingCopies = workingCopies;
    }

    char convertTypeKind(int typeDeclarationKind) {
        switch (typeDeclarationKind) {
            case 1: {
                return 'C';
            }
            case 2: {
                return 'I';
            }
            case 3: {
                return 'E';
            }
            case 4: {
                return 'A';
            }
        }
        return '\u0000';
    }

    public BasicSearchEngine(WorkingCopyOwner workingCopyOwner) {
        this.workingCopyOwner = workingCopyOwner;
    }

    public static IJavaSearchScope createHierarchyScope(IType type) throws JavaModelException {
        return BasicSearchEngine.createHierarchyScope(type, DefaultWorkingCopyOwner.PRIMARY);
    }

    public static IJavaSearchScope createHierarchyScope(IType type, WorkingCopyOwner owner) throws JavaModelException {
        return new HierarchyScope(type, owner);
    }

    public static IJavaSearchScope createStrictHierarchyScope(IJavaProject project, IType type, boolean onlySubtypes, boolean includeFocusType, WorkingCopyOwner owner) throws JavaModelException {
        return new HierarchyScope(project, type, owner, onlySubtypes, true, includeFocusType);
    }

    public static IJavaSearchScope createJavaSearchScope(IJavaElement[] elements) {
        return BasicSearchEngine.createJavaSearchScope(elements, true);
    }

    public static IJavaSearchScope createJavaSearchScope(IJavaElement[] elements, boolean includeReferencedProjects) {
        int includeMask = 7;
        if (includeReferencedProjects) {
            includeMask |= 8;
        }
        return BasicSearchEngine.createJavaSearchScope(elements, includeMask);
    }

    public static IJavaSearchScope createJavaSearchScope(IJavaElement[] elements, int includeMask) {
        HashSet<IJavaElement> projectsToBeAdded = new HashSet<IJavaElement>(2);
        int i = 0;
        int length = elements.length;
        while (i < length) {
            IJavaElement element = elements[i];
            if (element instanceof JavaProject) {
                projectsToBeAdded.add(element);
            }
            ++i;
        }
        JavaSearchScope scope = new JavaSearchScope();
        int i2 = 0;
        int length2 = elements.length;
        while (i2 < length2) {
            IJavaElement element = elements[i2];
            if (element != null) {
                try {
                    if (projectsToBeAdded.contains(element)) {
                        scope.add((JavaProject)element, includeMask, projectsToBeAdded);
                    } else {
                        scope.add(element);
                    }
                }
                catch (JavaModelException javaModelException) {}
            }
            ++i2;
        }
        return scope;
    }

    public static TypeNameMatch createTypeNameMatch(IType type, int modifiers) {
        return new JavaSearchTypeNameMatch(type, modifiers);
    }

    public static IJavaSearchScope createWorkspaceScope() {
        return JavaModelManager.getJavaModelManager().getWorkspaceScope();
    }

    void findMatches(SearchPattern pattern, SearchParticipant[] participants, IJavaSearchScope scope, SearchRequestor requestor, IProgressMonitor monitor) throws CoreException {
        if (monitor != null && monitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        try {
            if (VERBOSE) {
                Util.verbose("Searching for pattern: " + pattern.toString());
                Util.verbose(scope.toString());
            }
            if (participants == null) {
                if (VERBOSE) {
                    Util.verbose("No participants => do nothing!");
                }
                return;
            }
            int length = participants.length;
            if (monitor != null) {
                monitor.beginTask(Messages.engine_searching, 100 * length);
            }
            IndexManager indexManager = JavaModelManager.getIndexManager();
            requestor.beginReporting();
            int i = 0;
            while (i < length) {
                if (monitor != null && monitor.isCanceled()) {
                    throw new OperationCanceledException();
                }
                SearchParticipant participant = participants[i];
                try {
                    String[] indexMatchPaths;
                    if (monitor != null) {
                        monitor.subTask(Messages.bind(Messages.engine_searching_indexing, new String[]{participant.getDescription()}));
                    }
                    participant.beginSearching();
                    requestor.enterParticipant(participant);
                    PathCollector pathCollector = new PathCollector();
                    indexManager.performConcurrentJob(new PatternSearchJob(pattern, participant, scope, pathCollector), 3, (IProgressMonitor)(monitor == null ? null : new SubProgressMonitor(monitor, 50)));
                    if (monitor != null && monitor.isCanceled()) {
                        throw new OperationCanceledException();
                    }
                    if (monitor != null) {
                        monitor.subTask(Messages.bind(Messages.engine_searching_matching, new String[]{participant.getDescription()}));
                    }
                    if ((indexMatchPaths = pathCollector.getPaths()) != null) {
                        pathCollector = null;
                        int indexMatchLength = indexMatchPaths.length;
                        SearchDocument[] indexMatches = new SearchDocument[indexMatchLength];
                        int j = 0;
                        while (j < indexMatchLength) {
                            indexMatches[j] = participant.getDocument(indexMatchPaths[j]);
                            ++j;
                        }
                        SearchDocument[] matches = MatchLocator.addWorkingCopies(pattern, indexMatches, this.getWorkingCopies(), participant);
                        participant.locateMatches(matches, pattern, scope, requestor, (IProgressMonitor)(monitor == null ? null : new SubProgressMonitor(monitor, 50)));
                    }
                }
                finally {
                    requestor.exitParticipant(participant);
                    participant.doneSearching();
                }
                ++i;
            }
        }
        finally {
            requestor.endReporting();
            if (monitor != null) {
                monitor.done();
            }
        }
    }

    public static SearchParticipant getDefaultSearchParticipant() {
        return new JavaSearchParticipant();
    }

    public static String getMatchRuleString(int matchRule) {
        if (matchRule == 0) {
            return "R_EXACT_MATCH";
        }
        StringBuffer buffer = new StringBuffer();
        int i = 1;
        while (i <= 16) {
            int bit = matchRule & 1 << i - 1;
            if (bit != 0 && buffer.length() > 0) {
                buffer.append(" | ");
            }
            switch (bit) {
                case 1: {
                    buffer.append("R_PREFIX_MATCH");
                    break;
                }
                case 8: {
                    buffer.append("R_CASE_SENSITIVE");
                    break;
                }
                case 32: {
                    buffer.append("R_EQUIVALENT_MATCH");
                    break;
                }
                case 16: {
                    buffer.append("R_ERASURE_MATCH");
                    break;
                }
                case 64: {
                    buffer.append("R_FULL_MATCH");
                    break;
                }
                case 2: {
                    buffer.append("R_PATTERN_MATCH");
                    break;
                }
                case 4: {
                    buffer.append("R_REGEXP_MATCH");
                    break;
                }
                case 128: {
                    buffer.append("R_CAMELCASE_MATCH");
                    break;
                }
                case 256: {
                    buffer.append("R_CAMELCASE_SAME_PART_COUNT_MATCH");
                }
            }
            ++i;
        }
        return buffer.toString();
    }

    public static String getSearchForString(int searchFor) {
        switch (searchFor) {
            case 0: {
                return "TYPE";
            }
            case 1: {
                return "METHOD";
            }
            case 2: {
                return "PACKAGE";
            }
            case 3: {
                return "CONSTRUCTOR";
            }
            case 4: {
                return "FIELD";
            }
            case 5: {
                return "CLASS";
            }
            case 6: {
                return "INTERFACE";
            }
            case 7: {
                return "ENUM";
            }
            case 8: {
                return "ANNOTATION_TYPE";
            }
            case 9: {
                return "CLASS_AND_ENUM";
            }
            case 10: {
                return "CLASS_AND_INTERFACE";
            }
            case 11: {
                return "INTERFACE_AND_ANNOTATION";
            }
        }
        return "UNKNOWN";
    }

    private Parser getParser() {
        if (this.parser == null) {
            this.compilerOptions = new CompilerOptions(JavaCore.getOptions());
            ProblemReporter problemReporter = new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), this.compilerOptions, new DefaultProblemFactory());
            this.parser = new Parser(problemReporter, true);
        }
        return this.parser;
    }

    private org.eclipse.jdt.core.ICompilationUnit[] getWorkingCopies() {
        int length;
        org.eclipse.jdt.core.ICompilationUnit[] copies;
        if (this.workingCopies != null) {
            if (this.workingCopyOwner == null) {
                copies = JavaModelManager.getJavaModelManager().getWorkingCopies(DefaultWorkingCopyOwner.PRIMARY, false);
                if (copies == null) {
                    copies = this.workingCopies;
                } else {
                    org.eclipse.jdt.core.ICompilationUnit unit;
                    HashMap<IPath, org.eclipse.jdt.core.ICompilationUnit> pathToCUs = new HashMap<IPath, org.eclipse.jdt.core.ICompilationUnit>();
                    int i = 0;
                    int length2 = copies.length;
                    while (i < length2) {
                        unit = copies[i];
                        pathToCUs.put(unit.getPath(), unit);
                        ++i;
                    }
                    i = 0;
                    length2 = this.workingCopies.length;
                    while (i < length2) {
                        unit = this.workingCopies[i];
                        pathToCUs.put(unit.getPath(), unit);
                        ++i;
                    }
                    length = pathToCUs.size();
                    copies = new org.eclipse.jdt.core.ICompilationUnit[length];
                    pathToCUs.values().toArray(copies);
                }
            } else {
                copies = this.workingCopies;
            }
        } else {
            copies = this.workingCopyOwner != null ? JavaModelManager.getJavaModelManager().getWorkingCopies(this.workingCopyOwner, true) : JavaModelManager.getJavaModelManager().getWorkingCopies(DefaultWorkingCopyOwner.PRIMARY, false);
        }
        if (copies == null) {
            return null;
        }
        org.eclipse.jdt.core.ICompilationUnit[] result = null;
        length = copies.length;
        int index = 0;
        int i = 0;
        while (i < length) {
            CompilationUnit copy = (CompilationUnit)copies[i];
            try {
                if (!copy.isPrimary() || copy.hasUnsavedChanges() || copy.hasResourceChanged()) {
                    if (result == null) {
                        result = new org.eclipse.jdt.core.ICompilationUnit[length];
                    }
                    result[index++] = copy;
                }
            }
            catch (JavaModelException javaModelException) {}
            ++i;
        }
        if (index != length && result != null) {
            org.eclipse.jdt.core.ICompilationUnit[] iCompilationUnitArray = result;
            result = new org.eclipse.jdt.core.ICompilationUnit[index];
            System.arraycopy(iCompilationUnitArray, 0, result, 0, index);
        }
        return result;
    }

    private org.eclipse.jdt.core.ICompilationUnit[] getWorkingCopies(IJavaElement element) {
        if (element instanceof IMember) {
            org.eclipse.jdt.core.ICompilationUnit cu = ((IMember)element).getCompilationUnit();
            if (cu != null && cu.isWorkingCopy()) {
                return new org.eclipse.jdt.core.ICompilationUnit[]{cu};
            }
        } else if (element instanceof org.eclipse.jdt.core.ICompilationUnit) {
            return new org.eclipse.jdt.core.ICompilationUnit[]{(org.eclipse.jdt.core.ICompilationUnit)element};
        }
        return null;
    }

    boolean match(char patternTypeSuffix, int modifiers) {
        switch (patternTypeSuffix) {
            case 'C': {
                return (modifiers & 0x6200) == 0;
            }
            case '\n': {
                return (modifiers & 0x6000) == 0;
            }
            case '\t': {
                return (modifiers & 0x2200) == 0;
            }
            case 'I': {
                return (modifiers & 0x200) != 0;
            }
            case '\u000b': {
                return (modifiers & 0x2200) != 0;
            }
            case 'E': {
                return (modifiers & 0x4000) != 0;
            }
            case 'A': {
                return (modifiers & 0x2000) != 0;
            }
        }
        return true;
    }

    boolean match(char patternTypeSuffix, char[] patternPkg, int matchRulePkg, char[] patternTypeName, int matchRuleType, int typeKind, char[] pkg, char[] typeName) {
        boolean isCaseSensitive;
        boolean isPkgCaseSensitive;
        switch (patternTypeSuffix) {
            case 'C': {
                if (typeKind == 1) break;
                return false;
            }
            case '\n': {
                if (typeKind == 1 || typeKind == 2) break;
                return false;
            }
            case '\t': {
                if (typeKind == 1 || typeKind == 3) break;
                return false;
            }
            case 'I': {
                if (typeKind == 2) break;
                return false;
            }
            case '\u000b': {
                if (typeKind == 2 || typeKind == 4) break;
                return false;
            }
            case 'E': {
                if (typeKind == 3) break;
                return false;
            }
            case 'A': {
                if (typeKind == 4) break;
                return false;
            }
        }
        boolean bl = isPkgCaseSensitive = (matchRulePkg & 8) != 0;
        if (patternPkg != null && !CharOperation.equals(patternPkg, pkg, isPkgCaseSensitive)) {
            return false;
        }
        boolean bl2 = isCaseSensitive = (matchRuleType & 8) != 0;
        if (patternTypeName != null) {
            boolean isCamelCase = (matchRuleType & 0x180) != 0;
            int matchMode = matchRuleType & 0x187;
            if (!isCaseSensitive && !isCamelCase) {
                patternTypeName = CharOperation.toLowerCase(patternTypeName);
            }
            boolean matchFirstChar = !isCaseSensitive || patternTypeName[0] == typeName[0];
            switch (matchMode) {
                case 0: {
                    return matchFirstChar && CharOperation.equals(patternTypeName, typeName, isCaseSensitive);
                }
                case 1: {
                    return matchFirstChar && CharOperation.prefixEquals(patternTypeName, typeName, isCaseSensitive);
                }
                case 2: {
                    return CharOperation.match(patternTypeName, typeName, isCaseSensitive);
                }
                case 4: {
                    break;
                }
                case 128: {
                    if (matchFirstChar && CharOperation.camelCaseMatch(patternTypeName, typeName, false)) {
                        return true;
                    }
                    return !isCaseSensitive && matchFirstChar && CharOperation.prefixEquals(patternTypeName, typeName, false);
                }
                case 256: {
                    return matchFirstChar && CharOperation.camelCaseMatch(patternTypeName, typeName, true);
                }
            }
        }
        return true;
    }

    public void search(SearchPattern pattern, SearchParticipant[] participants, IJavaSearchScope scope, SearchRequestor requestor, IProgressMonitor monitor) throws CoreException {
        if (VERBOSE) {
            Util.verbose("BasicSearchEngine.search(SearchPattern, SearchParticipant[], IJavaSearchScope, SearchRequestor, IProgressMonitor)");
        }
        this.findMatches(pattern, participants, scope, requestor, monitor);
    }

    public void searchAllConstructorDeclarations(char[] packageName, char[] typeName, int typeMatchRule, IJavaSearchScope scope, final IRestrictedAccessConstructorRequestor nameRequestor, int waitingPolicy, IProgressMonitor progressMonitor) throws JavaModelException {
        int copiesLength;
        int validatedTypeMatchRule = SearchPattern.validateMatchRule(typeName == null ? null : new String(typeName), typeMatchRule);
        if (VERBOSE) {
            Util.verbose("BasicSearchEngine.searchAllConstructorDeclarations(char[], char[], int, IJavaSearchScope, IRestrictedAccessConstructorRequestor, int, IProgressMonitor)");
            Util.verbose("\t- package name: " + (packageName == null ? "null" : new String(packageName)));
            Util.verbose("\t- type name: " + (typeName == null ? "null" : new String(typeName)));
            Util.verbose("\t- type match rule: " + BasicSearchEngine.getMatchRuleString(typeMatchRule));
            if (validatedTypeMatchRule != typeMatchRule) {
                Util.verbose("\t- validated type match rule: " + BasicSearchEngine.getMatchRuleString(validatedTypeMatchRule));
            }
            Util.verbose("\t- scope: " + scope);
        }
        if (validatedTypeMatchRule == -1) {
            return;
        }
        IndexManager indexManager = JavaModelManager.getIndexManager();
        ConstructorDeclarationPattern pattern = new ConstructorDeclarationPattern(packageName, typeName, validatedTypeMatchRule);
        final HashSet<String> workingCopyPaths = new HashSet<String>();
        String workingCopyPath = null;
        org.eclipse.jdt.core.ICompilationUnit[] copies = this.getWorkingCopies();
        int n = copiesLength = copies == null ? 0 : copies.length;
        if (copies != null) {
            if (copiesLength == 1) {
                workingCopyPath = copies[0].getPath().toString();
            } else {
                int i = 0;
                while (i < copiesLength) {
                    org.eclipse.jdt.core.ICompilationUnit workingCopy = copies[i];
                    workingCopyPaths.add(workingCopy.getPath().toString());
                    ++i;
                }
            }
        }
        final String singleWkcpPath = workingCopyPath;
        IndexQueryRequestor searchRequestor = new IndexQueryRequestor(){

            public boolean acceptIndexMatch(String documentPath, SearchPattern indexRecord, SearchParticipant participant, AccessRuleSet access) {
                ConstructorDeclarationPattern record = (ConstructorDeclarationPattern)indexRecord;
                if ((record.extraFlags & 2) != 0) {
                    return true;
                }
                if ((record.extraFlags & 4) != 0) {
                    return true;
                }
                switch (copiesLength) {
                    case 0: {
                        break;
                    }
                    case 1: {
                        if (!singleWkcpPath.equals(documentPath)) break;
                        return true;
                    }
                    default: {
                        if (!workingCopyPaths.contains(documentPath)) break;
                        return true;
                    }
                }
                AccessRestriction accessRestriction = null;
                if (access != null) {
                    int pkgLength = record.declaringPackageName == null || record.declaringPackageName.length == 0 ? 0 : record.declaringPackageName.length + 1;
                    int nameLength = record.declaringSimpleName == null ? 0 : record.declaringSimpleName.length;
                    char[] path = new char[pkgLength + nameLength];
                    int pos = 0;
                    if (pkgLength > 0) {
                        System.arraycopy(record.declaringPackageName, 0, path, pos, pkgLength - 1);
                        CharOperation.replace(path, '.', '/');
                        path[pkgLength - 1] = 47;
                        pos += pkgLength;
                    }
                    if (nameLength > 0) {
                        System.arraycopy(record.declaringSimpleName, 0, path, pos, nameLength);
                        pos += nameLength;
                    }
                    if (pos > 0) {
                        accessRestriction = access.getViolatedRestriction(path);
                    }
                }
                nameRequestor.acceptConstructor(record.modifiers, record.declaringSimpleName, record.parameterCount, record.signature, record.parameterTypes, record.parameterNames, record.declaringTypeModifiers, record.declaringPackageName, record.extraFlags, documentPath, accessRestriction);
                return true;
            }
        };
        try {
            if (progressMonitor != null) {
                progressMonitor.beginTask(Messages.engine_searching, 1000);
            }
            indexManager.performConcurrentJob(new PatternSearchJob(pattern, BasicSearchEngine.getDefaultSearchParticipant(), scope, searchRequestor), waitingPolicy, (IProgressMonitor)(progressMonitor == null ? null : new SubProgressMonitor(progressMonitor, 1000 - copiesLength)));
            if (copies != null) {
                int i = 0;
                while (i < copiesLength) {
                    org.eclipse.jdt.core.ICompilationUnit workingCopy = copies[i];
                    if (!(scope instanceof HierarchyScope ? !((HierarchyScope)scope).encloses(workingCopy, progressMonitor) : !scope.encloses(workingCopy))) {
                        String path = workingCopy.getPath().toString();
                        if (workingCopy.isConsistent()) {
                            IPackageDeclaration[] packageDeclarations = workingCopy.getPackageDeclarations();
                            char[] packageDeclaration = packageDeclarations.length == 0 ? CharOperation.NO_CHAR : packageDeclarations[0].getElementName().toCharArray();
                            IType[] allTypes = workingCopy.getAllTypes();
                            int j = 0;
                            int allTypesLength = allTypes.length;
                            while (j < allTypesLength) {
                                IType type = allTypes[j];
                                char[] simpleName = type.getElementName().toCharArray();
                                if (this.match('\u0000', packageName, 8, typeName, validatedTypeMatchRule, 0, packageDeclaration, simpleName) && !type.isMember()) {
                                    int extraFlags = ExtraFlags.getExtraFlags(type);
                                    boolean hasConstructor = false;
                                    IMethod[] methods = type.getMethods();
                                    int k = 0;
                                    while (k < methods.length) {
                                        IMethod method = methods[k];
                                        if (method.isConstructor()) {
                                            hasConstructor = true;
                                            String[] stringParameterNames = method.getParameterNames();
                                            String[] stringParameterTypes = method.getParameterTypes();
                                            int length = stringParameterNames.length;
                                            char[][] parameterNames = new char[length][];
                                            char[][] parameterTypes = new char[length][];
                                            int l = 0;
                                            while (l < length) {
                                                parameterNames[l] = stringParameterNames[l].toCharArray();
                                                parameterTypes[l] = Signature.toCharArray(Signature.getTypeErasure(stringParameterTypes[l]).toCharArray());
                                                ++l;
                                            }
                                            nameRequestor.acceptConstructor(method.getFlags(), simpleName, parameterNames.length, null, parameterTypes, parameterNames, type.getFlags(), packageDeclaration, extraFlags, path, null);
                                        }
                                        ++k;
                                    }
                                    if (!hasConstructor) {
                                        nameRequestor.acceptConstructor(1, simpleName, -1, null, CharOperation.NO_CHAR_CHAR, CharOperation.NO_CHAR_CHAR, type.getFlags(), packageDeclaration, extraFlags, path, null);
                                    }
                                }
                                ++j;
                            }
                        } else {
                            CompilationResult compilationUnitResult;
                            ICompilationUnit unit;
                            Parser basicParser = this.getParser();
                            CompilationUnitDeclaration parsedUnit = basicParser.dietParse(unit = (ICompilationUnit)((Object)workingCopy), compilationUnitResult = new CompilationResult(unit, 0, 0, this.compilerOptions.maxProblemsPerUnit));
                            if (parsedUnit != null) {
                                char[] packageDeclaration = parsedUnit.currentPackage == null ? CharOperation.NO_CHAR : CharOperation.concatWith(parsedUnit.currentPackage.getImportName(), '.');
                                class AllConstructorDeclarationsVisitor
                                extends ASTVisitor {
                                    private TypeDeclaration[] declaringTypes;
                                    private int declaringTypesPtr;
                                    final /* synthetic */ BasicSearchEngine this$0;
                                    private final /* synthetic */ char[] val$packageName;
                                    private final /* synthetic */ char[] val$typeName;
                                    private final /* synthetic */ int val$validatedTypeMatchRule;
                                    private final /* synthetic */ char[] val$packageDeclaration;
                                    private final /* synthetic */ IRestrictedAccessConstructorRequestor val$nameRequestor;
                                    private final /* synthetic */ String val$path;

                                    AllConstructorDeclarationsVisitor(BasicSearchEngine basicSearchEngine, char[] cArray, char[] cArray2, int n, char[] cArray3, IRestrictedAccessConstructorRequestor iRestrictedAccessConstructorRequestor, String string) {
                                        this.this$0 = basicSearchEngine;
                                        this.val$packageName = cArray;
                                        this.val$typeName = cArray2;
                                        this.val$validatedTypeMatchRule = n;
                                        this.val$packageDeclaration = cArray3;
                                        this.val$nameRequestor = iRestrictedAccessConstructorRequestor;
                                        this.val$path = string;
                                        this.declaringTypes = new TypeDeclaration[0];
                                        this.declaringTypesPtr = -1;
                                    }

                                    private void endVisit(TypeDeclaration typeDeclaration) {
                                        if (!this.hasConstructor(typeDeclaration) && typeDeclaration.enclosingType == null && this.this$0.match('\u0000', this.val$packageName, 8, this.val$typeName, this.val$validatedTypeMatchRule, 0, this.val$packageDeclaration, typeDeclaration.name)) {
                                            this.val$nameRequestor.acceptConstructor(1, this.val$typeName, -1, null, CharOperation.NO_CHAR_CHAR, CharOperation.NO_CHAR_CHAR, typeDeclaration.modifiers, this.val$packageDeclaration, ExtraFlags.getExtraFlags(typeDeclaration), this.val$path, null);
                                        }
                                        this.declaringTypes[this.declaringTypesPtr] = null;
                                        --this.declaringTypesPtr;
                                    }

                                    public void endVisit(TypeDeclaration typeDeclaration, CompilationUnitScope s) {
                                        this.endVisit(typeDeclaration);
                                    }

                                    public void endVisit(TypeDeclaration memberTypeDeclaration, ClassScope s) {
                                        this.endVisit(memberTypeDeclaration);
                                    }

                                    private boolean hasConstructor(TypeDeclaration typeDeclaration) {
                                        AbstractMethodDeclaration[] methods = typeDeclaration.methods;
                                        int length = methods == null ? 0 : methods.length;
                                        int j = 0;
                                        while (j < length) {
                                            if (methods[j].isConstructor()) {
                                                return true;
                                            }
                                            ++j;
                                        }
                                        return false;
                                    }

                                    public boolean visit(ConstructorDeclaration constructorDeclaration, ClassScope classScope) {
                                        TypeDeclaration typeDeclaration = this.declaringTypes[this.declaringTypesPtr];
                                        if (this.this$0.match('\u0000', this.val$packageName, 8, this.val$typeName, this.val$validatedTypeMatchRule, 0, this.val$packageDeclaration, typeDeclaration.name)) {
                                            Argument[] arguments = constructorDeclaration.arguments;
                                            int length = arguments == null ? 0 : arguments.length;
                                            char[][] parameterNames = new char[length][];
                                            char[][] parameterTypes = new char[length][];
                                            int l = 0;
                                            while (l < length) {
                                                Argument argument = arguments[l];
                                                parameterNames[l] = argument.name;
                                                parameterTypes[l] = argument.type instanceof SingleTypeReference ? ((SingleTypeReference)argument.type).token : CharOperation.concatWith(((QualifiedTypeReference)argument.type).tokens, '.');
                                                ++l;
                                            }
                                            TypeDeclaration enclosing = typeDeclaration.enclosingType;
                                            char[][] enclosingTypeNames = CharOperation.NO_CHAR_CHAR;
                                            while (enclosing != null) {
                                                enclosingTypeNames = CharOperation.arrayConcat((char[][])new char[][]{enclosing.name}, enclosingTypeNames);
                                                enclosing = (enclosing.bits & 0x400) != 0 ? enclosing.enclosingType : null;
                                            }
                                            this.val$nameRequestor.acceptConstructor(constructorDeclaration.modifiers, this.val$typeName, parameterNames.length, null, parameterTypes, parameterNames, typeDeclaration.modifiers, this.val$packageDeclaration, ExtraFlags.getExtraFlags(typeDeclaration), this.val$path, null);
                                        }
                                        return false;
                                    }

                                    public boolean visit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
                                        return false;
                                    }

                                    private boolean visit(TypeDeclaration typeDeclaration) {
                                        if (this.declaringTypes.length <= ++this.declaringTypesPtr) {
                                            int length = this.declaringTypesPtr;
                                            this.declaringTypes = new TypeDeclaration[length * 2 + 1];
                                            System.arraycopy(this.declaringTypes, 0, this.declaringTypes, 0, length);
                                        }
                                        this.declaringTypes[this.declaringTypesPtr] = typeDeclaration;
                                        return true;
                                    }

                                    public boolean visit(TypeDeclaration typeDeclaration, CompilationUnitScope s) {
                                        return this.visit(typeDeclaration);
                                    }

                                    public boolean visit(TypeDeclaration memberTypeDeclaration, ClassScope s) {
                                        return this.visit(memberTypeDeclaration);
                                    }
                                }
                                parsedUnit.traverse((ASTVisitor)new AllConstructorDeclarationsVisitor(this, packageName, typeName, validatedTypeMatchRule, packageDeclaration, nameRequestor, path), parsedUnit.scope);
                            }
                        }
                        if (progressMonitor != null) {
                            if (progressMonitor.isCanceled()) {
                                throw new OperationCanceledException();
                            }
                            progressMonitor.worked(1);
                        }
                    }
                    ++i;
                }
            }
        }
        finally {
            if (progressMonitor != null) {
                progressMonitor.done();
            }
        }
    }

    public void searchAllSecondaryTypeNames(IPackageFragmentRoot[] sourceFolders, final IRestrictedAccessTypeRequestor nameRequestor, boolean waitForIndexes, IProgressMonitor progressMonitor) throws JavaModelException {
        int copiesLength;
        if (VERBOSE) {
            Util.verbose("BasicSearchEngine.searchAllSecondaryTypeNames(IPackageFragmentRoot[], IRestrictedAccessTypeRequestor, boolean, IProgressMonitor)");
            StringBuffer buffer = new StringBuffer("\t- source folders: ");
            int length = sourceFolders.length;
            int i = 0;
            while (i < length) {
                if (i == 0) {
                    buffer.append('[');
                } else {
                    buffer.append(',');
                }
                buffer.append(sourceFolders[i].getElementName());
                ++i;
            }
            buffer.append("]\n\t- waitForIndexes: ");
            buffer.append(waitForIndexes);
            Util.verbose(buffer.toString());
        }
        IndexManager indexManager = JavaModelManager.getIndexManager();
        SecondaryTypeDeclarationPattern pattern = new SecondaryTypeDeclarationPattern();
        final HashSet<String> workingCopyPaths = new HashSet<String>();
        String workingCopyPath = null;
        org.eclipse.jdt.core.ICompilationUnit[] copies = this.getWorkingCopies();
        int n = copiesLength = copies == null ? 0 : copies.length;
        if (copies != null) {
            if (copiesLength == 1) {
                workingCopyPath = copies[0].getPath().toString();
            } else {
                int i = 0;
                while (i < copiesLength) {
                    org.eclipse.jdt.core.ICompilationUnit workingCopy = copies[i];
                    workingCopyPaths.add(workingCopy.getPath().toString());
                    ++i;
                }
            }
        }
        final String singleWkcpPath = workingCopyPath;
        IndexQueryRequestor searchRequestor = new IndexQueryRequestor(){

            public boolean acceptIndexMatch(String documentPath, SearchPattern indexRecord, SearchParticipant participant, AccessRuleSet access) {
                TypeDeclarationPattern record = (TypeDeclarationPattern)indexRecord;
                if (!record.secondary) {
                    return true;
                }
                if (record.enclosingTypeNames == IIndexConstants.ONE_ZERO_CHAR) {
                    return true;
                }
                switch (copiesLength) {
                    case 0: {
                        break;
                    }
                    case 1: {
                        if (!singleWkcpPath.equals(documentPath)) break;
                        return true;
                    }
                    default: {
                        if (!workingCopyPaths.contains(documentPath)) break;
                        return true;
                    }
                }
                AccessRestriction accessRestriction = null;
                if (access != null) {
                    int pkgLength = record.pkg == null || record.pkg.length == 0 ? 0 : record.pkg.length + 1;
                    int nameLength = record.simpleName == null ? 0 : record.simpleName.length;
                    char[] path = new char[pkgLength + nameLength];
                    int pos = 0;
                    if (pkgLength > 0) {
                        System.arraycopy(record.pkg, 0, path, pos, pkgLength - 1);
                        CharOperation.replace(path, '.', '/');
                        path[pkgLength - 1] = 47;
                        pos += pkgLength;
                    }
                    if (nameLength > 0) {
                        System.arraycopy(record.simpleName, 0, path, pos, nameLength);
                        pos += nameLength;
                    }
                    if (pos > 0) {
                        accessRestriction = access.getViolatedRestriction(path);
                    }
                }
                nameRequestor.acceptType(record.modifiers, record.pkg, record.simpleName, record.enclosingTypeNames, documentPath, accessRestriction);
                return true;
            }
        };
        try {
            try {
                if (progressMonitor != null) {
                    progressMonitor.beginTask(Messages.engine_searching, 100);
                }
                indexManager.performConcurrentJob(new PatternSearchJob(pattern, BasicSearchEngine.getDefaultSearchParticipant(), BasicSearchEngine.createJavaSearchScope(sourceFolders), searchRequestor), waitForIndexes ? 3 : 1, (IProgressMonitor)(progressMonitor == null ? null : new SubProgressMonitor(progressMonitor, 100)));
            }
            catch (OperationCanceledException operationCanceledException) {
                if (progressMonitor != null) {
                    progressMonitor.done();
                }
            }
        }
        finally {
            if (progressMonitor != null) {
                progressMonitor.done();
            }
        }
    }

    public void searchAllTypeNames(char[] packageName, int packageMatchRule, char[] typeName, int typeMatchRule, int searchFor, IJavaSearchScope scope, final IRestrictedAccessTypeRequestor nameRequestor, int waitingPolicy, IProgressMonitor progressMonitor) throws JavaModelException {
        int copiesLength;
        char typeSuffix;
        int validatedTypeMatchRule = SearchPattern.validateMatchRule(typeName == null ? null : new String(typeName), typeMatchRule);
        if (VERBOSE) {
            Util.verbose("BasicSearchEngine.searchAllTypeNames(char[], char[], int, int, IJavaSearchScope, IRestrictedAccessTypeRequestor, int, IProgressMonitor)");
            Util.verbose("\t- package name: " + (packageName == null ? "null" : new String(packageName)));
            Util.verbose("\t- package match rule: " + BasicSearchEngine.getMatchRuleString(packageMatchRule));
            Util.verbose("\t- type name: " + (typeName == null ? "null" : new String(typeName)));
            Util.verbose("\t- type match rule: " + BasicSearchEngine.getMatchRuleString(typeMatchRule));
            if (validatedTypeMatchRule != typeMatchRule) {
                Util.verbose("\t- validated type match rule: " + BasicSearchEngine.getMatchRuleString(validatedTypeMatchRule));
            }
            Util.verbose("\t- search for: " + searchFor);
            Util.verbose("\t- scope: " + scope);
        }
        if (validatedTypeMatchRule == -1) {
            return;
        }
        IndexManager indexManager = JavaModelManager.getIndexManager();
        switch (searchFor) {
            case 5: {
                typeSuffix = 'C';
                break;
            }
            case 10: {
                typeSuffix = '\n';
                break;
            }
            case 9: {
                typeSuffix = '\t';
                break;
            }
            case 6: {
                typeSuffix = 'I';
                break;
            }
            case 11: {
                typeSuffix = '\u000b';
                break;
            }
            case 7: {
                typeSuffix = 'E';
                break;
            }
            case 8: {
                typeSuffix = 'A';
                break;
            }
            default: {
                typeSuffix = '\u0000';
            }
        }
        TypeDeclarationPattern pattern = packageMatchRule == 0 ? new TypeDeclarationPattern(packageName, null, typeName, typeSuffix, validatedTypeMatchRule) : new QualifiedTypeDeclarationPattern(packageName, packageMatchRule, typeName, typeSuffix, validatedTypeMatchRule);
        final HashSet<String> workingCopyPaths = new HashSet<String>();
        String workingCopyPath = null;
        org.eclipse.jdt.core.ICompilationUnit[] copies = this.getWorkingCopies();
        int n = copiesLength = copies == null ? 0 : copies.length;
        if (copies != null) {
            if (copiesLength == 1) {
                workingCopyPath = copies[0].getPath().toString();
            } else {
                int i = 0;
                while (i < copiesLength) {
                    org.eclipse.jdt.core.ICompilationUnit workingCopy = copies[i];
                    workingCopyPaths.add(workingCopy.getPath().toString());
                    ++i;
                }
            }
        }
        final String singleWkcpPath = workingCopyPath;
        IndexQueryRequestor searchRequestor = new IndexQueryRequestor(){

            public boolean acceptIndexMatch(String documentPath, SearchPattern indexRecord, SearchParticipant participant, AccessRuleSet access) {
                TypeDeclarationPattern record = (TypeDeclarationPattern)indexRecord;
                if (record.enclosingTypeNames == IIndexConstants.ONE_ZERO_CHAR) {
                    return true;
                }
                switch (copiesLength) {
                    case 0: {
                        break;
                    }
                    case 1: {
                        if (!singleWkcpPath.equals(documentPath)) break;
                        return true;
                    }
                    default: {
                        if (!workingCopyPaths.contains(documentPath)) break;
                        return true;
                    }
                }
                AccessRestriction accessRestriction = null;
                if (access != null) {
                    int pkgLength = record.pkg == null || record.pkg.length == 0 ? 0 : record.pkg.length + 1;
                    int nameLength = record.simpleName == null ? 0 : record.simpleName.length;
                    char[] path = new char[pkgLength + nameLength];
                    int pos = 0;
                    if (pkgLength > 0) {
                        System.arraycopy(record.pkg, 0, path, pos, pkgLength - 1);
                        CharOperation.replace(path, '.', '/');
                        path[pkgLength - 1] = 47;
                        pos += pkgLength;
                    }
                    if (nameLength > 0) {
                        System.arraycopy(record.simpleName, 0, path, pos, nameLength);
                        pos += nameLength;
                    }
                    if (pos > 0) {
                        accessRestriction = access.getViolatedRestriction(path);
                    }
                }
                if (BasicSearchEngine.this.match(record.typeSuffix, record.modifiers)) {
                    nameRequestor.acceptType(record.modifiers, record.pkg, record.simpleName, record.enclosingTypeNames, documentPath, accessRestriction);
                }
                return true;
            }
        };
        try {
            if (progressMonitor != null) {
                progressMonitor.beginTask(Messages.engine_searching, 1000);
            }
            indexManager.performConcurrentJob(new PatternSearchJob(pattern, BasicSearchEngine.getDefaultSearchParticipant(), scope, searchRequestor), waitingPolicy, (IProgressMonitor)(progressMonitor == null ? null : new SubProgressMonitor(progressMonitor, 1000 - copiesLength)));
            if (copies != null) {
                int i = 0;
                while (i < copiesLength) {
                    org.eclipse.jdt.core.ICompilationUnit workingCopy = copies[i];
                    if (!(scope instanceof HierarchyScope ? !((HierarchyScope)scope).encloses(workingCopy, progressMonitor) : !scope.encloses(workingCopy))) {
                        String path = workingCopy.getPath().toString();
                        if (workingCopy.isConsistent()) {
                            IPackageDeclaration[] packageDeclarations = workingCopy.getPackageDeclarations();
                            char[] packageDeclaration = packageDeclarations.length == 0 ? CharOperation.NO_CHAR : packageDeclarations[0].getElementName().toCharArray();
                            IType[] allTypes = workingCopy.getAllTypes();
                            int j = 0;
                            int allTypesLength = allTypes.length;
                            while (j < allTypesLength) {
                                char[][] enclosingTypeNames;
                                IType type = allTypes[j];
                                IJavaElement parent = type.getParent();
                                if (parent instanceof IType) {
                                    char[] parentQualifiedName = ((IType)parent).getTypeQualifiedName('.').toCharArray();
                                    enclosingTypeNames = CharOperation.splitOn('.', parentQualifiedName);
                                } else {
                                    enclosingTypeNames = CharOperation.NO_CHAR_CHAR;
                                }
                                char[] simpleName = type.getElementName().toCharArray();
                                int kind = type.isEnum() ? 3 : (type.isAnnotation() ? 4 : (type.isClass() ? 1 : 2));
                                if (this.match(typeSuffix, packageName, packageMatchRule, typeName, validatedTypeMatchRule, kind, packageDeclaration, simpleName)) {
                                    if (nameRequestor instanceof TypeNameMatchRequestorWrapper) {
                                        ((TypeNameMatchRequestorWrapper)nameRequestor).requestor.acceptTypeNameMatch(new JavaSearchTypeNameMatch(type, type.getFlags()));
                                    } else {
                                        nameRequestor.acceptType(type.getFlags(), packageDeclaration, simpleName, enclosingTypeNames, path, null);
                                    }
                                }
                                ++j;
                            }
                        } else {
                            CompilationResult compilationUnitResult;
                            ICompilationUnit unit;
                            Parser basicParser = this.getParser();
                            CompilationUnitDeclaration parsedUnit = basicParser.dietParse(unit = (ICompilationUnit)((Object)workingCopy), compilationUnitResult = new CompilationResult(unit, 0, 0, this.compilerOptions.maxProblemsPerUnit));
                            if (parsedUnit != null) {
                                char[] packageDeclaration = parsedUnit.currentPackage == null ? CharOperation.NO_CHAR : CharOperation.concatWith(parsedUnit.currentPackage.getImportName(), '.');
                                class AllTypeDeclarationsVisitor
                                extends ASTVisitor {
                                    final /* synthetic */ BasicSearchEngine this$0;
                                    private final /* synthetic */ char val$typeSuffix;
                                    private final /* synthetic */ char[] val$packageName;
                                    private final /* synthetic */ int val$packageMatchRule;
                                    private final /* synthetic */ char[] val$typeName;
                                    private final /* synthetic */ int val$validatedTypeMatchRule;
                                    private final /* synthetic */ char[] val$packageDeclaration;
                                    private final /* synthetic */ IRestrictedAccessTypeRequestor val$nameRequestor;
                                    private final /* synthetic */ org.eclipse.jdt.core.ICompilationUnit val$workingCopy;
                                    private final /* synthetic */ String val$path;

                                    AllTypeDeclarationsVisitor(BasicSearchEngine basicSearchEngine, char c, char[] cArray, int n, char[] cArray2, int n2, char[] cArray3, IRestrictedAccessTypeRequestor iRestrictedAccessTypeRequestor, org.eclipse.jdt.core.ICompilationUnit iCompilationUnit, String string) {
                                        this.this$0 = basicSearchEngine;
                                        this.val$typeSuffix = c;
                                        this.val$packageName = cArray;
                                        this.val$packageMatchRule = n;
                                        this.val$typeName = cArray2;
                                        this.val$validatedTypeMatchRule = n2;
                                        this.val$packageDeclaration = cArray3;
                                        this.val$nameRequestor = iRestrictedAccessTypeRequestor;
                                        this.val$workingCopy = iCompilationUnit;
                                        this.val$path = string;
                                    }

                                    public boolean visit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
                                        return false;
                                    }

                                    public boolean visit(TypeDeclaration typeDeclaration, CompilationUnitScope compilationUnitScope) {
                                        if (this.this$0.match(this.val$typeSuffix, this.val$packageName, this.val$packageMatchRule, this.val$typeName, this.val$validatedTypeMatchRule, TypeDeclaration.kind(typeDeclaration.modifiers), this.val$packageDeclaration, typeDeclaration.name)) {
                                            if (this.val$nameRequestor instanceof TypeNameMatchRequestorWrapper) {
                                                IType type = this.val$workingCopy.getType(new String(this.val$typeName));
                                                ((TypeNameMatchRequestorWrapper)this.val$nameRequestor).requestor.acceptTypeNameMatch(new JavaSearchTypeNameMatch(type, typeDeclaration.modifiers));
                                            } else {
                                                this.val$nameRequestor.acceptType(typeDeclaration.modifiers, this.val$packageDeclaration, typeDeclaration.name, CharOperation.NO_CHAR_CHAR, this.val$path, null);
                                            }
                                        }
                                        return true;
                                    }

                                    public boolean visit(TypeDeclaration memberTypeDeclaration, ClassScope classScope) {
                                        if (this.this$0.match(this.val$typeSuffix, this.val$packageName, this.val$packageMatchRule, this.val$typeName, this.val$validatedTypeMatchRule, TypeDeclaration.kind(memberTypeDeclaration.modifiers), this.val$packageDeclaration, memberTypeDeclaration.name)) {
                                            TypeDeclaration enclosing = memberTypeDeclaration.enclosingType;
                                            char[][] enclosingTypeNames = CharOperation.NO_CHAR_CHAR;
                                            while (enclosing != null) {
                                                enclosingTypeNames = CharOperation.arrayConcat((char[][])new char[][]{enclosing.name}, enclosingTypeNames);
                                                enclosing = (enclosing.bits & 0x400) != 0 ? enclosing.enclosingType : null;
                                            }
                                            if (this.val$nameRequestor instanceof TypeNameMatchRequestorWrapper) {
                                                IType type = this.val$workingCopy.getType(new String(enclosingTypeNames[0]));
                                                int j = 1;
                                                int l = enclosingTypeNames.length;
                                                while (j < l) {
                                                    type = type.getType(new String(enclosingTypeNames[j]));
                                                    ++j;
                                                }
                                                ((TypeNameMatchRequestorWrapper)this.val$nameRequestor).requestor.acceptTypeNameMatch(new JavaSearchTypeNameMatch(type, 0));
                                            } else {
                                                this.val$nameRequestor.acceptType(memberTypeDeclaration.modifiers, this.val$packageDeclaration, memberTypeDeclaration.name, enclosingTypeNames, this.val$path, null);
                                            }
                                        }
                                        return true;
                                    }
                                }
                                parsedUnit.traverse((ASTVisitor)new AllTypeDeclarationsVisitor(this, typeSuffix, packageName, packageMatchRule, typeName, validatedTypeMatchRule, packageDeclaration, nameRequestor, workingCopy, path), parsedUnit.scope);
                            }
                        }
                        if (progressMonitor != null) {
                            if (progressMonitor.isCanceled()) {
                                throw new OperationCanceledException();
                            }
                            progressMonitor.worked(1);
                        }
                    }
                    ++i;
                }
            }
        }
        finally {
            if (progressMonitor != null) {
                progressMonitor.done();
            }
        }
    }

    public void searchAllTypeNames(char[][] qualifications, char[][] typeNames, int matchRule, int searchFor, IJavaSearchScope scope, final IRestrictedAccessTypeRequestor nameRequestor, int waitingPolicy, IProgressMonitor progressMonitor) throws JavaModelException {
        int copiesLength;
        char typeSuffix;
        if (VERBOSE) {
            Util.verbose("BasicSearchEngine.searchAllTypeNames(char[][], char[][], int, int, IJavaSearchScope, IRestrictedAccessTypeRequestor, int, IProgressMonitor)");
            Util.verbose("\t- package name: " + (qualifications == null ? "null" : new String(CharOperation.concatWith(qualifications, ','))));
            Util.verbose("\t- type name: " + (typeNames == null ? "null" : new String(CharOperation.concatWith(typeNames, ','))));
            Util.verbose("\t- match rule: " + BasicSearchEngine.getMatchRuleString(matchRule));
            Util.verbose("\t- search for: " + searchFor);
            Util.verbose("\t- scope: " + scope);
        }
        IndexManager indexManager = JavaModelManager.getIndexManager();
        switch (searchFor) {
            case 5: {
                typeSuffix = 'C';
                break;
            }
            case 10: {
                typeSuffix = '\n';
                break;
            }
            case 9: {
                typeSuffix = '\t';
                break;
            }
            case 6: {
                typeSuffix = 'I';
                break;
            }
            case 11: {
                typeSuffix = '\u000b';
                break;
            }
            case 7: {
                typeSuffix = 'E';
                break;
            }
            case 8: {
                typeSuffix = 'A';
                break;
            }
            default: {
                typeSuffix = '\u0000';
            }
        }
        MultiTypeDeclarationPattern pattern = new MultiTypeDeclarationPattern(qualifications, typeNames, typeSuffix, matchRule);
        final HashSet<String> workingCopyPaths = new HashSet<String>();
        String workingCopyPath = null;
        org.eclipse.jdt.core.ICompilationUnit[] copies = this.getWorkingCopies();
        int n = copiesLength = copies == null ? 0 : copies.length;
        if (copies != null) {
            if (copiesLength == 1) {
                workingCopyPath = copies[0].getPath().toString();
            } else {
                int i = 0;
                while (i < copiesLength) {
                    org.eclipse.jdt.core.ICompilationUnit workingCopy = copies[i];
                    workingCopyPaths.add(workingCopy.getPath().toString());
                    ++i;
                }
            }
        }
        final String singleWkcpPath = workingCopyPath;
        IndexQueryRequestor searchRequestor = new IndexQueryRequestor(){

            public boolean acceptIndexMatch(String documentPath, SearchPattern indexRecord, SearchParticipant participant, AccessRuleSet access) {
                QualifiedTypeDeclarationPattern record = (QualifiedTypeDeclarationPattern)indexRecord;
                if (record.enclosingTypeNames == IIndexConstants.ONE_ZERO_CHAR) {
                    return true;
                }
                switch (copiesLength) {
                    case 0: {
                        break;
                    }
                    case 1: {
                        if (!singleWkcpPath.equals(documentPath)) break;
                        return true;
                    }
                    default: {
                        if (!workingCopyPaths.contains(documentPath)) break;
                        return true;
                    }
                }
                AccessRestriction accessRestriction = null;
                if (access != null) {
                    int qualificationLength = record.qualification == null || record.qualification.length == 0 ? 0 : record.qualification.length + 1;
                    int nameLength = record.simpleName == null ? 0 : record.simpleName.length;
                    char[] path = new char[qualificationLength + nameLength];
                    int pos = 0;
                    if (qualificationLength > 0) {
                        System.arraycopy(record.qualification, 0, path, pos, qualificationLength - 1);
                        CharOperation.replace(path, '.', '/');
                        path[qualificationLength - 1] = 47;
                        pos += qualificationLength;
                    }
                    if (nameLength > 0) {
                        System.arraycopy(record.simpleName, 0, path, pos, nameLength);
                        pos += nameLength;
                    }
                    if (pos > 0) {
                        accessRestriction = access.getViolatedRestriction(path);
                    }
                }
                nameRequestor.acceptType(record.modifiers, record.pkg, record.simpleName, record.enclosingTypeNames, documentPath, accessRestriction);
                return true;
            }
        };
        try {
            if (progressMonitor != null) {
                progressMonitor.beginTask(Messages.engine_searching, 100);
            }
            indexManager.performConcurrentJob(new PatternSearchJob(pattern, BasicSearchEngine.getDefaultSearchParticipant(), scope, searchRequestor), waitingPolicy, (IProgressMonitor)(progressMonitor == null ? null : new SubProgressMonitor(progressMonitor, 100)));
            if (copies != null) {
                int i = 0;
                int length = copies.length;
                while (i < length) {
                    org.eclipse.jdt.core.ICompilationUnit workingCopy = copies[i];
                    String path = workingCopy.getPath().toString();
                    if (workingCopy.isConsistent()) {
                        IPackageDeclaration[] packageDeclarations = workingCopy.getPackageDeclarations();
                        char[] packageDeclaration = packageDeclarations.length == 0 ? CharOperation.NO_CHAR : packageDeclarations[0].getElementName().toCharArray();
                        IType[] allTypes = workingCopy.getAllTypes();
                        int j = 0;
                        int allTypesLength = allTypes.length;
                        while (j < allTypesLength) {
                            char[][] enclosingTypeNames;
                            IType type = allTypes[j];
                            IJavaElement parent = type.getParent();
                            char[] qualification = packageDeclaration;
                            if (parent instanceof IType) {
                                char[] parentQualifiedName = ((IType)parent).getTypeQualifiedName('.').toCharArray();
                                enclosingTypeNames = CharOperation.splitOn('.', parentQualifiedName);
                                qualification = CharOperation.concat(qualification, parentQualifiedName);
                            } else {
                                enclosingTypeNames = CharOperation.NO_CHAR_CHAR;
                            }
                            char[] simpleName = type.getElementName().toCharArray();
                            int suffix = 0;
                            if (type.isClass()) {
                                suffix = 67;
                            } else if (type.isInterface()) {
                                suffix = 73;
                            } else if (type.isEnum()) {
                                suffix = 69;
                            } else if (type.isAnnotation()) {
                                suffix = 65;
                            }
                            if (pattern.matchesDecodedKey(new QualifiedTypeDeclarationPattern(qualification, simpleName, (char)suffix, matchRule))) {
                                nameRequestor.acceptType(type.getFlags(), packageDeclaration, simpleName, enclosingTypeNames, path, null);
                            }
                            ++j;
                        }
                    } else {
                        CompilationResult compilationUnitResult;
                        ICompilationUnit unit;
                        Parser basicParser = this.getParser();
                        CompilationUnitDeclaration parsedUnit = basicParser.dietParse(unit = (ICompilationUnit)((Object)workingCopy), compilationUnitResult = new CompilationResult(unit, 0, 0, this.compilerOptions.maxProblemsPerUnit));
                        if (parsedUnit != null) {
                            char[] packageDeclaration = parsedUnit.currentPackage == null ? CharOperation.NO_CHAR : CharOperation.concatWith(parsedUnit.currentPackage.getImportName(), '.');
                            class AllTypeDeclarationsVisitor
                            extends ASTVisitor {
                                final /* synthetic */ BasicSearchEngine this$0;
                                private final /* synthetic */ char[] val$packageDeclaration;
                                private final /* synthetic */ int val$matchRule;
                                private final /* synthetic */ MultiTypeDeclarationPattern val$pattern;
                                private final /* synthetic */ IRestrictedAccessTypeRequestor val$nameRequestor;
                                private final /* synthetic */ String val$path;

                                AllTypeDeclarationsVisitor(BasicSearchEngine basicSearchEngine, char[] cArray, int n, MultiTypeDeclarationPattern multiTypeDeclarationPattern, IRestrictedAccessTypeRequestor iRestrictedAccessTypeRequestor, String string) {
                                    this.this$0 = basicSearchEngine;
                                    this.val$packageDeclaration = cArray;
                                    this.val$matchRule = n;
                                    this.val$pattern = multiTypeDeclarationPattern;
                                    this.val$nameRequestor = iRestrictedAccessTypeRequestor;
                                    this.val$path = string;
                                }

                                public boolean visit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
                                    return false;
                                }

                                public boolean visit(TypeDeclaration typeDeclaration, CompilationUnitScope compilationUnitScope) {
                                    QualifiedTypeDeclarationPattern decodedPattern = new QualifiedTypeDeclarationPattern(this.val$packageDeclaration, typeDeclaration.name, this.this$0.convertTypeKind(TypeDeclaration.kind(typeDeclaration.modifiers)), this.val$matchRule);
                                    if (this.val$pattern.matchesDecodedKey(decodedPattern)) {
                                        this.val$nameRequestor.acceptType(typeDeclaration.modifiers, this.val$packageDeclaration, typeDeclaration.name, CharOperation.NO_CHAR_CHAR, this.val$path, null);
                                    }
                                    return true;
                                }

                                public boolean visit(TypeDeclaration memberTypeDeclaration, ClassScope classScope) {
                                    char[] qualification = this.val$packageDeclaration;
                                    TypeDeclaration enclosing = memberTypeDeclaration.enclosingType;
                                    char[][] enclosingTypeNames = CharOperation.NO_CHAR_CHAR;
                                    while (enclosing != null) {
                                        qualification = CharOperation.concat(qualification, enclosing.name, '.');
                                        enclosingTypeNames = CharOperation.arrayConcat((char[][])new char[][]{enclosing.name}, enclosingTypeNames);
                                        enclosing = (enclosing.bits & 0x400) != 0 ? enclosing.enclosingType : null;
                                    }
                                    QualifiedTypeDeclarationPattern decodedPattern = new QualifiedTypeDeclarationPattern(qualification, memberTypeDeclaration.name, this.this$0.convertTypeKind(TypeDeclaration.kind(memberTypeDeclaration.modifiers)), this.val$matchRule);
                                    if (this.val$pattern.matchesDecodedKey(decodedPattern)) {
                                        this.val$nameRequestor.acceptType(memberTypeDeclaration.modifiers, this.val$packageDeclaration, memberTypeDeclaration.name, enclosingTypeNames, this.val$path, null);
                                    }
                                    return true;
                                }
                            }
                            parsedUnit.traverse((ASTVisitor)new AllTypeDeclarationsVisitor(this, packageDeclaration, matchRule, pattern, nameRequestor, path), parsedUnit.scope);
                        }
                    }
                    ++i;
                }
            }
        }
        finally {
            if (progressMonitor != null) {
                progressMonitor.done();
            }
        }
    }

    public void searchDeclarations(IJavaElement enclosingElement, SearchRequestor requestor, SearchPattern pattern, IProgressMonitor monitor) throws JavaModelException {
        block13: {
            if (VERBOSE) {
                Util.verbose("\t- java element: " + enclosingElement);
            }
            IJavaSearchScope scope = BasicSearchEngine.createJavaSearchScope(new IJavaElement[]{enclosingElement});
            IResource resource = ((JavaElement)enclosingElement).resource();
            if (enclosingElement instanceof IMember) {
                IMember member = (IMember)enclosingElement;
                org.eclipse.jdt.core.ICompilationUnit cu = member.getCompilationUnit();
                if (cu != null) {
                    resource = cu.getResource();
                } else if (member.isBinary()) {
                    resource = null;
                }
            }
            try {
                if (resource instanceof IFile) {
                    try {
                        requestor.beginReporting();
                        if (VERBOSE) {
                            Util.verbose("Searching for " + pattern + " in " + resource.getFullPath());
                        }
                        SearchParticipant participant = BasicSearchEngine.getDefaultSearchParticipant();
                        SearchDocument[] documents = MatchLocator.addWorkingCopies(pattern, new SearchDocument[]{new JavaSearchDocument(enclosingElement.getPath().toString(), participant)}, this.getWorkingCopies(enclosingElement), participant);
                        participant.locateMatches(documents, pattern, scope, requestor, monitor);
                        break block13;
                    }
                    finally {
                        requestor.endReporting();
                    }
                }
                this.search(pattern, new SearchParticipant[]{BasicSearchEngine.getDefaultSearchParticipant()}, scope, requestor, monitor);
            }
            catch (CoreException e) {
                if (e instanceof JavaModelException) {
                    throw (JavaModelException)e;
                }
                throw new JavaModelException(e);
            }
        }
    }

    public void searchDeclarationsOfAccessedFields(IJavaElement enclosingElement, SearchRequestor requestor, IProgressMonitor monitor) throws JavaModelException {
        if (VERBOSE) {
            Util.verbose("BasicSearchEngine.searchDeclarationsOfAccessedFields(IJavaElement, SearchRequestor, SearchPattern, IProgressMonitor)");
        }
        switch (enclosingElement.getElementType()) {
            case 5: 
            case 7: 
            case 8: 
            case 9: {
                break;
            }
            default: {
                throw new IllegalArgumentException();
            }
        }
        DeclarationOfAccessedFieldsPattern pattern = new DeclarationOfAccessedFieldsPattern(enclosingElement);
        this.searchDeclarations(enclosingElement, requestor, pattern, monitor);
    }

    public void searchDeclarationsOfReferencedTypes(IJavaElement enclosingElement, SearchRequestor requestor, IProgressMonitor monitor) throws JavaModelException {
        if (VERBOSE) {
            Util.verbose("BasicSearchEngine.searchDeclarationsOfReferencedTypes(IJavaElement, SearchRequestor, SearchPattern, IProgressMonitor)");
        }
        switch (enclosingElement.getElementType()) {
            case 5: 
            case 7: 
            case 8: 
            case 9: {
                break;
            }
            default: {
                throw new IllegalArgumentException();
            }
        }
        DeclarationOfReferencedTypesPattern pattern = new DeclarationOfReferencedTypesPattern(enclosingElement);
        this.searchDeclarations(enclosingElement, requestor, pattern, monitor);
    }

    public void searchDeclarationsOfSentMessages(IJavaElement enclosingElement, SearchRequestor requestor, IProgressMonitor monitor) throws JavaModelException {
        if (VERBOSE) {
            Util.verbose("BasicSearchEngine.searchDeclarationsOfSentMessages(IJavaElement, SearchRequestor, SearchPattern, IProgressMonitor)");
        }
        switch (enclosingElement.getElementType()) {
            case 5: 
            case 7: 
            case 8: 
            case 9: {
                break;
            }
            default: {
                throw new IllegalArgumentException();
            }
        }
        DeclarationOfReferencedMethodsPattern pattern = new DeclarationOfReferencedMethodsPattern(enclosingElement);
        this.searchDeclarations(enclosingElement, requestor, pattern, monitor);
    }
}

