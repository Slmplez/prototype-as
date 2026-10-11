/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Region
 *  org.eclipse.text.edits.DeleteEdit
 *  org.eclipse.text.edits.InsertEdit
 *  org.eclipse.text.edits.MultiTextEdit
 *  org.eclipse.text.edits.TextEdit
 */
package org.eclipse.jdt.internal.core.dom.rewrite;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.ImportDeclaration;
import org.eclipse.jdt.core.dom.PackageDeclaration;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchEngine;
import org.eclipse.jdt.core.search.TypeNameRequestor;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Region;
import org.eclipse.text.edits.DeleteEdit;
import org.eclipse.text.edits.InsertEdit;
import org.eclipse.text.edits.MultiTextEdit;
import org.eclipse.text.edits.TextEdit;

public final class ImportRewriteAnalyzer {
    private final ICompilationUnit compilationUnit;
    private final ArrayList packageEntries;
    private final List importsCreated;
    private final List staticImportsCreated;
    private final IRegion replaceRange;
    private final int importOnDemandThreshold;
    private final int staticImportOnDemandThreshold;
    private boolean filterImplicitImports;
    private boolean useContextToFilterImplicitImports;
    private boolean findAmbiguousImports;
    private int flags = 0;
    private static final int F_NEEDS_LEADING_DELIM = 2;
    private static final int F_NEEDS_TRAILING_DELIM = 4;
    private static final String JAVA_LANG = "java.lang";

    public ImportRewriteAnalyzer(ICompilationUnit cu, CompilationUnit root, String[] importOrder, int threshold, int staticThreshold, boolean restoreExistingImports, boolean useContextToFilterImplicitImports) {
        this.compilationUnit = cu;
        this.importOnDemandThreshold = threshold;
        this.staticImportOnDemandThreshold = staticThreshold;
        this.useContextToFilterImplicitImports = useContextToFilterImplicitImports;
        this.filterImplicitImports = true;
        this.findAmbiguousImports = true;
        this.packageEntries = new ArrayList(20);
        this.importsCreated = new ArrayList();
        this.staticImportsCreated = new ArrayList();
        this.flags = 0;
        this.replaceRange = this.evaluateReplaceRange(root);
        if (restoreExistingImports) {
            this.addExistingImports(root);
        }
        PackageEntry[] order = new PackageEntry[importOrder.length];
        int i = 0;
        while (i < order.length) {
            String curr = importOrder[i];
            if (curr.length() > 0 && curr.charAt(0) == '#') {
                curr = curr.substring(1);
                order[i] = new PackageEntry(curr, curr, true);
            } else {
                order[i] = new PackageEntry(curr, curr, false);
            }
            ++i;
        }
        this.addPreferenceOrderHolders(order);
    }

    private int getSpacesBetweenImportGroups() {
        try {
            int num = Integer.parseInt(this.compilationUnit.getJavaProject().getOption("org.eclipse.jdt.core.formatter.blank_lines_between_import_groups", true));
            if (num >= 0) {
                return num;
            }
        }
        catch (NumberFormatException numberFormatException) {}
        return 1;
    }

    private boolean insertSpaceBeforeSemicolon() {
        return "insert".equals(this.compilationUnit.getJavaProject().getOption("org.eclipse.jdt.core.formatter.insert_space_before_semicolon", true));
    }

    private void addPreferenceOrderHolders(PackageEntry[] preferenceOrder) {
        if (this.packageEntries.isEmpty()) {
            int i = 0;
            while (i < preferenceOrder.length) {
                this.packageEntries.add(preferenceOrder[i]);
                ++i;
            }
        } else {
            PackageEntry[] lastAssigned = new PackageEntry[preferenceOrder.length];
            int k = 0;
            while (k < this.packageEntries.size()) {
                PackageEntry entry = (PackageEntry)this.packageEntries.get(k);
                if (!entry.isComment()) {
                    String currName = entry.getName();
                    int currNameLen = currName.length();
                    int bestGroupIndex = -1;
                    int bestGroupLen = -1;
                    int i = 0;
                    while (i < preferenceOrder.length) {
                        boolean currPrevStatic = preferenceOrder[i].isStatic();
                        if (currPrevStatic == entry.isStatic()) {
                            String currPrefEntry = preferenceOrder[i].getName();
                            int currPrefLen = currPrefEntry.length();
                            if (!(!currName.startsWith(currPrefEntry) || currPrefLen < bestGroupLen || currPrefLen != currNameLen && currName.charAt(currPrefLen) != '.' || bestGroupIndex != -1 && currPrefLen <= bestGroupLen)) {
                                bestGroupLen = currPrefLen;
                                bestGroupIndex = i;
                            }
                        }
                        ++i;
                    }
                    if (bestGroupIndex != -1) {
                        entry.setGroupID(preferenceOrder[bestGroupIndex].getName());
                        lastAssigned[bestGroupIndex] = entry;
                    }
                }
                ++k;
            }
            int currAppendIndex = 0;
            int i = 0;
            while (i < lastAssigned.length) {
                PackageEntry entry = lastAssigned[i];
                if (entry == null) {
                    PackageEntry newEntry = preferenceOrder[i];
                    if (currAppendIndex == 0 && !newEntry.isStatic()) {
                        currAppendIndex = this.getIndexAfterStatics();
                    }
                    this.packageEntries.add(currAppendIndex, newEntry);
                    ++currAppendIndex;
                } else {
                    currAppendIndex = this.packageEntries.indexOf(entry) + 1;
                }
                ++i;
            }
        }
    }

