/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.jdom;

import java.util.Stack;
import org.eclipse.jdt.core.jdom.IDOMCompilationUnit;
import org.eclipse.jdt.core.jdom.IDOMNode;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.core.jdom.CompilationUnit;
import org.eclipse.jdt.internal.core.jdom.DOMCompilationUnit;
import org.eclipse.jdt.internal.core.jdom.DOMNode;
import org.eclipse.jdt.internal.core.jdom.DOMType;
import org.eclipse.jdt.internal.core.jdom.ILineStartFinder;
import org.eclipse.jdt.internal.core.util.ReferenceInfoAdapter;

public class AbstractDOMBuilder
extends ReferenceInfoAdapter
implements ILineStartFinder {
    protected boolean fAbort;
    protected boolean fBuildingCU = false;
    protected boolean fBuildingType = false;
    protected char[] fDocument = null;
    protected int[] fLineStartPositions = new int[1];
    protected Stack fStack = null;
    protected int fFieldCount;
    protected DOMNode fNode;

    public void acceptLineSeparatorPositions(int[] positions) {
        int length;
        if (positions != null && (length = positions.length) > 0) {
            this.fLineStartPositions = new int[length + 1];
            this.fLineStartPositions[0] = 0;
            int documentLength = this.fDocument.length;
            int i = 0;
            while (i < length) {
                int iPlusOne = i + 1;
                int positionPlusOne = positions[i] + 1;
                this.fLineStartPositions[iPlusOne] = positionPlusOne < documentLength ? (iPlusOne < length ? positionPlusOne : (this.fDocument[positionPlusOne] == '\n' ? positionPlusOne + 1 : positionPlusOne)) : positionPlusOne;
                ++i;
            }
        }
    }

    protected void addChild(IDOMNode child) {
        if (this.fStack.size() > 0) {
            DOMNode parent = (DOMNode)this.fStack.peek();
            if (this.fBuildingCU || this.fBuildingType) {
                parent.basicAddChild(child);
            }
        }
    }

    public IDOMCompilationUnit createCompilationUnit(char[] contents, char[] name) {
        return this.createCompilationUnit(new CompilationUnit(contents, name));
    }

    public IDOMCompilationUnit createCompilationUnit(ICompilationUnit compilationUnit) {
        if (this.fAbort) {
            return null;
        }
        this.fNode.normalize(this);
        return (IDOMCompilationUnit)((Object)this.fNode);
    }

    public void enterCompilationUnit() {
        if (this.fBuildingCU) {
            int[] nArray = new int[2];
            nArray[1] = this.fDocument.length - 1;
            DOMCompilationUnit cu = new DOMCompilationUnit(this.fDocument, nArray);
            this.fStack.push(cu);
        }
    }

    public void exitCompilationUnit(int declarationEnd) {
        DOMCompilationUnit cu = (DOMCompilationUnit)this.fStack.pop();
        cu.setSourceRangeEnd(declarationEnd);
        this.fNode = cu;
    }

    protected void exitType(int bodyEnd, int declarationEnd) {
        DOMType type = (DOMType)this.fStack.pop();
        type.setSourceRangeEnd(declarationEnd);
        type.setCloseBodyRangeStart(bodyEnd);
        type.setCloseBodyRangeEnd(bodyEnd);
        this.fNode = type;
    }

    public int getLineStart(int position) {
        int lineSeparatorCount = this.fLineStartPositions.length;
        int i = lineSeparatorCount - 1;
        while (i >= 0) {
            if (this.fLineStartPositions[i] <= position) {
                return this.fLineStartPositions[i];
            }
            --i;
        }
        return 0;
    }

    protected void initializeBuild(char[] sourceCode, boolean buildingCompilationUnit, boolean buildingType) {
        this.fBuildingCU = buildingCompilationUnit;
        this.fBuildingType = buildingType;
        this.fStack = new Stack();
        this.fDocument = sourceCode;
        this.fFieldCount = 0;
        this.fAbort = false;
    }
}

