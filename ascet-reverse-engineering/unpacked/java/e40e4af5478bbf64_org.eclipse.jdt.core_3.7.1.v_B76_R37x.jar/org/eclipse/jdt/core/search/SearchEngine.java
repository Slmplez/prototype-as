/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.core.search;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.IWorkingCopy;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.search.IJavaSearchResultCollector;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.ISearchPattern;
import org.eclipse.jdt.core.search.ITypeNameRequestor;
import org.eclipse.jdt.core.search.SearchMatch;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.core.search.SearchRequestor;
import org.eclipse.jdt.core.search.TypeNameMatch;
import org.eclipse.jdt.core.search.TypeNameMatchRequestor;
import org.eclipse.jdt.core.search.TypeNameRequestor;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.core.search.BasicSearchEngine;
import org.eclipse.jdt.internal.core.search.IRestrictedAccessTypeRequestor;
import org.eclipse.jdt.internal.core.search.TypeNameMatchRequestorWrapper;
import org.eclipse.jdt.internal.core.search.TypeNameRequestorWrapper;
import org.eclipse.jdt.internal.core.search.matching.DeclarationOfAccessedFieldsPattern;
import org.eclipse.jdt.internal.core.search.matching.DeclarationOfReferencedMethodsPattern;
import org.eclipse.jdt.internal.core.search.matching.DeclarationOfReferencedTypesPattern;

public class SearchEngine {
    private BasicSearchEngine basicEngine;

    public SearchEngine() {
        this.basicEngine = new BasicSearchEngine();
    }

    public SearchEngine(ICompilationUnit[] workingCopies) {
        this.basicEngine = new BasicSearchEngine(workingCopies);
    }

    public SearchEngine(IWorkingCopy[] workingCopies) {
        int length = workingCopies.length;
        ICompilationUnit[] units = new ICompilationUnit[length];
        System.arraycopy(workingCopies, 0, units, 0, length);
        this.basicEngine = new BasicSearchEngine(units);
    }

    public SearchEngine(WorkingCopyOwner workingCopyOwner) {
        this.basicEngine = new BasicSearchEngine(workingCopyOwner);
    }

    public static IJavaSearchScope createHierarchyScope(IType type) throws JavaModelException {
        return BasicSearchEngine.createHierarchyScope(type);
    }

    public static IJavaSearchScope createHierarchyScope(IType type, WorkingCopyOwner owner) throws JavaModelException {
        return BasicSearchEngine.createHierarchyScope(type, owner);
    }

    public static IJavaSearchScope createStrictHierarchyScope(IJavaProject project, IType type, boolean onlySubtypes, boolean includeFocusType, WorkingCopyOwner owner) throws JavaModelException {
        return BasicSearchEngine.createStrictHierarchyScope(project, type, onlySubtypes, includeFocusType, owner);
    }

    public static IJavaSearchScope createJavaSearchScope(IResource[] resources) {
        int length = resources.length;
        IJavaElement[] elements = new IJavaElement[length];
        int i = 0;
        while (i < length) {
            elements[i] = JavaCore.create(resources[i]);
            ++i;
        }
        return SearchEngine.createJavaSearchScope(elements);
    }

    public static IJavaSearchScope createJavaSearchScope(IJavaElement[] elements) {
        return BasicSearchEngine.createJavaSearchScope(elements);
    }

    public static IJavaSearchScope createJavaSearchScope(IJavaElement[] elements, boolean includeReferencedProjects) {
        return BasicSearchEngine.createJavaSearchScope(elements, includeReferencedProjects);
    }

    public static IJavaSearchScope createJavaSearchScope(IJavaElement[] elements, int includeMask) {
        return BasicSearchEngine.createJavaSearchScope(elements, includeMask);
    }

    public static ISearchPattern createOrSearchPattern(ISearchPattern leftPattern, ISearchPattern rightPattern) {
        SearchPattern left = ((SearchPatternAdapter)leftPattern).pattern;
        SearchPattern right = ((SearchPatternAdapter)rightPattern).pattern;
        SearchPattern pattern = SearchPattern.createOrPattern(left, right);
        return new SearchPatternAdapter(pattern);
    }

    public static ISearchPattern createSearchPattern(String stringPattern, int searchFor, int limitTo, boolean isCaseSensitive) {
        int matchMode = stringPattern.indexOf(42) != -1 || stringPattern.indexOf(63) != -1 ? 2 : 0;
        int matchRule = isCaseSensitive ? matchMode | 8 : matchMode;
        return new SearchPatternAdapter(SearchPattern.createPattern(stringPattern, searchFor, limitTo, matchRule));
    }

    public static ISearchPattern createSearchPattern(IJavaElement element, int limitTo) {
        return new SearchPatternAdapter(SearchPattern.createPattern(element, limitTo));
    }

    public static TypeNameMatch createTypeNameMatch(IType type, int modifiers) {
        return BasicSearchEngine.createTypeNameMatch(type, modifiers);
    }