    private String getQualifier(ImportDeclaration decl) {
        String name = decl.getName().getFullyQualifiedName();
        if (decl.isOnDemand()) {
            return name;
        }
        return this.getQualifier(name, decl.isStatic());
    }

    private String getQualifier(String name, boolean isStatic) {
        if (isStatic || !this.useContextToFilterImplicitImports) {
            return Signature.getQualifier(name);
        }
        char[] searchedName = name.toCharArray();
        int index = name.length();
        JavaProject project = (JavaProject)this.compilationUnit.getJavaProject();
        do {
            String testedName = new String(searchedName, 0, index);
            IJavaElement fragment = null;
            try {
                fragment = project.findPackageFragment(testedName);
            }
            catch (JavaModelException javaModelException) {
                return name;
            }
            if (fragment != null) {
                return testedName;
            }
            try {
                fragment = project.findType(testedName);
            }
            catch (JavaModelException javaModelException) {
                return name;
            }
            if (fragment != null) {
                index = CharOperation.lastIndexOf('.', searchedName, 0, index - 1);
                continue;
            }
            if (!Character.isLowerCase(searchedName[(index = CharOperation.lastIndexOf('.', searchedName, 0, index - 1)) + 1])) continue;
            return testedName;
        } while (index >= 0);
        return name;
    }

    private static String getFullName(ImportDeclaration decl) {
        String name = decl.getName().getFullyQualifiedName();
        return decl.isOnDemand() ? String.valueOf(name) + ".*" : name;
    }

    private void addExistingImports(CompilationUnit root) {
        List decls = root.imports();
        if (decls.isEmpty()) {
            return;
        }
        PackageEntry currPackage = null;
        ImportDeclaration curr = (ImportDeclaration)decls.get(0);
        int currOffset = curr.getStartPosition();
        int currLength = curr.getLength();
        int currEndLine = root.getLineNumber(currOffset + currLength);
        int i = 1;
        while (i < decls.size()) {
            boolean isStatic = curr.isStatic();
            String name = ImportRewriteAnalyzer.getFullName(curr);
            String packName = this.getQualifier(curr);
            if (currPackage == null || currPackage.compareTo(packName, isStatic) != 0) {
                currPackage = new PackageEntry(packName, null, isStatic);
                this.packageEntries.add(currPackage);
            }
            ImportDeclaration next = (ImportDeclaration)decls.get(i);
            int nextOffset = next.getStartPosition();
            int nextLength = next.getLength();
            int nextOffsetLine = root.getLineNumber(nextOffset);
            if (currEndLine < nextOffsetLine) {
                nextOffset = root.getPosition(++currEndLine, 0);
            }
            currPackage.add(new ImportDeclEntry(packName.length(), name, isStatic, (IRegion)new Region(currOffset, nextOffset - currOffset)));
            currOffset = nextOffset;
            curr = next;
            if (currEndLine < nextOffsetLine) {
                nextOffset = root.getPosition(nextOffsetLine, 0);
                currPackage = new PackageEntry();
                this.packageEntries.add(currPackage);
                currPackage.add(new ImportDeclEntry(packName.length(), null, false, (IRegion)new Region(currOffset, nextOffset - currOffset)));
                currOffset = nextOffset;
            }
            currEndLine = root.getLineNumber(nextOffset + nextLength);
            ++i;
        }
        boolean isStatic = curr.isStatic();
        String name = ImportRewriteAnalyzer.getFullName(curr);
        String packName = this.getQualifier(curr);
        if (currPackage == null || currPackage.compareTo(packName, isStatic) != 0) {
            currPackage = new PackageEntry(packName, null, isStatic);
            this.packageEntries.add(currPackage);
        }
        int length = this.replaceRange.getOffset() + this.replaceRange.getLength() - curr.getStartPosition();
        currPackage.add(new ImportDeclEntry(packName.length(), name, isStatic, (IRegion)new Region(curr.getStartPosition(), length)));
    }

