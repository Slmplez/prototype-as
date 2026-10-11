/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.text.edits.TextEdit
 */
package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTMatcher;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.Comment;
import org.eclipse.jdt.core.dom.DefaultCommentMapper;
import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.Message;
import org.eclipse.jdt.core.dom.PackageDeclaration;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jface.text.IDocument;
import org.eclipse.text.edits.TextEdit;

public class CompilationUnit
extends ASTNode {
    private static final Message[] EMPTY_MESSAGES;
    private static final IProblem[] EMPTY_PROBLEMS;
    public static final ChildListPropertyDescriptor IMPORTS_PROPERTY;
    public static final ChildPropertyDescriptor PACKAGE_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    public static final ChildListPropertyDescriptor TYPES_PROPERTY;
    private DefaultCommentMapper commentMapper = null;
    private ITypeRoot typeRoot = null;
    private ASTNode.NodeList imports = new ASTNode.NodeList(IMPORTS_PROPERTY);
    private int[] lineEndTable = Util.EMPTY_INT_ARRAY;
    private Message[] messages;
    private List optionalCommentList = null;
    Comment[] optionalCommentTable = null;
    private PackageDeclaration optionalPackageDeclaration = null;
    private IProblem[] problems = EMPTY_PROBLEMS;
    private Object statementsRecoveryData;
    private ASTNode.NodeList types = new ASTNode.NodeList(TYPES_PROPERTY);
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3;
        EMPTY_MESSAGES = new Message[0];
        EMPTY_PROBLEMS = new IProblem[0];
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.CompilationUnit");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz3 = class$1) == null) {
            try {
                clazz3 = class$1 = Class.forName("org.eclipse.jdt.core.dom.ImportDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IMPORTS_PROPERTY = new ChildListPropertyDescriptor(clazz4, "imports", clazz3, false);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.CompilationUnit");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz2 = class$2) == null) {
            try {
                clazz2 = class$2 = Class.forName("org.eclipse.jdt.core.dom.PackageDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        PACKAGE_PROPERTY = new ChildPropertyDescriptor(clazz5, "package", clazz2, false, false);
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.CompilationUnit");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$3) == null) {
            try {
                clazz = class$3 = Class.forName("org.eclipse.jdt.core.dom.AbstractTypeDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TYPES_PROPERTY = new ChildListPropertyDescriptor(clazz6, "types", clazz, true);
        ArrayList properyList = new ArrayList(4);
        Class<?> clazz7 = class$0;
        if (clazz7 == null) {
            try {
                clazz7 = class$0 = Class.forName("org.eclipse.jdt.core.dom.CompilationUnit");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        CompilationUnit.createPropertyList(clazz7, properyList);
        CompilationUnit.addProperty(PACKAGE_PROPERTY, properyList);
        CompilationUnit.addProperty(IMPORTS_PROPERTY, properyList);
        CompilationUnit.addProperty(TYPES_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS = CompilationUnit.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    CompilationUnit(AST ast) {
        super(ast);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getPackage());
            this.acceptChildren(visitor, this.imports);
            this.acceptChildren(visitor, this.types);
        }
        visitor.endVisit(this);
    }

    ASTNode clone0(AST target) {
        CompilationUnit result = new CompilationUnit(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setPackage((PackageDeclaration)ASTNode.copySubtree(target, this.getPackage()));
        result.imports().addAll(ASTNode.copySubtrees(target, this.imports()));
        result.types().addAll(ASTNode.copySubtrees(target, this.types()));
        return result;
    }

    public int getColumnNumber(int position) {
        int currentLineEnd;
        if (this.lineEndTable == null) {
            return -2;
        }
        int line = this.getLineNumber(position);
        if (line == -1) {
            return -1;
        }
        if (line == 1) {
            if (position >= this.getStartPosition() + this.getLength()) {
                return -1;
            }
            return position;
        }
        int length = this.lineEndTable.length;
        int previousLineOffset = this.lineEndTable[line - 2];
        int offsetForLine = previousLineOffset + 1;
        int n = currentLineEnd = line == length + 1 ? this.getStartPosition() + this.getLength() - 1 : this.lineEndTable[line - 1];
        if (offsetForLine > currentLineEnd) {
            return -1;
        }
        return position - offsetForLine;
    }

    public ASTNode findDeclaringNode(IBinding binding) {
        return this.ast.getBindingResolver().findDeclaringNode(binding);
    }

    public ASTNode findDeclaringNode(String key) {
        return this.ast.getBindingResolver().findDeclaringNode(key);
    }

    public List getCommentList() {
        return this.optionalCommentList;
    }

    DefaultCommentMapper getCommentMapper() {
        return this.commentMapper;
    }

    public int getExtendedLength(ASTNode node) {
        if (node == null) {
            throw new IllegalArgumentException();
        }
        if (this.commentMapper == null || node.getAST() != this.getAST()) {
            return node.getLength();
        }
        return this.commentMapper.getExtendedLength(node);
    }

    public int getExtendedStartPosition(ASTNode node) {
        if (node == null) {
            throw new IllegalArgumentException();
        }
        if (this.commentMapper == null || node.getAST() != this.getAST()) {
            return node.getStartPosition();
        }
        return this.commentMapper.getExtendedStartPosition(node);
    }

    public IJavaElement getJavaElement() {
        return this.typeRoot;
    }

    public Message[] getMessages() {
        if (this.messages == null) {
            int problemLength = this.problems.length;
            if (problemLength == 0) {
                this.messages = EMPTY_MESSAGES;
            } else {
                this.messages = new Message[problemLength];
                int i = 0;
                while (i < problemLength) {
                    IProblem problem = this.problems[i];
                    int start = problem.getSourceStart();
                    int end = problem.getSourceEnd();
                    this.messages[i] = new Message(problem.getMessage(), start, end - start + 1);
                    ++i;
                }
            }
        }
        return this.messages;
    }

    final int getNodeType0() {
        return 15;
    }

    public PackageDeclaration getPackage() {
        return this.optionalPackageDeclaration;
    }

    public int getPosition(int line, int column) {
        int currentLineEnd;
        if (this.lineEndTable == null) {
            return -2;
        }
        if (line < 1 || column < 0) {
            return -1;
        }
        int length = this.lineEndTable.length;
        if (length == 0) {
            if (line != 1) {
                return -1;
            }
            return column >= this.getStartPosition() + this.getLength() ? -1 : column;
        }
        if (line == 1) {
            int endOfLine = this.lineEndTable[0];
            return column > endOfLine ? -1 : column;
        }
        if (line > length + 1) {
            return -1;
        }
        int previousLineOffset = this.lineEndTable[line - 2];
        int offsetForLine = previousLineOffset + 1;
        int n = currentLineEnd = line == length + 1 ? this.getStartPosition() + this.getLength() - 1 : this.lineEndTable[line - 1];
        if (offsetForLine + column > currentLineEnd) {
            return -1;
        }
        return offsetForLine + column;
    }

    public IProblem[] getProblems() {
        return this.problems;
    }

    public Object getStatementsRecoveryData() {
        return this.statementsRecoveryData;
    }

    public ITypeRoot getTypeRoot() {
        return this.typeRoot;
    }

    public List imports() {
        return this.imports;
    }

    public int firstLeadingCommentIndex(ASTNode node) {
        if (node == null) {
            throw new IllegalArgumentException();
        }
        if (this.commentMapper == null || node.getAST() != this.getAST()) {
            return -1;
        }
        return this.commentMapper.firstLeadingCommentIndex(node);
    }

    public int lastTrailingCommentIndex(ASTNode node) {
        if (node == null) {
            throw new IllegalArgumentException();
        }
        if (this.commentMapper == null || node.getAST() != this.getAST()) {
            return -1;
        }
        return this.commentMapper.lastTrailingCommentIndex(node);
    }

    void initCommentMapper(Scanner scanner) {
        this.commentMapper = new DefaultCommentMapper(this.optionalCommentTable);
        this.commentMapper.initialize(this, scanner);
    }

    final List internalGetChildListProperty(ChildListPropertyDescriptor property) {
        if (property == IMPORTS_PROPERTY) {
            return this.imports();
        }
        if (property == TYPES_PROPERTY) {
            return this.types();
        }
        return super.internalGetChildListProperty(property);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == PACKAGE_PROPERTY) {
            if (get) {
                return this.getPackage();
            }
            this.setPackage((PackageDeclaration)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return CompilationUnit.propertyDescriptors(apiLevel);
    }

    public int lineNumber(int position) {
        int lineNumber = this.getLineNumber(position);
        return lineNumber < 1 ? 1 : lineNumber;
    }

    public int getLineNumber(int position) {
        if (this.lineEndTable == null) {
            return -2;
        }
        int length = this.lineEndTable.length;
        if (length == 0) {
            if (position >= this.getStartPosition() + this.getLength()) {
                return -1;
            }
            return 1;
        }
        int low = 0;
        if (position < 0) {
            return -1;
        }
        if (position <= this.lineEndTable[low]) {
            return 1;
        }
        int hi = length - 1;
        if (position > this.lineEndTable[hi]) {
            if (position >= this.getStartPosition() + this.getLength()) {
                return -1;
            }
            return length + 1;
        }
        while (low + 1 != hi) {
            int mid = low + (hi - low) / 2;
            if (position <= this.lineEndTable[mid]) {
                hi = mid;
                continue;
            }
            low = mid;
        }
        return low + 2;
    }

    int memSize() {
        int size = 72;
        if (this.lineEndTable != null) {
            size += 12 + 4 * this.lineEndTable.length;
        }
        if (this.optionalCommentTable != null) {
            size += 12 + 4 * this.optionalCommentTable.length;
        }
        return size;
    }

    public void recordModifications() {
        this.getAST().recordModifications(this);
    }

    public TextEdit rewrite(IDocument document, Map options) {
        return this.getAST().rewrite(document, options);
    }

    void setCommentTable(Comment[] commentTable) {
        if (commentTable == null) {
            this.optionalCommentList = null;
            this.optionalCommentTable = null;
        } else {
            int nextAvailablePosition = 0;
            int i = 0;
            while (i < commentTable.length) {
                Comment comment = commentTable[i];
                if (comment == null) {
                    throw new IllegalArgumentException();
                }
                int start = comment.getStartPosition();
                int length = comment.getLength();
                if (start < 0 || length < 0 || start < nextAvailablePosition) {
                    throw new IllegalArgumentException();
                }
                nextAvailablePosition = comment.getStartPosition() + comment.getLength();
                ++i;
            }
            this.optionalCommentTable = commentTable;
            List<Comment> commentList = Arrays.asList(commentTable);
            this.optionalCommentList = Collections.unmodifiableList(commentList);
        }
    }

    void setTypeRoot(ITypeRoot typeRoot) {
        this.typeRoot = typeRoot;
    }

    void setLineEndTable(int[] lineEndTable) {
        if (lineEndTable == null) {
            throw new NullPointerException();
        }
        this.checkModifiable();
        this.lineEndTable = lineEndTable;
    }

    public void setPackage(PackageDeclaration pkgDecl) {
        PackageDeclaration oldChild = this.optionalPackageDeclaration;
        this.preReplaceChild(oldChild, pkgDecl, PACKAGE_PROPERTY);
        this.optionalPackageDeclaration = pkgDecl;
        this.postReplaceChild(oldChild, pkgDecl, PACKAGE_PROPERTY);
    }

    void setProblems(IProblem[] problems) {
        if (problems == null) {
            throw new IllegalArgumentException();
        }
        this.problems = problems;
    }

    void setStatementsRecoveryData(Object data) {
        this.statementsRecoveryData = data;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    int treeSize() {
        int size = this.memSize();
        if (this.optionalPackageDeclaration != null) {
            size += this.getPackage().treeSize();
        }
        size += this.imports.listSize();
        size += this.types.listSize();
        if (this.optionalCommentList != null) {
            int i = 0;
            while (i < this.optionalCommentList.size()) {
                Comment comment = (Comment)this.optionalCommentList.get(i);
                if (comment != null && comment.getParent() == null) {
                    size += comment.treeSize();
                }
                ++i;
            }
        }
        return size;
    }

    public List types() {
        return this.types;
    }
}