    public static IJavaSearchScope createWorkspaceScope() {
        return BasicSearchEngine.createWorkspaceScope();
    }

    public static SearchParticipant getDefaultSearchParticipant() {
        return BasicSearchEngine.getDefaultSearchParticipant();
    }

    public void search(IWorkspace workspace, String patternString, int searchFor, int limitTo, IJavaSearchScope scope, IJavaSearchResultCollector resultCollector) throws JavaModelException {
        try {
            int matchMode = patternString.indexOf(42) != -1 || patternString.indexOf(63) != -1 ? 2 : 0;
            this.search(SearchPattern.createPattern(patternString, searchFor, limitTo, matchMode | 8), new SearchParticipant[]{SearchEngine.getDefaultSearchParticipant()}, scope, new ResultCollectorAdapter(resultCollector), resultCollector.getProgressMonitor());
        }
        catch (CoreException e) {
            if (e instanceof JavaModelException) {
                throw (JavaModelException)e;
            }
            throw new JavaModelException(e);
        }
    }

    public void search(IWorkspace workspace, IJavaElement element, int limitTo, IJavaSearchScope scope, IJavaSearchResultCollector resultCollector) throws JavaModelException {
        this.search(workspace, SearchEngine.createSearchPattern(element, limitTo), scope, resultCollector);
    }

    public void search(IWorkspace workspace, ISearchPattern searchPattern, IJavaSearchScope scope, IJavaSearchResultCollector resultCollector) throws JavaModelException {
        try {
            this.search(((SearchPatternAdapter)searchPattern).pattern, new SearchParticipant[]{SearchEngine.getDefaultSearchParticipant()}, scope, new ResultCollectorAdapter(resultCollector), resultCollector.getProgressMonitor());
        }
        catch (CoreException e) {
            if (e instanceof JavaModelException) {
                throw (JavaModelException)e;
            }
            throw new JavaModelException(e);
        }
    }

    public void search(SearchPattern pattern, SearchParticipant[] participants, IJavaSearchScope scope, SearchRequestor requestor, IProgressMonitor monitor) throws CoreException {
        this.basicEngine.search(pattern, participants, scope, requestor, monitor);
    }

    public void searchAllTypeNames(char[] packageExactName, char[] typeName, int matchRule, int searchFor, IJavaSearchScope scope, TypeNameRequestor nameRequestor, int waitingPolicy, IProgressMonitor progressMonitor) throws JavaModelException {
        this.searchAllTypeNames(packageExactName, 0, typeName, matchRule, searchFor, scope, nameRequestor, waitingPolicy, progressMonitor);
    }

    public void searchAllTypeNames(char[] packageName, int packageMatchRule, char[] typeName, int typeMatchRule, int searchFor, IJavaSearchScope scope, TypeNameRequestor nameRequestor, int waitingPolicy, IProgressMonitor progressMonitor) throws JavaModelException {
        TypeNameRequestorWrapper requestorWrapper = new TypeNameRequestorWrapper(nameRequestor);
        this.basicEngine.searchAllTypeNames(packageName, packageMatchRule, typeName, typeMatchRule, searchFor, scope, requestorWrapper, waitingPolicy, progressMonitor);
    }

    public void searchAllTypeNames(char[] packageName, int packageMatchRule, char[] typeName, int typeMatchRule, int searchFor, IJavaSearchScope scope, TypeNameMatchRequestor nameMatchRequestor, int waitingPolicy, IProgressMonitor progressMonitor) throws JavaModelException {
        TypeNameMatchRequestorWrapper requestorWrapper = new TypeNameMatchRequestorWrapper(nameMatchRequestor, scope);
        this.basicEngine.searchAllTypeNames(packageName, packageMatchRule, typeName, typeMatchRule, searchFor, scope, requestorWrapper, waitingPolicy, progressMonitor);
    }

    public void searchAllTypeNames(char[][] qualifications, char[][] typeNames, IJavaSearchScope scope, TypeNameRequestor nameRequestor, int waitingPolicy, IProgressMonitor progressMonitor) throws JavaModelException {
        TypeNameRequestorWrapper requestorWrapper = new TypeNameRequestorWrapper(nameRequestor);
        this.basicEngine.searchAllTypeNames(qualifications, typeNames, 8, 0, scope, requestorWrapper, waitingPolicy, progressMonitor);
    }

    public void searchAllTypeNames(char[][] qualifications, char[][] typeNames, IJavaSearchScope scope, TypeNameMatchRequestor nameMatchRequestor, int waitingPolicy, IProgressMonitor progressMonitor) throws JavaModelException {
        TypeNameMatchRequestorWrapper requestorWrapper = new TypeNameMatchRequestorWrapper(nameMatchRequestor, scope);
        this.basicEngine.searchAllTypeNames(qualifications, typeNames, 8, 0, scope, requestorWrapper, waitingPolicy, progressMonitor);
    }