    public void setFilterImplicitImports(boolean filterImplicitImports) {
        this.filterImplicitImports = filterImplicitImports;
    }

    public void setFindAmbiguousImports(boolean findAmbiguousImports) {
        this.findAmbiguousImports = findAmbiguousImports;
    }

    static int getCommonPrefixLength(String s, String t) {
        int len = Math.min(s.length(), t.length());
        int i = 0;
        while (i < len) {
            if (s.charAt(i) != t.charAt(i)) {
                return i;
            }
            ++i;
        }
        return len;
    }

    static char getCharAt(String str, int index) {
        if (str.length() > index) {
            return str.charAt(index);
        }
        return '\u0000';
    }

    private PackageEntry findBestMatch(String newName, boolean isStatic) {
        if (this.packageEntries.isEmpty()) {
            return null;
        }
        String groupId = null;
        int longestPrefix = -1;
        int i = 0;
        while (i < this.packageEntries.size()) {
            String currGroup;
            PackageEntry curr = (PackageEntry)this.packageEntries.get(i);
            if (isStatic == curr.isStatic() && (currGroup = curr.getGroupID()) != null && newName.startsWith(currGroup)) {
                int prefixLen = currGroup.length();
                if (prefixLen == newName.length()) {
                    return curr;
                }
                if ((newName.charAt(prefixLen) == '.' || prefixLen == 0) && prefixLen > longestPrefix) {
                    longestPrefix = prefixLen;
                    groupId = currGroup;
                }
            }
            ++i;
        }
        PackageEntry bestMatch = null;
        PackageMatcher matcher = new PackageMatcher();
        matcher.initialize(newName, "");
        int i2 = 0;
        while (i2 < this.packageEntries.size()) {
            PackageEntry curr = (PackageEntry)this.packageEntries.get(i2);
            if (!curr.isComment() && curr.isStatic() == isStatic && (groupId == null || groupId.equals(curr.getGroupID()))) {
                boolean preferrCurr;
                boolean bl = preferrCurr = bestMatch == null || curr.getNumberOfImports() > bestMatch.getNumberOfImports();
                if (matcher.isBetterMatch(curr.getName(), preferrCurr)) {
                    bestMatch = curr;
                }
            }
            ++i2;
        }
        return bestMatch;
    }

    private boolean isImplicitImport(String qualifier) {
        if (JAVA_LANG.equals(qualifier)) {
            return true;
        }
        ICompilationUnit cu = this.compilationUnit;
        String packageName = cu.getParent().getElementName();
        if (qualifier.equals(packageName)) {
            return true;
        }
        String mainTypeName = JavaCore.removeJavaLikeExtension(cu.getElementName());
        if (packageName.length() == 0) {
            return qualifier.equals(mainTypeName);
        }
        return qualifier.equals(String.valueOf(packageName) + '.' + mainTypeName);
    }

    public void addImport(String fullTypeName, boolean isStatic) {
        String typeContainerName = this.getQualifier(fullTypeName, isStatic);
        ImportDeclEntry decl = new ImportDeclEntry(typeContainerName.length(), fullTypeName, isStatic, null);
        this.sortIn(typeContainerName, decl, isStatic);
    }

