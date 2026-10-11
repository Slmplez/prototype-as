/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 */
package org.eclipse.jdt.internal.core;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModel;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IParent;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.ISourceReference;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaElementInfo;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.SourceMapper;
import org.eclipse.jdt.internal.core.SourceRefElement;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;
import org.eclipse.jdt.internal.core.util.Util;

public abstract class JavaElement
extends PlatformObject
implements IJavaElement {
    private static final byte[] CLOSING_DOUBLE_QUOTE = new byte[]{34};
    private static final byte[] CHARSET = new byte[]{99, 104, 97, 114, 115, 101, 116, 61};
    private static final byte[] CONTENT_TYPE = new byte[]{34, 67, 111, 110, 116, 101, 110, 116, 45, 84, 121, 112, 101, 34};
    private static final byte[] CONTENT = new byte[]{99, 111, 110, 116, 101, 110, 116, 61, 34};
    public static final char JEM_ESCAPE = '\\';
    public static final char JEM_JAVAPROJECT = '=';
    public static final char JEM_PACKAGEFRAGMENTROOT = '/';
    public static final char JEM_PACKAGEFRAGMENT = '<';
    public static final char JEM_FIELD = '^';
    public static final char JEM_METHOD = '~';
    public static final char JEM_INITIALIZER = '|';
    public static final char JEM_COMPILATIONUNIT = '{';
    public static final char JEM_CLASSFILE = '(';
    public static final char JEM_TYPE = '[';
    public static final char JEM_PACKAGEDECLARATION = '%';
    public static final char JEM_IMPORTDECLARATION = '#';
    public static final char JEM_COUNT = '!';
    public static final char JEM_LOCALVARIABLE = '@';
    public static final char JEM_TYPE_PARAMETER = ']';
    public static final char JEM_ANNOTATION = '}';
    protected JavaElement parent;
    protected static final JavaElement[] NO_ELEMENTS = new JavaElement[0];
    protected static final Object NO_INFO = new Object();

    protected JavaElement(JavaElement parent) throws IllegalArgumentException {
        this.parent = parent;
    }

    public void close() throws JavaModelException {
        JavaModelManager.getJavaModelManager().removeInfoAndChildren(this);
    }

    protected abstract void closing(Object var1) throws JavaModelException;

    protected abstract Object createElementInfo();

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (this.parent == null) {
            return super.equals(o);
        }
        JavaElement other = (JavaElement)o;
        return this.getElementName().equals(other.getElementName()) && this.parent.equals(other.parent);
    }

    protected void escapeMementoName(StringBuffer buffer, String mementoName) {
        int i = 0;
        int length = mementoName.length();
        while (i < length) {
            char character = mementoName.charAt(i);
            switch (character) {
                case '!': 
                case '#': 
                case '%': 
                case '(': 
                case '/': 
                case '<': 
                case '=': 
                case '@': 
                case '[': 
                case '\\': 
                case ']': 
                case '^': 
                case '{': 
                case '|': 
                case '}': 
                case '~': {
                    buffer.append('\\');
                }
            }
            buffer.append(character);
            ++i;
        }
    }

    public boolean exists() {
        try {
            this.getElementInfo();
            return true;
        }
        catch (JavaModelException javaModelException) {
            return false;
        }
    }

    public ASTNode findNode(CompilationUnit ast) {
        return null;
    }

    protected abstract void generateInfos(Object var1, HashMap var2, IProgressMonitor var3) throws JavaModelException;

    public IJavaElement getAncestor(int ancestorType) {
        IJavaElement element = this;
        while (element != null) {
            if (element.getElementType() == ancestorType) {
                return element;
            }
            element = element.getParent();
        }
        return null;
    }

    public IJavaElement[] getChildren() throws JavaModelException {
        Object elementInfo = this.getElementInfo();
        if (elementInfo instanceof JavaElementInfo) {
            return ((JavaElementInfo)elementInfo).getChildren();
        }
        return NO_ELEMENTS;
    }

    public ArrayList getChildrenOfType(int type) throws JavaModelException {
        IJavaElement[] children = this.getChildren();
        int size = children.length;
        ArrayList<JavaElement> list = new ArrayList<JavaElement>(size);
        int i = 0;
        while (i < size) {
            JavaElement elt = (JavaElement)children[i];
            if (elt.getElementType() == type) {
                list.add(elt);
            }
            ++i;
        }
        return list;
    }

    public IClassFile getClassFile() {
        return null;
    }

    public ICompilationUnit getCompilationUnit() {
        return null;
    }

    public Object getElementInfo() throws JavaModelException {
        return this.getElementInfo(null);
    }

    public Object getElementInfo(IProgressMonitor monitor) throws JavaModelException {
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        Object info = manager.getInfo(this);
        if (info != null) {
            return info;
        }
        return this.openWhenClosed(this.createElementInfo(), monitor);
    }

    public String getElementName() {
        return "";
    }

    public abstract IJavaElement getHandleFromMemento(String var1, MementoTokenizer var2, WorkingCopyOwner var3);

    public IJavaElement getHandleFromMemento(MementoTokenizer memento, WorkingCopyOwner owner) {
        if (!memento.hasMoreTokens()) {
            return this;
        }
        String token = memento.nextToken();
        return this.getHandleFromMemento(token, memento, owner);
    }

    public String getHandleIdentifier() {
        return this.getHandleMemento();
    }

    public String getHandleMemento() {
        StringBuffer buff = new StringBuffer();
        this.getHandleMemento(buff);
        return buff.toString();
    }

    protected void getHandleMemento(StringBuffer buff) {
        ((JavaElement)this.getParent()).getHandleMemento(buff);
        buff.append(this.getHandleMementoDelimiter());
        this.escapeMementoName(buff, this.getElementName());
    }

    protected abstract char getHandleMementoDelimiter();

    public IJavaModel getJavaModel() {
        IJavaElement current = this;
        do {
            if (!(current instanceof IJavaModel)) continue;
            return (IJavaModel)current;
        } while ((current = current.getParent()) != null);
        return null;
    }

    public IJavaProject getJavaProject() {
        IJavaElement current = this;
        do {
            if (!(current instanceof IJavaProject)) continue;
            return (IJavaProject)current;
        } while ((current = current.getParent()) != null);
        return null;
    }

    public IOpenable getOpenable() {
        return this.getOpenableParent();
    }

    public IOpenable getOpenableParent() {
        return (IOpenable)((Object)this.parent);
    }

    public IJavaElement getParent() {
        return this.parent;
    }

    public IJavaElement getPrimaryElement() {
        return this.getPrimaryElement(true);
    }

    public IJavaElement getPrimaryElement(boolean checkOwner) {
        return this;
    }

    public IResource getResource() {
        return this.resource();
    }

    public abstract IResource resource();

    protected IJavaElement getSourceElementAt(int position) throws JavaModelException {
        if (this instanceof ISourceReference) {
            IJavaElement[] children = this.getChildren();
            int i = children.length - 1;
            while (i >= 0) {
                IJavaElement aChild = children[i];
                if (aChild instanceof SourceRefElement) {
                    SourceRefElement child = (SourceRefElement)children[i];
                    ISourceRange range = child.getSourceRange();
                    int start = range.getOffset();
                    int end = start + range.getLength();
                    if (start <= position && position <= end) {
                        if (child instanceof IField) {
                            int declarationStart = start;
                            SourceRefElement candidate = null;
                            do {
                                if (position > (range = ((IField)((Object)child)).getNameRange()).getOffset() + range.getLength()) {
                                    return candidate == null ? child.getSourceElementAt(position) : candidate.getSourceElementAt(position);
                                }
                                candidate = child;
                                SourceRefElement sourceRefElement = child = --i >= 0 ? (SourceRefElement)children[i] : null;
                            } while (child != null && child.getSourceRange().getOffset() == declarationStart);
                            return candidate.getSourceElementAt(position);
                        }
                        if (child instanceof IParent) {
                            return child.getSourceElementAt(position);
                        }
                        return child;
                    }
                }
                --i;
            }
        } else {
            Assert.isTrue((boolean)false);
        }
        return this;
    }

    public SourceMapper getSourceMapper() {
        return ((JavaElement)this.getParent()).getSourceMapper();
    }

    public ISchedulingRule getSchedulingRule() {
        IResource resource = this.resource();
        if (resource == null) {
            class NoResourceSchedulingRule
            implements ISchedulingRule {
                public IPath path;
                final /* synthetic */ JavaElement this$0;

                public NoResourceSchedulingRule(JavaElement javaElement, IPath path) {
                    this.this$0 = javaElement;
                    this.path = path;
                }

                public boolean contains(ISchedulingRule rule) {
                    if (rule instanceof NoResourceSchedulingRule) {
                        return this.path.isPrefixOf(((NoResourceSchedulingRule)rule).path);
                    }
                    return false;
                }

                public boolean isConflicting(ISchedulingRule rule) {
                    if (rule instanceof NoResourceSchedulingRule) {
                        IPath otherPath = ((NoResourceSchedulingRule)rule).path;
                        return this.path.isPrefixOf(otherPath) || otherPath.isPrefixOf(this.path);
                    }
                    return false;
                }
            }
            return new NoResourceSchedulingRule(this, this.getPath());
        }
        return resource;
    }

    public boolean hasChildren() throws JavaModelException {
        Object elementInfo = JavaModelManager.getJavaModelManager().getInfo(this);
        if (elementInfo instanceof JavaElementInfo) {
            return ((JavaElementInfo)elementInfo).getChildren().length > 0;
        }
        return true;
    }

    public int hashCode() {
        if (this.parent == null) {
            return super.hashCode();
        }
        return Util.combineHashCodes(this.getElementName().hashCode(), this.parent.hashCode());
    }

    public boolean isAncestorOf(IJavaElement e) {
        IJavaElement parentElement = e.getParent();
        while (parentElement != null && !parentElement.equals(this)) {
            parentElement = parentElement.getParent();
        }
        return parentElement != null;
    }

    public boolean isReadOnly() {
        return false;
    }

    public JavaModelException newNotPresentException() {
        return new JavaModelException(this.newDoesNotExistStatus());
    }

    protected JavaModelStatus newDoesNotExistStatus() {
        return new JavaModelStatus(969, this);
    }

    public JavaModelException newJavaModelException(IStatus status) {
        if (status instanceof IJavaModelStatus) {
            return new JavaModelException((IJavaModelStatus)status);
        }
        return new JavaModelException(new JavaModelStatus(status.getSeverity(), status.getCode(), status.getMessage()));
    }

    protected Object openWhenClosed(Object info, IProgressMonitor monitor) throws JavaModelException {
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        boolean hadTemporaryCache = manager.hasTemporaryCache();
        try {
            HashMap newElements = manager.getTemporaryCache();
            this.generateInfos(info, newElements, monitor);
            if (info == null) {
                info = newElements.get(this);
            }
            if (info == null) {
                Openable openable = (Openable)this.getOpenable();
                if (newElements.containsKey(openable)) {
                    openable.closeBuffer();
                }
                throw this.newNotPresentException();
            }
            if (!hadTemporaryCache) {
                manager.putInfos(this, newElements);
            }
        }
        finally {
            if (!hadTemporaryCache) {
                manager.resetTemporaryCache();
            }
        }
        return info;
    }

    public String readableName() {
        return this.getElementName();
    }

    public JavaElement resolved(Binding binding) {
        return this;
    }

    public JavaElement unresolved() {
        return this;
    }

    protected String tabString(int tab) {
        StringBuffer buffer = new StringBuffer();
        int i = tab;
        while (i > 0) {
            buffer.append("  ");
            --i;
        }
        return buffer.toString();
    }

    public String toDebugString() {
        StringBuffer buffer = new StringBuffer();
        this.toStringInfo(0, buffer, NO_INFO, true);
        return buffer.toString();
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        this.toString(0, buffer);
        return buffer.toString();
    }

    protected void toString(int tab, StringBuffer buffer) {
        Object info = this.toStringInfo(tab, buffer);
        if (tab == 0) {
            this.toStringAncestors(buffer);
        }
        this.toStringChildren(tab, buffer, info);
    }

    public String toStringWithAncestors() {
        return this.toStringWithAncestors(true);
    }

    public String toStringWithAncestors(boolean showResolvedInfo) {
        StringBuffer buffer = new StringBuffer();
        this.toStringInfo(0, buffer, NO_INFO, showResolvedInfo);
        this.toStringAncestors(buffer);
        return buffer.toString();
    }

    protected void toStringAncestors(StringBuffer buffer) {
        JavaElement parentElement = (JavaElement)this.getParent();
        if (parentElement != null && parentElement.getParent() != null) {
            buffer.append(" [in ");
            parentElement.toStringInfo(0, buffer, NO_INFO, false);
            parentElement.toStringAncestors(buffer);
            buffer.append("]");
        }
    }

    protected void toStringChildren(int tab, StringBuffer buffer, Object info) {
        if (info == null || !(info instanceof JavaElementInfo)) {
            return;
        }
        IJavaElement[] children = ((JavaElementInfo)info).getChildren();
        int i = 0;
        while (i < children.length) {
            buffer.append("\n");
            ((JavaElement)children[i]).toString(tab + 1, buffer);
            ++i;
        }
    }

    public Object toStringInfo(int tab, StringBuffer buffer) {
        Object info = JavaModelManager.getJavaModelManager().peekAtInfo(this);
        this.toStringInfo(tab, buffer, info, true);
        return info;
    }

    protected void toStringInfo(int tab, StringBuffer buffer, Object info, boolean showResolvedInfo) {
        buffer.append(this.tabString(tab));
        this.toStringName(buffer);
        if (info == null) {
            buffer.append(" (not open)");
        }
    }

    protected void toStringName(StringBuffer buffer) {
        buffer.append(this.getElementName());
    }

    protected URL getJavadocBaseLocation() throws JavaModelException {
        IPackageFragmentRoot root = (IPackageFragmentRoot)this.getAncestor(3);
        if (root == null) {
            return null;
        }
        if (root.getKind() == 2) {
            IClasspathEntry entry = null;
            try {
                entry = root.getResolvedClasspathEntry();
                URL url = JavaElement.getLibraryJavadocLocation(entry);
                if (url != null) {
                    return url;
                }
            }
            catch (JavaModelException javaModelException) {}
            entry = root.getRawClasspathEntry();
            switch (entry.getEntryKind()) {
                case 1: 
                case 4: {
                    return JavaElement.getLibraryJavadocLocation(entry);
                }
            }
            return null;
        }
        return null;
    }

    protected static URL getLibraryJavadocLocation(IClasspathEntry entry) throws JavaModelException {
        switch (entry.getEntryKind()) {
            case 1: 
            case 4: {
                break;
            }
            default: {
                throw new IllegalArgumentException("Entry must be of kind CPE_LIBRARY or CPE_VARIABLE");
            }
        }
        IClasspathAttribute[] extraAttributes = entry.getExtraAttributes();
        int i = 0;
        while (i < extraAttributes.length) {
            IClasspathAttribute attrib = extraAttributes[i];
            if ("javadoc_location".equals(attrib.getName())) {
                String value = attrib.getValue();
                try {
                    return new URL(value);
                }
                catch (MalformedURLException malformedURLException) {
                    throw new JavaModelException(new JavaModelStatus(1008, value));
                }
            }
            ++i;
        }
        return null;
    }

    public String getAttachedJavadoc(IProgressMonitor monitor) throws JavaModelException {
        return null;
    }

    int getIndexOf(byte[] array, byte[] toBeFound, int start) {
        if (array == null || toBeFound == null) {
            return -1;
        }
        int arrayLength = array.length;
        int toBeFoundLength = toBeFound.length;
        if (arrayLength < toBeFoundLength) {
            return -1;
        }
        int i = start;
        int max = arrayLength - toBeFoundLength + 1;
        while (i < max) {
            block6: {
                if (array[i] == toBeFound[0]) {
                    int j = 1;
                    while (j < toBeFoundLength) {
                        if (array[i + j] == toBeFound[j]) {
                            ++j;
                            continue;
                        }
                        break block6;
                    }
                    return i;
                }
            }
            ++i;
        }
        return -1;
    }

    /*
     * Exception decompiling
     */
    protected String getURLContents(String docUrlValue) throws JavaModelException {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Started 2 blocks at once
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.getStartingBlocks(Op04StructuredStatement.java:412)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:487)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }
}

