/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IAnnotatable;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MarkerAnnotation;
import org.eclipse.jdt.internal.compiler.ast.NormalAnnotation;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.SingleMemberAnnotation;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.util.HashtableOfIntValues;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.matching.MatchingNodeSet;

class MemberDeclarationVisitor
extends ASTVisitor {
    private final MatchLocator locator;
    private final IJavaElement enclosingElement;
    private final MatchingNodeSet nodeSet;
    private final ASTNode[] matchingNodes;
    private final ASTNode matchingNode;
    HashtableOfIntValues occurrencesCounts = new HashtableOfIntValues();
    int nodesCount = 0;
    private Annotation annotation;
    private LocalDeclaration localDeclaration;
    IJavaElement localElement;
    IJavaElement[] localElements;
    IJavaElement[] otherElements;
    IJavaElement[][] allOtherElements;
    int ptr = -1;
    int[] ptrs;

    public MemberDeclarationVisitor(IJavaElement element, ASTNode[] nodes, MatchingNodeSet set, MatchLocator locator) {
        this.enclosingElement = element;
        this.nodeSet = set;
        this.locator = locator;
        if (nodes == null) {
            this.matchingNode = null;
            this.matchingNodes = null;
        } else {
            this.nodesCount = nodes.length;
            if (nodes.length == 1) {
                this.matchingNode = nodes[0];
                this.matchingNodes = null;
            } else {
                this.matchingNode = null;
                this.matchingNodes = nodes;
                this.localElements = new IJavaElement[this.nodesCount];
                this.ptrs = new int[this.nodesCount];
                this.allOtherElements = new IJavaElement[this.nodesCount][];
            }
        }
    }

    public void endVisit(Argument argument, BlockScope scope) {
        this.localDeclaration = null;
    }

    public void endVisit(LocalDeclaration declaration, BlockScope scope) {
        this.localDeclaration = null;
    }

    public void endVisit(MarkerAnnotation markerAnnotation, BlockScope unused) {
        this.annotation = null;
    }

    public void endVisit(NormalAnnotation normalAnnotation, BlockScope unused) {
        this.annotation = null;
    }

    public void endVisit(SingleMemberAnnotation singleMemberAnnotation, BlockScope unused) {
        this.annotation = null;
    }

    IJavaElement getLocalElement(int idx) {
        if (this.nodesCount == 1) {
            return this.localElement;
        }
        if (this.localElements != null) {
            return this.localElements[idx];
        }
        return null;
    }

    IJavaElement[] getOtherElements(int idx) {
        int length;
        IJavaElement[] elements;
        if (this.nodesCount == 1) {
            int length2;
            if (this.otherElements != null && this.ptr < (length2 = this.otherElements.length) - 1) {
                this.otherElements = new IJavaElement[this.ptr + 1];
                System.arraycopy(this.otherElements, 0, this.otherElements, 0, this.ptr + 1);
            }
            return this.otherElements;
        }
        IJavaElement[] iJavaElementArray = elements = this.allOtherElements == null ? null : this.allOtherElements[idx];
        if (elements != null && this.ptrs[idx] < (length = elements.length) - 1) {
            IJavaElement[] iJavaElementArray2 = elements;
            this.allOtherElements[idx] = new IJavaElement[this.ptrs[idx] + 1];
            elements = this.allOtherElements[idx];
            System.arraycopy(iJavaElementArray2, 0, this.allOtherElements[idx], 0, this.ptrs[idx] + 1);
        }
        return elements;
    }

    private int matchNode(ASTNode reference) {
        if (this.matchingNode != null) {
            if (this.matchingNode == reference) {
                return 0;
            }
        } else {
            int length = this.matchingNodes.length;
            int i = 0;
            while (i < length) {
                if (this.matchingNodes[i] == reference) {
                    return i;
                }
                ++i;
            }
        }
        return -1;
    }

    private void storeHandle(int idx) {
        if (this.localDeclaration == null) {
            return;
        }
        IJavaElement handle = this.locator.createHandle(this.localDeclaration, this.enclosingElement);
        if (this.nodesCount == 1) {
            if (this.localElement == null) {
                if (this.annotation == null) {
                    this.localElement = handle;
                } else {
                    IJavaElement annotHandle = this.locator.createHandle(this.annotation, (IAnnotatable)((Object)handle));
                    if (annotHandle == null) {
                        annotHandle = this.locator.createHandle(this.annotation, (IAnnotatable)((Object)this.enclosingElement));
                    }
                    this.localElement = annotHandle == null ? handle : annotHandle;
                }
            } else {
                if (++this.ptr == 0) {
                    this.otherElements = new IJavaElement[10];
                } else {
                    int length = this.otherElements.length;
                    if (this.ptr == length) {
                        this.otherElements = new IJavaElement[length + 10];
                        System.arraycopy(this.otherElements, 0, this.otherElements, 0, length);
                    }
                }
                if (this.annotation == null) {
                    this.otherElements[this.ptr] = handle;
                } else {
                    IJavaElement annotHandle = this.locator.createHandle(this.annotation, (IAnnotatable)((Object)handle));
                    if (annotHandle == null) {
                        annotHandle = this.locator.createHandle(this.annotation, (IAnnotatable)((Object)this.enclosingElement));
                    }
                    this.otherElements[this.ptr] = annotHandle == null ? handle : annotHandle;
                }
            }
        } else if (this.localElements[idx] == null) {
            if (this.annotation == null) {
                this.localElements[idx] = handle;
            } else {
                IJavaElement annotHandle = this.locator.createHandle(this.annotation, (IAnnotatable)((Object)handle));
                if (annotHandle == null) {
                    annotHandle = this.locator.createHandle(this.annotation, (IAnnotatable)((Object)this.enclosingElement));
                }
                this.localElements[idx] = annotHandle == null ? handle : annotHandle;
            }
            this.ptrs[idx] = -1;
        } else {
            int n = idx;
            this.ptrs[n] = this.ptrs[n] + 1;
            int oPtr = this.ptrs[n];
            if (oPtr == 0) {
                this.allOtherElements[idx] = new IJavaElement[10];
            } else {
                int length = this.allOtherElements[idx].length;
                if (oPtr == length) {
                    this.allOtherElements[idx] = new IJavaElement[length + 10];
                    System.arraycopy(this.allOtherElements[idx], 0, this.allOtherElements[idx], 0, length);
                }
            }
            if (this.annotation == null) {
                this.allOtherElements[idx][oPtr] = handle;
            } else {
                IJavaElement annotHandle = this.locator.createHandle(this.annotation, (IAnnotatable)((Object)handle));
                if (annotHandle == null) {
                    annotHandle = this.locator.createHandle(this.annotation, (IAnnotatable)((Object)this.enclosingElement));
                }
                this.allOtherElements[idx][oPtr] = annotHandle == null ? handle : annotHandle;
            }
        }
    }

    public boolean visit(Argument argument, BlockScope scope) {
        this.localDeclaration = argument;
        return true;
    }

    public boolean visit(LocalDeclaration declaration, BlockScope scope) {
        this.localDeclaration = declaration;
        return true;
    }

    public boolean visit(MarkerAnnotation markerAnnotation, BlockScope unused) {
        this.annotation = markerAnnotation;
        return true;
    }

    public boolean visit(NormalAnnotation normalAnnotation, BlockScope unused) {
        this.annotation = normalAnnotation;
        return true;
    }

    public boolean visit(QualifiedNameReference nameReference, BlockScope unused) {
        int idx;
        if (this.nodesCount > 0 && (idx = this.matchNode(nameReference)) >= 0) {
            this.storeHandle(idx);
        }
        return false;
    }

    public boolean visit(QualifiedTypeReference typeReference, BlockScope unused) {
        int idx;
        if (this.nodesCount > 0 && (idx = this.matchNode(typeReference)) >= 0) {
            this.storeHandle(idx);
        }
        return false;
    }

    public boolean visit(SingleMemberAnnotation singleMemberAnnotation, BlockScope unused) {
        this.annotation = singleMemberAnnotation;
        return true;
    }

    public boolean visit(SingleNameReference nameReference, BlockScope unused) {
        int idx;
        if (this.nodesCount > 0 && (idx = this.matchNode(nameReference)) >= 0) {
            this.storeHandle(idx);
        }
        return false;
    }

    public boolean visit(SingleTypeReference typeReference, BlockScope unused) {
        int idx;
        if (this.nodesCount > 0 && (idx = this.matchNode(typeReference)) >= 0) {
            this.storeHandle(idx);
        }
        return false;
    }

    public boolean visit(TypeDeclaration typeDeclaration, BlockScope unused) {
        try {
            char[] simpleName = (typeDeclaration.bits & 0x200) != 0 ? CharOperation.NO_CHAR : typeDeclaration.name;
            int occurrenceCount = this.occurrencesCounts.get(simpleName);
            occurrenceCount = occurrenceCount == Integer.MIN_VALUE ? 1 : ++occurrenceCount;
            this.occurrencesCounts.put(simpleName, occurrenceCount);
            if ((typeDeclaration.bits & 0x200) != 0) {
                this.locator.reportMatching(typeDeclaration, this.enclosingElement, -1, this.nodeSet, occurrenceCount);
            } else {
                Integer level = (Integer)this.nodeSet.matchingNodes.removeKey(typeDeclaration);
                this.locator.reportMatching(typeDeclaration, this.enclosingElement, level != null ? level : -1, this.nodeSet, occurrenceCount);
            }
            return false;
        }
        catch (CoreException e) {
            throw new MatchLocator.WrappedCoreException(e);
        }
    }
}

