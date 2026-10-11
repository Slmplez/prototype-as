/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.resources.IResource;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchDocument;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.SourceMapper;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.matching.MatchingNodeSet;
import org.eclipse.jdt.internal.core.util.Util;

public class PossibleMatch
implements ICompilationUnit {
    public static final String NO_SOURCE_FILE_NAME = "NO SOURCE FILE NAME";
    public static final char[] NO_SOURCE_FILE = new char[0];
    public IResource resource;
    public Openable openable;
    public MatchingNodeSet nodeSet;
    public char[][] compoundName;
    CompilationUnitDeclaration parsedUnit;
    public SearchDocument document;
    private String sourceFileName;
    private char[] source;
    private PossibleMatch similarMatch;

    public PossibleMatch(MatchLocator locator, IResource resource, Openable openable, SearchDocument document, boolean mustResolve) {
        this.resource = resource;
        this.openable = openable;
        this.document = document;
        this.nodeSet = new MatchingNodeSet(mustResolve);
        char[] qualifiedName = this.getQualifiedName();
        if (qualifiedName != null) {
            this.compoundName = CharOperation.splitOn('.', qualifiedName);
        }
    }

    public void cleanUp() {
        this.source = null;
        if (this.parsedUnit != null) {
            this.parsedUnit.cleanUp();
            this.parsedUnit = null;
        }
        this.nodeSet = null;
    }

    public boolean equals(Object obj) {
        if (this.compoundName == null) {
            return super.equals(obj);
        }
        if (!(obj instanceof PossibleMatch)) {
            return false;
        }
        return CharOperation.equals(this.compoundName, ((PossibleMatch)obj).compoundName);
    }

    public char[] getContents() {
        char[] contents;
        char[] cArray = contents = this.source == NO_SOURCE_FILE ? null : this.source;
        if (this.source == null) {
            if (this.openable instanceof ClassFile) {
                String fileName = this.getSourceFileName();
                if (fileName == NO_SOURCE_FILE_NAME) {
                    return CharOperation.NO_CHAR;
                }
                SourceMapper sourceMapper = this.openable.getSourceMapper();
                if (sourceMapper != null) {
                    IType type = ((ClassFile)this.openable).getType();
                    contents = sourceMapper.findSource(type, fileName);
                }
            } else {
                contents = this.document.getCharContents();
            }
            this.source = contents == null ? NO_SOURCE_FILE : contents;
        }
        return contents;
    }

    public char[] getFileName() {
        return this.openable.getElementName().toCharArray();
    }

    public char[] getMainTypeName() {
        return this.compoundName[this.compoundName.length - 1];
    }

    public char[][] getPackageName() {
        int length = this.compoundName.length;
        if (length <= 1) {
            return CharOperation.NO_CHAR_CHAR;
        }
        return CharOperation.subarray(this.compoundName, 0, length - 1);
    }

    private char[] getQualifiedName() {
        if (this.openable instanceof CompilationUnit) {
            String fileName = this.openable.getElementName();
            char[] mainTypeName = Util.getNameWithoutJavaLikeExtension(fileName).toCharArray();
            CompilationUnit cu = (CompilationUnit)this.openable;
            return cu.getType(new String(mainTypeName)).getFullyQualifiedName().toCharArray();
        }
        if (this.openable instanceof ClassFile) {
            String fileName = this.getSourceFileName();
            if (fileName == NO_SOURCE_FILE_NAME) {
                return ((ClassFile)this.openable).getType().getFullyQualifiedName('.').toCharArray();
            }
            int index = Util.indexOfJavaLikeExtension(fileName);
            String simpleName = index == -1 ? fileName : fileName.substring(0, index);
            PackageFragment pkg = (PackageFragment)this.openable.getParent();
            return Util.concatWith(pkg.names, simpleName, '.').toCharArray();
        }
        return null;
    }

    PossibleMatch getSimilarMatch() {
        return this.similarMatch;
    }

    private String getSourceFileName() {
        BinaryType type;
        ClassFileReader reader;
        if (this.sourceFileName != null) {
            return this.sourceFileName;
        }
        this.sourceFileName = NO_SOURCE_FILE_NAME;
        if (this.openable.getSourceMapper() != null && (reader = MatchLocator.classFileReader(type = (BinaryType)((ClassFile)this.openable).getType())) != null) {
            String fileName = type.sourceFileName(reader);
            this.sourceFileName = fileName == null ? NO_SOURCE_FILE_NAME : fileName;
        }
        return this.sourceFileName;
    }

    boolean hasSimilarMatch() {
        return this.similarMatch != null && this.source == NO_SOURCE_FILE;
    }

    public int hashCode() {
        if (this.compoundName == null) {
            return super.hashCode();
        }
        int hashCode = 0;
        int i = 0;
        int length = this.compoundName.length;
        while (i < length) {
            hashCode += CharOperation.hashCode(this.compoundName[i]);
            ++i;
        }
        return hashCode;
    }

    void setSimilarMatch(PossibleMatch possibleMatch) {
        possibleMatch.source = NO_SOURCE_FILE;
        this.similarMatch = possibleMatch;
    }

    public String toString() {
        return this.openable == null ? "Fake PossibleMatch" : this.openable.toString();
    }
}