    public void searchAllTypeNames(char[] packageName, char[] typeName, int matchRule, int searchFor, IJavaSearchScope scope, ITypeNameRequestor nameRequestor, int waitingPolicy, IProgressMonitor progressMonitor) throws JavaModelException {
        TypeNameRequestorAdapter requestorAdapter = new TypeNameRequestorAdapter(nameRequestor);
        this.basicEngine.searchAllTypeNames(packageName, 0, typeName, matchRule, searchFor, scope, requestorAdapter, waitingPolicy, progressMonitor);
    }

    public void searchAllTypeNames(IWorkspace workspace, char[] packageName, char[] typeName, int matchMode, boolean isCaseSensitive, int searchFor, IJavaSearchScope scope, ITypeNameRequestor nameRequestor, int waitingPolicy, IProgressMonitor progressMonitor) throws JavaModelException {
        this.searchAllTypeNames(packageName, typeName, isCaseSensitive ? matchMode | 8 : matchMode, searchFor, scope, nameRequestor, waitingPolicy, progressMonitor);
    }

    public void searchDeclarationsOfAccessedFields(IJavaElement enclosingElement, SearchRequestor requestor, IProgressMonitor monitor) throws JavaModelException {
        this.basicEngine.searchDeclarationsOfAccessedFields(enclosingElement, requestor, monitor);
    }

    public void searchDeclarationsOfAccessedFields(IWorkspace workspace, IJavaElement enclosingElement, IJavaSearchResultCollector resultCollector) throws JavaModelException {
        DeclarationOfAccessedFieldsPattern pattern = new DeclarationOfAccessedFieldsPattern(enclosingElement);
        this.basicEngine.searchDeclarations(enclosingElement, new ResultCollectorAdapter(resultCollector), pattern, resultCollector.getProgressMonitor());
    }

    public void searchDeclarationsOfReferencedTypes(IJavaElement enclosingElement, SearchRequestor requestor, IProgressMonitor monitor) throws JavaModelException {
        this.basicEngine.searchDeclarationsOfReferencedTypes(enclosingElement, requestor, monitor);
    }

    public void searchDeclarationsOfReferencedTypes(IWorkspace workspace, IJavaElement enclosingElement, IJavaSearchResultCollector resultCollector) throws JavaModelException {
        DeclarationOfReferencedTypesPattern pattern = new DeclarationOfReferencedTypesPattern(enclosingElement);
        this.basicEngine.searchDeclarations(enclosingElement, new ResultCollectorAdapter(resultCollector), pattern, resultCollector.getProgressMonitor());
    }

    public void searchDeclarationsOfSentMessages(IJavaElement enclosingElement, SearchRequestor requestor, IProgressMonitor monitor) throws JavaModelException {
        this.basicEngine.searchDeclarationsOfSentMessages(enclosingElement, requestor, monitor);
    }

    public void searchDeclarationsOfSentMessages(IWorkspace workspace, IJavaElement enclosingElement, IJavaSearchResultCollector resultCollector) throws JavaModelException {
        DeclarationOfReferencedMethodsPattern pattern = new DeclarationOfReferencedMethodsPattern(enclosingElement);
        this.basicEngine.searchDeclarations(enclosingElement, new ResultCollectorAdapter(resultCollector), pattern, resultCollector.getProgressMonitor());
    }

    static class ResultCollectorAdapter
    extends SearchRequestor {
        IJavaSearchResultCollector resultCollector;

        ResultCollectorAdapter(IJavaSearchResultCollector resultCollector) {
            this.resultCollector = resultCollector;
        }

        public void acceptSearchMatch(SearchMatch match) throws CoreException {
            this.resultCollector.accept(match.getResource(), match.getOffset(), match.getOffset() + match.getLength(), (IJavaElement)match.getElement(), match.getAccuracy());
        }

        public void beginReporting() {
            this.resultCollector.aboutToStart();
        }

        public void endReporting() {
            this.resultCollector.done();
        }
    }

    static class SearchPatternAdapter
    implements ISearchPattern {
        SearchPattern pattern;

        SearchPatternAdapter(SearchPattern pattern) {
            this.pattern = pattern;
        }
    }

    static class TypeNameRequestorAdapter
    implements IRestrictedAccessTypeRequestor {
        ITypeNameRequestor nameRequestor;

        TypeNameRequestorAdapter(ITypeNameRequestor requestor) {
            this.nameRequestor = requestor;
        }

        public void acceptType(int modifiers, char[] packageName, char[] simpleTypeName, char[][] enclosingTypeNames, String path, AccessRestriction access) {
            if (Flags.isInterface(modifiers)) {
                this.nameRequestor.acceptInterface(packageName, simpleTypeName, enclosingTypeNames, path);
            } else {
                this.nameRequestor.acceptClass(packageName, simpleTypeName, enclosingTypeNames, path);
            }
        }
    }
}

