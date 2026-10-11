/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.jdom;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.jdom.IDOMInitializer;
import org.eclipse.jdt.core.jdom.IDOMNode;
import org.eclipse.jdt.internal.core.jdom.DOMMember;
import org.eclipse.jdt.internal.core.jdom.DOMNode;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

class DOMInitializer
extends DOMMember
implements IDOMInitializer {
    protected String fBody;
    protected int[] fBodyRange;

    DOMInitializer() {
    }

    DOMInitializer(char[] document, int[] sourceRange, int[] commentRange, int flags, int[] modifierRange, int bodyStartPosition) {
        super(document, sourceRange, null, new int[]{-1, -1}, commentRange, flags, modifierRange);
        this.fBodyRange = new int[2];
        this.fBodyRange[0] = bodyStartPosition;
        this.fBodyRange[1] = sourceRange[1];
        this.setHasBody(true);
        this.setMask(2048, true);
    }

    DOMInitializer(char[] document, int[] sourceRange, int flags) {
        this(document, sourceRange, new int[]{-1, -1}, flags, new int[]{-1, -1}, -1);
        this.setMask(2048, false);
    }

    protected void appendMemberBodyContents(CharArrayBuffer buffer) {
        if (this.hasBody()) {
            buffer.append(this.getBody()).append(this.fDocument, this.fBodyRange[1] + 1, this.fSourceRange[1] - this.fBodyRange[1]);
        } else {
            buffer.append("{}").append(Util.getLineSeparator(buffer.toString(), null));
        }
    }

    protected void appendMemberDeclarationContents(CharArrayBuffer buffer) {
    }

    protected void appendSimpleContents(CharArrayBuffer buffer) {
        buffer.append(this.fDocument, this.fSourceRange[0], this.fNameRange[0] - this.fSourceRange[0]);
        buffer.append(this.fName);
        buffer.append(this.fDocument, this.fNameRange[1] + 1, this.fSourceRange[1] - this.fNameRange[1]);
    }

    public String getBody() {
        this.becomeDetailed();
        if (this.hasBody()) {
            if (this.fBody != null) {
                return this.fBody;
            }
            return new String(this.fDocument, this.fBodyRange[0], this.fBodyRange[1] + 1 - this.fBodyRange[0]);
        }
        return null;
    }

    protected DOMNode getDetailedNode() {
        return (DOMNode)((Object)this.getFactory().createInitializer(this.getContents()));
    }

    public IJavaElement getJavaElement(IJavaElement parent) throws IllegalArgumentException {
        if (parent.getElementType() == 7) {
            int count = 1;
            IDOMNode previousNode = this.getPreviousNode();
            while (previousNode != null) {
                if (previousNode instanceof DOMInitializer) {
                    ++count;
                }
                previousNode = previousNode.getPreviousNode();
            }
            return ((IType)parent).getInitializer(count);
        }
        throw new IllegalArgumentException(Messages.element_illegalParent);
    }

    protected int getMemberDeclarationStartPosition() {
        return this.fBodyRange[0];
    }

    public int getNodeType() {
        return 7;
    }

    public boolean isSignatureEqual(IDOMNode node) {
        return false;
    }

    protected DOMNode newDOMNode() {
        return new DOMInitializer();
    }

    protected void offset(int offset) {
        super.offset(offset);
        this.offsetRange(this.fBodyRange, offset);
    }

    public void setBody(String body) {
        this.becomeDetailed();
        this.fBody = body;
        this.setHasBody(body != null);
        this.fragment();
    }

    public void setName(String name) {
    }

    protected void shareContents(DOMNode node) {
        super.shareContents(node);
        DOMInitializer init = (DOMInitializer)node;
        this.fBody = init.fBody;
        this.fBodyRange = this.rangeCopy(init.fBodyRange);
    }

    public String toString() {
        return "INITIALIZER";
    }
}