    public boolean removeImport(String qualifiedName, boolean isStatic) {
        String containerName = this.getQualifier(qualifiedName, isStatic);
        int nPackages = this.packageEntries.size();
        int i = 0;
        while (i < nPackages) {
            PackageEntry entry = (PackageEntry)this.packageEntries.get(i);
            if (entry.compareTo(containerName, isStatic) == 0 && entry.remove(qualifiedName, isStatic)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private int getIndexAfterStatics() {
        int i = 0;
        while (i < this.packageEntries.size()) {
            if (!((PackageEntry)this.packageEntries.get(i)).isStatic()) {
                return i;
            }
            ++i;
        }
        return this.packageEntries.size();
    }

    private void sortIn(String typeContainerName, ImportDeclEntry decl, boolean isStatic) {
        PackageEntry bestMatch = this.findBestMatch(typeContainerName, isStatic);
        if (bestMatch == null) {
            PackageEntry packEntry = new PackageEntry(typeContainerName, null, isStatic);
            packEntry.add(decl);
            int insertPos = packEntry.isStatic() ? 0 : this.getIndexAfterStatics();
            this.packageEntries.add(insertPos, packEntry);
        } else {
            int cmp = typeContainerName.compareTo(bestMatch.getName());
            if (cmp == 0) {
                bestMatch.sortIn(decl);
            } else {
                String group = bestMatch.getGroupID();
                if (group != null && !typeContainerName.startsWith(group)) {
                    group = null;
                }
                PackageEntry packEntry = new PackageEntry(typeContainerName, group, isStatic);
                packEntry.add(decl);
                int index = this.packageEntries.indexOf(bestMatch);
                if (cmp < 0) {
                    this.packageEntries.add(index, packEntry);
                } else {
                    this.packageEntries.add(index + 1, packEntry);
                }
            }
        }
    }

    private IRegion evaluateReplaceRange(CompilationUnit root) {
        List imports = root.imports();
        if (!imports.isEmpty()) {
            int nextLinePos;
            ImportDeclaration first = (ImportDeclaration)imports.get(0);
            ImportDeclaration last = (ImportDeclaration)imports.get(imports.size() - 1);
            int startPos = first.getStartPosition();
            int endPos = root.getExtendedStartPosition(last) + root.getExtendedLength(last);
            int endLine = root.getLineNumber(endPos);
            if (endLine > 0 && (nextLinePos = root.getPosition(endLine + 1, 0)) >= 0) {
                int firstTypePos = ImportRewriteAnalyzer.getFirstTypeBeginPos(root);
                endPos = firstTypePos != -1 && firstTypePos < nextLinePos ? firstTypePos : nextLinePos;
            }
            return new Region(startPos, endPos - startPos);
        }
        int start = this.getPackageStatementEndPos(root);
        return new Region(start, 0);
    }

    public MultiTextEdit getResultingEdits(IProgressMonitor monitor) throws JavaModelException {
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        try {
            int importsStart = this.replaceRange.getOffset();
            int importsLen = this.replaceRange.getLength();
            String lineDelim = this.compilationUnit.findRecommendedLineSeparator();
            IBuffer buffer = this.compilationUnit.getBuffer();
            int currPos = importsStart;
            MultiTextEdit resEdit = new MultiTextEdit();
            if ((this.flags & 2) != 0) {
                resEdit.addChild((TextEdit)new InsertEdit(currPos, lineDelim));
            }
            PackageEntry lastPackage = null;
            Set onDemandConflicts = null;
            if (this.findAmbiguousImports) {
                onDemandConflicts = this.evaluateStarImportConflicts(monitor);
            }
            int spacesBetweenGroups = this.getSpacesBetweenImportGroups();
            ArrayList<String> stringsToInsert = new ArrayList<String>();
            int nPackageEntries = this.packageEntries.size();
            int i = 0;
            while (i < nPackageEntries) {
                int nImports;
                PackageEntry pack = (PackageEntry)this.packageEntries.get(i);
                if (this.filterImplicitImports && !pack.isStatic() && this.isImplicitImport(pack.getName())) {
                    pack.filterImplicitImports(this.useContextToFilterImplicitImports);
                }
                if ((nImports = pack.getNumberOfImports()) != 0) {
                    if (spacesBetweenGroups > 0 && lastPackage != null && !pack.isComment() && !pack.isSameGroup(lastPackage)) {
                        ImportDeclEntry last = lastPackage.getImportAt(lastPackage.getNumberOfImports() - 1);
                        ImportDeclEntry first = pack.getImportAt(0);
                        if (!lastPackage.isComment() && (last.isNew() || first.isNew())) {
                            int k = spacesBetweenGroups;
                            while (k > 0) {
                                stringsToInsert.add(lineDelim);
                                --k;
                            }
                        }
                    }
                    lastPackage = pack;
                    boolean isStatic = pack.isStatic();
                    int threshold = isStatic ? this.staticImportOnDemandThreshold : this.importOnDemandThreshold;
                    boolean doStarImport = pack.hasStarImport(threshold, onDemandConflicts);
                    if (doStarImport && pack.find("*") == null) {
                        String[] imports = this.getNewImportStrings(pack, isStatic, lineDelim);
                        int j = 0;
                        int max = imports.length;
                        while (j < max) {
                            stringsToInsert.add(imports[j]);
                            ++j;
                        }
                    }
                    int k = 0;
                    while (k < nImports) {
                        String simpleName;
                        String str;
                        ImportDeclEntry currDecl = pack.getImportAt(k);
                        IRegion region = currDecl.getSourceRange();
                        if (region == null) {
                            String simpleName2;
                            if (!doStarImport || currDecl.isOnDemand() || onDemandConflicts != null && onDemandConflicts.contains(currDecl.getSimpleName())) {
                                String str2 = this.getNewImportString(currDecl.getElementName(), isStatic, lineDelim);
                                stringsToInsert.add(str2);
                            } else if (doStarImport && !currDecl.isOnDemand() && (simpleName2 = currDecl.getTypeQualifiedName()).indexOf(46) != -1 && stringsToInsert.indexOf(str = this.getNewImportString(currDecl.getElementName(), isStatic, lineDelim)) == -1) {
                                stringsToInsert.add(str);
                            }
                        } else if (!doStarImport || currDecl.isOnDemand() || onDemandConflicts == null || onDemandConflicts.contains(currDecl.getSimpleName())) {
                            int offset = region.getOffset();
                            this.removeAndInsertNew(buffer, currPos, offset, stringsToInsert, resEdit);
                            stringsToInsert.clear();
                            currPos = offset + region.getLength();
                        } else if (doStarImport && !currDecl.isOnDemand() && (simpleName = currDecl.getTypeQualifiedName()).indexOf(46) != -1 && stringsToInsert.indexOf(str = this.getNewImportString(currDecl.getElementName(), isStatic, lineDelim)) == -1) {
                            stringsToInsert.add(str);
                        }
                        ++k;
                    }
                }
                ++i;
            }
            int end = importsStart + importsLen;
            this.removeAndInsertNew(buffer, currPos, end, stringsToInsert, resEdit);
            if (importsLen == 0) {
                if (!this.importsCreated.isEmpty() || !this.staticImportsCreated.isEmpty()) {
                    if ((this.flags & 4) != 0) {
                        resEdit.addChild((TextEdit)new InsertEdit(currPos, lineDelim));
                    }
                } else {
                    MultiTextEdit multiTextEdit = new MultiTextEdit();
                    return multiTextEdit;
                }
            }
            MultiTextEdit multiTextEdit = resEdit;
            return multiTextEdit;
        }
        finally {
            monitor.done();
        }
    }

    private void removeAndInsertNew(IBuffer buffer, int contentOffset, int contentEnd, ArrayList stringsToInsert, MultiTextEdit resEdit) {
        int pos = contentOffset;
        int i = 0;
        while (i < stringsToInsert.size()) {
            String curr = (String)stringsToInsert.get(i);
            int idx = this.findInBuffer(buffer, curr, pos, contentEnd);
            if (idx != -1) {
                if (idx != pos) {
                    resEdit.addChild((TextEdit)new DeleteEdit(pos, idx - pos));
                }
                pos = idx + curr.length();
            } else {
                resEdit.addChild((TextEdit)new InsertEdit(pos, curr));
            }
            ++i;
        }
        if (pos < contentEnd) {
            resEdit.addChild((TextEdit)new DeleteEdit(pos, contentEnd - pos));
        }
    }

    private int findInBuffer(IBuffer buffer, String str, int start, int end) {
        int pos = start;
        int len = str.length();
        if (pos + len > end || str.length() == 0) {
            return -1;
        }
        char first = str.charAt(0);
        int step = str.indexOf(first, 1);
        if (step == -1) {
            step = len;
        }
        while (pos + len <= end) {
            if (buffer.getChar(pos) == first) {
                int k = 1;
                while (k < len && buffer.getChar(pos + k) == str.charAt(k)) {
                    ++k;
                }
                if (k == len) {
                    return pos;
                }
                if (k < step) {
                    pos += k;
                    continue;
                }
                pos += step;
                continue;
            }
            ++pos;
        }
        return -1;
    }

    private Set evaluateStarImportConflicts(IProgressMonitor monitor) throws JavaModelException {
        final HashSet onDemandConflicts = new HashSet();
        IJavaSearchScope scope = SearchEngine.createJavaSearchScope(new IJavaElement[]{this.compilationUnit.getJavaProject()});
        ArrayList<char[]> starImportPackages = new ArrayList<char[]>();
        ArrayList<char[]> simpleTypeNames = new ArrayList<char[]>();
        int nPackageEntries = this.packageEntries.size();
        int i = 0;
        while (i < nPackageEntries) {
            PackageEntry pack = (PackageEntry)this.packageEntries.get(i);
            if (!pack.isStatic() && pack.hasStarImport(this.importOnDemandThreshold, null)) {
                starImportPackages.add(pack.getName().toCharArray());
                int k = 0;
                while (k < pack.getNumberOfImports()) {
                    ImportDeclEntry curr = pack.getImportAt(k);
                    if (!curr.isOnDemand() && !curr.isComment()) {
                        simpleTypeNames.add(curr.getSimpleName().toCharArray());
                    }
                    ++k;
                }
            }
            ++i;
        }
        if (starImportPackages.isEmpty()) {
            return null;
        }
        starImportPackages.add(this.compilationUnit.getParent().getElementName().toCharArray());
        starImportPackages.add(JAVA_LANG.toCharArray());
        char[][] allPackages = (char[][])starImportPackages.toArray((T[])new char[starImportPackages.size()][]);
        char[][] allTypes = (char[][])simpleTypeNames.toArray((T[])new char[simpleTypeNames.size()][]);
        TypeNameRequestor requestor = new TypeNameRequestor(){
            HashMap foundTypes = new HashMap();

            private String getTypeContainerName(char[] packageName, char[][] enclosingTypeNames) {
                StringBuffer buf = new StringBuffer();
                buf.append(packageName);
                int i = 0;
                while (i < enclosingTypeNames.length) {
                    if (buf.length() > 0) {
                        buf.append('.');
                    }
                    buf.append(enclosingTypeNames[i]);
                    ++i;
                }
                return buf.toString();
            }

            public void acceptType(int modifiers, char[] packageName, char[] simpleTypeName, char[][] enclosingTypeNames, String path) {
                String name = new String(simpleTypeName);
                String containerName = this.getTypeContainerName(packageName, enclosingTypeNames);
                String oldContainer = this.foundTypes.put(name, containerName);
                if (oldContainer != null && !oldContainer.equals(containerName)) {
                    onDemandConflicts.add(name);
                }
            }
        };
        new SearchEngine().searchAllTypeNames(allPackages, allTypes, scope, requestor, 3, monitor);
        return onDemandConflicts;
    }

    private String getNewImportString(String importName, boolean isStatic, String lineDelim) {
        StringBuffer buf = new StringBuffer();
        buf.append("import ");
        if (isStatic) {
            buf.append("static ");
        }
        buf.append(importName);
        if (this.insertSpaceBeforeSemicolon()) {
            buf.append(' ');
        }
        buf.append(';');
        buf.append(lineDelim);
        if (isStatic) {
            this.staticImportsCreated.add(importName);
        } else {
            this.importsCreated.add(importName);
        }
        return buf.toString();
    }

    private String[] getNewImportStrings(PackageEntry packageEntry, boolean isStatic, String lineDelim) {
        boolean isStarImportAdded = false;
        ArrayList<String> allImports = new ArrayList<String>();
        int nImports = packageEntry.getNumberOfImports();
        int i = 0;
        while (i < nImports) {
            ImportDeclEntry curr = packageEntry.getImportAt(i);
            String simpleName = curr.getTypeQualifiedName();
            if (simpleName.indexOf(46) != -1) {
                allImports.add(this.getNewImportString(curr.getElementName(), isStatic, lineDelim));
            } else if (!isStarImportAdded) {
                String starImportString = String.valueOf(packageEntry.getName()) + ".*";
                allImports.add(this.getNewImportString(starImportString, isStatic, lineDelim));
                isStarImportAdded = true;
            }
            ++i;
        }
        return allImports.toArray(new String[allImports.size()]);
    }

    private static int getFirstTypeBeginPos(CompilationUnit root) {
        List types = root.types();
        if (!types.isEmpty()) {
            return root.getExtendedStartPosition((ASTNode)types.get(0));
        }
        return -1;
    }

    private int getPackageStatementEndPos(CompilationUnit root) {
        PackageDeclaration packDecl = root.getPackage();
        if (packDecl != null) {
            int afterPackageStatementPos = -1;
            int lineNumber = root.getLineNumber(packDecl.getStartPosition() + packDecl.getLength());
            if (lineNumber >= 0) {
                int lineAfterPackage = lineNumber + 1;
                afterPackageStatementPos = root.getPosition(lineAfterPackage, 0);
            }
            if (afterPackageStatementPos < 0) {
                this.flags |= 2;
                return packDecl.getStartPosition() + packDecl.getLength();
            }
            int firstTypePos = ImportRewriteAnalyzer.getFirstTypeBeginPos(root);
            if (firstTypePos != -1 && firstTypePos <= afterPackageStatementPos) {
                this.flags |= 4;
                if (firstTypePos == afterPackageStatementPos) {
                    this.flags |= 2;
                }
                return firstTypePos;
            }
            this.flags |= 2;
            return afterPackageStatementPos;
        }
        this.flags |= 4;
        return 0;
    }

    public String toString() {
        int nPackages = this.packageEntries.size();
        StringBuffer buf = new StringBuffer("\n-----------------------\n");
        int i = 0;
        while (i < nPackages) {
            PackageEntry entry = (PackageEntry)this.packageEntries.get(i);
            if (entry.isStatic()) {
                buf.append("static ");
            }
            buf.append(entry.toString());
            ++i;
        }
        return buf.toString();
    }

    public String[] getCreatedImports() {
        return this.importsCreated.toArray(new String[this.importsCreated.size()]);
    }

    public String[] getCreatedStaticImports() {
        return this.staticImportsCreated.toArray(new String[this.staticImportsCreated.size()]);
    }

    private static final class ImportDeclEntry {
        private String elementName;
        private IRegion sourceRange;
        private final boolean isStatic;
        private int containerNameLength;

        public ImportDeclEntry(int containerNameLength, String elementName, boolean isStatic, IRegion sourceRange) {
            this.elementName = elementName;
            this.sourceRange = sourceRange;
            this.isStatic = isStatic;
            this.containerNameLength = containerNameLength;
        }

        public String getElementName() {
            return this.elementName;
        }

        public int compareTo(String fullName, boolean isStaticImport) {
            int cmp = this.elementName.compareTo(fullName);
            if (cmp == 0) {
                if (this.isStatic == isStaticImport) {
                    return 0;
                }
                return this.isStatic ? -1 : 1;
            }
            return cmp;
        }

        public String getSimpleName() {
            return Signature.getSimpleName(this.elementName);
        }

        public String getTypeQualifiedName() {
            return this.elementName.substring(this.containerNameLength + 1);
        }

        public boolean isOnDemand() {
            return this.elementName != null && this.elementName.endsWith(".*");
        }

        public boolean isStatic() {
            return this.isStatic;
        }

        public boolean isNew() {
            return this.sourceRange == null;
        }

        public boolean isComment() {
            return this.elementName == null;
        }

        public IRegion getSourceRange() {
            return this.sourceRange;
        }
    }

    private static final class PackageEntry {
        private String name;
        private ArrayList importEntries;
        private String group;
        private boolean isStatic;

        public PackageEntry() {
            this("!", null, false);
        }

        public PackageEntry(String name, String group, boolean isStatic) {
            this.name = name;
            this.importEntries = new ArrayList(5);
            this.group = group;
            this.isStatic = isStatic;
        }

        public boolean isStatic() {
            return this.isStatic;
        }

        public int compareTo(String otherName, boolean isOtherStatic) {
            int cmp = this.name.compareTo(otherName);
            if (cmp == 0) {
                if (this.isStatic == isOtherStatic) {
                    return 0;
                }
                return this.isStatic ? -1 : 1;
            }
            return cmp;
        }

        public void sortIn(ImportDeclEntry imp) {
            String fullImportName = imp.getElementName();
            int insertPosition = -1;
            int nInports = this.importEntries.size();
            int i = 0;
            while (i < nInports) {
                ImportDeclEntry curr = this.getImportAt(i);
                if (!curr.isComment()) {
                    int cmp = curr.compareTo(fullImportName, imp.isStatic());
                    if (cmp == 0) {
                        return;
                    }
                    if (cmp > 0 && insertPosition == -1) {
                        insertPosition = i;
                    }
                }
                ++i;
            }
            if (insertPosition == -1) {
                this.importEntries.add(imp);
            } else {
                this.importEntries.add(insertPosition, imp);
            }
        }

        public void add(ImportDeclEntry imp) {
            this.importEntries.add(imp);
        }

        public ImportDeclEntry find(String simpleName) {
            int nInports = this.importEntries.size();
            int i = 0;
            while (i < nInports) {
                int dotPos;
                String currName;
                ImportDeclEntry curr = this.getImportAt(i);
                if (!curr.isComment() && (currName = curr.getElementName()).endsWith(simpleName) && ((dotPos = currName.length() - simpleName.length() - 1) == -1 || dotPos > 0 && currName.charAt(dotPos) == '.')) {
                    return curr;
                }
                ++i;
            }
            return null;
        }

        public boolean remove(String fullName, boolean isStaticImport) {
            int nInports = this.importEntries.size();
            int i = 0;
            while (i < nInports) {
                ImportDeclEntry curr = this.getImportAt(i);
                if (!curr.isComment() && curr.compareTo(fullName, isStaticImport) == 0) {
                    this.importEntries.remove(i);
                    return true;
                }
                ++i;
            }
            return false;
        }

        public void filterImplicitImports(boolean useContextToFilterImplicitImports) {
            int nInports = this.importEntries.size();
            int i = nInports - 1;
            while (i >= 0) {
                ImportDeclEntry curr = this.getImportAt(i);
                if (curr.isNew()) {
                    if (!useContextToFilterImplicitImports) {
                        this.importEntries.remove(i);
                    } else {
                        boolean internalClassImport;
                        String elementName = curr.getElementName();
                        int lastIndexOf = elementName.lastIndexOf(46);
                        boolean bl = internalClassImport = lastIndexOf > this.getName().length();
                        if (!internalClassImport) {
                            this.importEntries.remove(i);
                        }
                    }
                }
                --i;
            }
        }

        public ImportDeclEntry getImportAt(int index) {
            return (ImportDeclEntry)this.importEntries.get(index);
        }

        public boolean hasStarImport(int threshold, Set explicitImports) {
            if (this.isComment() || this.isDefaultPackage()) {
                return false;
            }
            int nImports = this.getNumberOfImports();
            int count = 0;
            boolean containsNew = false;
            int i = 0;
            while (i < nImports) {
                ImportDeclEntry curr = this.getImportAt(i);
                if (curr.isOnDemand()) {
                    return true;
                }
                if (!curr.isComment()) {
                    ++count;
                    boolean isExplicit = !curr.isStatic() && explicitImports != null && explicitImports.contains(curr.getSimpleName());
                    containsNew |= curr.isNew() && !isExplicit;
                }
                ++i;
            }
            return count >= threshold && containsNew;
        }

        public int getNumberOfImports() {
            return this.importEntries.size();
        }

        public String getName() {
            return this.name;
        }

        public String getGroupID() {
            return this.group;
        }

        public void setGroupID(String groupID) {
            this.group = groupID;
        }

        public boolean isSameGroup(PackageEntry other) {
            if (this.group == null) {
                return other.getGroupID() == null;
            }
            return this.group.equals(other.getGroupID()) && this.isStatic == other.isStatic();
        }

        public boolean isComment() {
            return "!".equals(this.name);
        }

        public boolean isDefaultPackage() {
            return this.name.length() == 0;
        }

        public String toString() {
            StringBuffer buf = new StringBuffer();
            if (this.isComment()) {
                buf.append("comment\n");
            } else {
                buf.append(this.name);
                buf.append(", groupId: ");
                buf.append(this.group);
                buf.append("\n");
                int nImports = this.getNumberOfImports();
                int i = 0;
                while (i < nImports) {
                    ImportDeclEntry curr = this.getImportAt(i);
                    buf.append(" ");
                    if (curr.isStatic()) {
                        buf.append("static ");
                    }
                    buf.append(curr.getTypeQualifiedName());
                    if (curr.isNew()) {
                        buf.append(" (new)");
                    }
                    buf.append("\n");
                    ++i;
                }
            }
            return buf.toString();
        }
    }

    private static class PackageMatcher {
        private String newName;
        private String bestName;
        private int bestMatchLen;

        public void initialize(String newImportName, String bestImportName) {
            this.newName = newImportName;
            this.bestName = bestImportName;
            this.bestMatchLen = ImportRewriteAnalyzer.getCommonPrefixLength(bestImportName, newImportName);
        }

        public boolean isBetterMatch(String currName, boolean preferCurr) {
            boolean isBetter;
            int currMatchLen = ImportRewriteAnalyzer.getCommonPrefixLength(currName, this.newName);
            int matchDiff = currMatchLen - this.bestMatchLen;
            if (matchDiff == 0) {
                isBetter = currMatchLen == this.newName.length() && currMatchLen == currName.length() && currMatchLen == this.bestName.length() ? preferCurr : this.sameMatchLenTest(currName);
            } else {
                boolean bl = isBetter = matchDiff > 0;
            }
            if (isBetter) {
                this.bestName = currName;
                this.bestMatchLen = currMatchLen;
            }
            return isBetter;
        }

        private boolean sameMatchLenTest(String currName) {
            int matchLen = this.bestMatchLen;
            char newChar = ImportRewriteAnalyzer.getCharAt(this.newName, matchLen);
            char currChar = ImportRewriteAnalyzer.getCharAt(currName, matchLen);
            char bestChar = ImportRewriteAnalyzer.getCharAt(this.bestName, matchLen);
            if (newChar < currChar) {
                if (bestChar < newChar) {
                    return currChar - newChar < newChar - bestChar;
                }
                if (currChar == bestChar) {
                    return false;
                }
                return currChar < bestChar;
            }
            if (bestChar > newChar) {
                return newChar - currChar < bestChar - newChar;
            }
            if (currChar == bestChar) {
                return true;
            }
            return currChar > bestChar;
        }
    }
}

