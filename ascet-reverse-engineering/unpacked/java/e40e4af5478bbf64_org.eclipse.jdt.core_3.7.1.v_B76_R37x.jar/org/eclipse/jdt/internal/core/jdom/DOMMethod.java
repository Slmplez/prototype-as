/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.jdom;

import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.jdom.IDOMMethod;
import org.eclipse.jdt.core.jdom.IDOMNode;
import org.eclipse.jdt.internal.core.jdom.DOMMember;
import org.eclipse.jdt.internal.core.jdom.DOMNode;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

class DOMMethod
extends DOMMember
implements IDOMMethod {
    protected String fReturnType;
    protected int[] fReturnTypeRange;
    protected char[] fParameterList;
    protected int[] fParameterRange;
    protected char[] fExceptionList;
    protected int[] fExceptionRange;
    protected String fBody;
    protected int[] fBodyRange;
    protected String[] fParameterNames;
    protected String[] fParameterTypes;
    protected String[] fExceptions;
    protected String[] fTypeParameters = CharOperation.NO_STRINGS;
    protected String fDefaultValue = null;

    DOMMethod() {
    }

    DOMMethod(char[] document, int[] sourceRange, String name, int[] nameRange, int[] commentRange, int flags, int[] modifierRange, boolean isConstructor, String returnType, int[] returnTypeRange, String[] parameterTypes, String[] parameterNames, int[] parameterRange, String[] exceptions, int[] exceptionRange, int[] bodyRange) {
        super(document, sourceRange, name, nameRange, commentRange, flags, modifierRange);
        this.setMask(64, isConstructor);
        this.fReturnType = returnType;
        this.fReturnTypeRange = returnTypeRange;
        this.fParameterTypes = parameterTypes;
        this.fParameterNames = parameterNames;
        this.fParameterRange = parameterRange;
        this.fExceptionRange = exceptionRange;
        this.fExceptions = exceptions;
        this.setHasBody(true);
        this.fBodyRange = bodyRange;
        this.setMask(2048, true);
    }

    DOMMethod(char[] document, int[] sourceRange, String name, int[] nameRange, int flags, boolean isConstructor, String returnType, String[] parameterTypes, String[] parameterNames, String[] exceptions) {
        this(document, sourceRange, name, nameRange, new int[]{-1, -1}, flags, new int[]{-1, -1}, isConstructor, returnType, new int[]{-1, -1}, parameterTypes, parameterNames, new int[]{-1, -1}, exceptions, new int[]{-1, -1}, new int[]{-1, -1});
        this.setMask(2048, false);
    }

    public void addException(String name) throws IllegalArgumentException {
        if (name == null) {
            throw new IllegalArgumentException(Messages.dom_nullExceptionType);
        }
        if (this.fExceptions == null) {
            this.fExceptions = new String[1];
            this.fExceptions[0] = name;
        } else {
            this.fExceptions = this.appendString(this.fExceptions, name);
        }
        this.setExceptions(this.fExceptions);
    }

    public void addParameter(String type, String name) throws IllegalArgumentException {
        if (type == null) {
            throw new IllegalArgumentException(Messages.dom_nullTypeParameter);
        }
        if (name == null) {
            throw new IllegalArgumentException(Messages.dom_nullNameParameter);
        }
        if (this.fParameterNames == null) {
            this.fParameterNames = new String[1];
            this.fParameterNames[0] = name;
        } else {
            this.fParameterNames = this.appendString(this.fParameterNames, name);
        }
        if (this.fParameterTypes == null) {
            this.fParameterTypes = new String[1];
            this.fParameterTypes[0] = type;
        } else {
            this.fParameterTypes = this.appendString(this.fParameterTypes, type);
        }
        this.setParameters(this.fParameterTypes, this.fParameterNames);
    }

    protected void appendMemberBodyContents(CharArrayBuffer buffer) {
        if (this.fBody != null) {
            buffer.append(this.fBody);
        } else {
            buffer.append(this.fDocument, this.fBodyRange[0], this.fBodyRange[1] + 1 - this.fBodyRange[0]);
        }
    }

    protected void appendMemberDeclarationContents(CharArrayBuffer buffer) {
        if (this.isConstructor()) {
            buffer.append(this.getConstructorName()).append(this.fDocument, this.fNameRange[1] + 1, this.fParameterRange[0] - this.fNameRange[1] - 1);
        } else {
            buffer.append(this.getReturnTypeContents());
            if (this.fReturnTypeRange[0] >= 0) {
                buffer.append(this.fDocument, this.fReturnTypeRange[1] + 1, this.fNameRange[0] - this.fReturnTypeRange[1] - 1);
            } else {
                buffer.append(' ');
            }
            buffer.append(this.getNameContents()).append(this.fDocument, this.fNameRange[1] + 1, this.fParameterRange[0] - this.fNameRange[1] - 1);
        }
        if (this.fParameterList != null) {
            buffer.append(this.fParameterList);
        } else {
            buffer.append(this.fDocument, this.fParameterRange[0], this.fParameterRange[1] + 1 - this.fParameterRange[0]);
        }
        int start = this.hasTrailingArrayQualifier() && this.isReturnTypeAltered() ? this.fReturnTypeRange[3] + 1 : this.fParameterRange[1] + 1;
        if (this.fExceptions != null) {
            if (this.fExceptionRange[0] >= 0) {
                buffer.append(this.fDocument, start, this.fExceptionRange[0] - start);
            } else {
                buffer.append(" throws ");
            }
            if (this.fExceptionList != null) {
                buffer.append(this.fExceptionList);
                if (this.fExceptionRange[0] >= 0) {
                    buffer.append(this.fDocument, this.fExceptionRange[1] + 1, this.fBodyRange[0] - this.fExceptionRange[1] - 1);
                } else {
                    buffer.append(this.fDocument, this.fParameterRange[1] + 1, this.fBodyRange[0] - this.fParameterRange[1] - 1);
                }
            } else {
                buffer.append(this.fDocument, this.fExceptionRange[0], this.fBodyRange[0] - this.fExceptionRange[0]);
            }
        } else if (this.fExceptionRange[0] >= 0) {
            buffer.append(this.fDocument, this.fExceptionRange[1] + 1, this.fBodyRange[0] - this.fExceptionRange[1] - 1);
        } else {
            buffer.append(this.fDocument, start, this.fBodyRange[0] - start);
        }
    }

    protected void appendSimpleContents(CharArrayBuffer buffer) {
        buffer.append(this.fDocument, this.fSourceRange[0], this.fNameRange[0] - this.fSourceRange[0]);
        if (this.isConstructor()) {
            buffer.append(this.getConstructorName());
        } else {
            buffer.append(this.fName);
        }
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

    protected String getConstructorName() {
        if (this.isConstructor()) {
            if (this.getParent() != null) {
                return this.getParent().getName();
            }
            return new String(this.getNameContents());
        }
        return null;
    }

    protected DOMNode getDetailedNode() {
        return (DOMNode)((Object)this.getFactory().createMethod(this.getContents()));
    }

    public String[] getExceptions() {
        return this.fExceptions;
    }

    protected char[] generateFlags() {
        char[] flags = Flags.toString(this.getFlags() & 0xFFFFFF7F).toCharArray();
        if (flags.length == 0) {
            return flags;
        }
        return CharOperation.concat(flags, new char[]{' '});
    }

    public IJavaElement getJavaElement(IJavaElement parent) throws IllegalArgumentException {
        if (parent.getElementType() == 7) {
            String[] sigs = null;
            if (this.fParameterTypes != null) {
                sigs = new String[this.fParameterTypes.length];
                int i = 0;
                while (i < this.fParameterTypes.length) {
                    sigs[i] = Signature.createTypeSignature(this.fParameterTypes[i].toCharArray(), false);
                    ++i;
                }
            }
            String name = null;
            name = this.isConstructor() ? this.getConstructorName() : this.getName();
            return ((IType)parent).getMethod(name, sigs);
        }
        throw new IllegalArgumentException(Messages.element_illegalParent);
    }

    protected int getMemberDeclarationStartPosition() {
        if (this.fReturnTypeRange[0] >= 0) {
            return this.fReturnTypeRange[0];
        }
        return this.fNameRange[0];
    }

    public String getName() {
        if (this.isConstructor()) {
            return null;
        }
        return super.getName();
    }

    public int getNodeType() {
        return 6;
    }

    public String[] getParameterNames() {
        return this.fParameterNames;
    }

    public String[] getParameterTypes() {
        return this.fParameterTypes;
    }

    public String getReturnType() {
        if (this.isConstructor()) {
            return null;
        }
        return this.fReturnType;
    }

    protected char[] getReturnTypeContents() {
        if (this.isConstructor()) {
            return null;
        }
        if (this.isReturnTypeAltered()) {
            return this.fReturnType.toCharArray();
        }
        return CharOperation.subarray(this.fDocument, this.fReturnTypeRange[0], this.fReturnTypeRange[1] + 1);
    }

    protected boolean hasTrailingArrayQualifier() {
        return this.fReturnTypeRange.length > 2;
    }

    public boolean isConstructor() {
        return this.getMask(64);
    }

    protected boolean isReturnTypeAltered() {
        return this.getMask(1024);
    }

    public boolean isSignatureEqual(IDOMNode node) {
        boolean ok;
        boolean bl = ok = node.getNodeType() == this.getNodeType();
        if (ok) {
            IDOMMethod method = (IDOMMethod)node;
            boolean bl2 = ok = this.isConstructor() && method.isConstructor() || !this.isConstructor() && !method.isConstructor();
            if (ok && !this.isConstructor()) {
                ok = this.getName().equals(method.getName());
            }
            if (!ok) {
                return false;
            }
            String[] types = method.getParameterTypes();
            if (this.fParameterTypes == null || this.fParameterTypes.length == 0) {
                if (types == null || types.length == 0) {
                    return true;
                }
            } else {
                if (types == null || types.length == 0) {
                    return false;
                }
                if (this.fParameterTypes.length != types.length) {
                    return false;
                }
                int i = 0;
                while (i < types.length) {
                    if (!this.fParameterTypes[i].equals(types[i])) {
                        return false;
                    }
                    ++i;
                }
                return true;
            }
        }
        return false;
    }

    protected DOMNode newDOMNode() {
        return new DOMMethod();
    }

    protected void offset(int offset) {
        super.offset(offset);
        this.offsetRange(this.fBodyRange, offset);
        this.offsetRange(this.fExceptionRange, offset);
        this.offsetRange(this.fParameterRange, offset);
        this.offsetRange(this.fReturnTypeRange, offset);
    }

    public void setBody(String body) {
        this.becomeDetailed();
        this.fragment();
        this.fBody = body;
        this.setHasBody(body != null);
        if (!this.hasBody()) {
            this.fBody = ";" + Util.getLineSeparator(body, null);
        }
    }

    void setBodyRangeEnd(int end) {
        this.fBodyRange[1] = end;
    }

    public void setConstructor(boolean b) {
        this.becomeDetailed();
        this.setMask(64, b);
        this.fragment();
    }

    public void setExceptions(String[] names) {
        this.becomeDetailed();
        if (names == null || names.length == 0) {
            this.fExceptions = null;
        } else {
            this.fExceptions = names;
            CharArrayBuffer buffer = new CharArrayBuffer();
            char[] comma = new char[]{',', ' '};
            int i = 0;
            int length = names.length;
            while (i < length) {
                if (i > 0) {
                    buffer.append(comma);
                }
                buffer.append(names[i]);
                ++i;
            }
            this.fExceptionList = buffer.getContents();
        }
        this.fragment();
    }

    public void setName(String name) {
        if (name == null) {
            throw new IllegalArgumentException(Messages.element_nullName);
        }
        super.setName(name);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void setParameters(String[] types, String[] names) throws IllegalArgumentException {
        this.becomeDetailed();
        if (types == null || names == null) {
            if (types != null || names != null) throw new IllegalArgumentException(Messages.dom_mismatchArgNamesAndTypes);
            this.fParameterTypes = null;
            this.fParameterNames = null;
            this.fParameterList = new char[]{'(', ')'};
        } else {
            if (names.length != types.length) {
                throw new IllegalArgumentException(Messages.dom_mismatchArgNamesAndTypes);
            }
            if (names.length == 0) {
                this.setParameters(null, null);
            } else {
                this.fParameterNames = names;
                this.fParameterTypes = types;
                CharArrayBuffer parametersBuffer = new CharArrayBuffer();
                parametersBuffer.append("(");
                char[] comma = new char[]{',', ' '};
                int i = 0;
                while (i < names.length) {
                    if (i > 0) {
                        parametersBuffer.append(comma);
                    }
                    parametersBuffer.append(types[i]).append(' ').append(names[i]);
                    ++i;
                }
                parametersBuffer.append(')');
                this.fParameterList = parametersBuffer.getContents();
            }
        }
        this.fragment();
    }

    public void setReturnType(String name) throws IllegalArgumentException {
        if (name == null) {
            throw new IllegalArgumentException(Messages.dom_nullReturnType);
        }
        this.becomeDetailed();
        this.fragment();
        this.setReturnTypeAltered(true);
        this.fReturnType = name;
    }

    protected void setReturnTypeAltered(boolean typeAltered) {
        this.setMask(1024, typeAltered);
    }

    protected void setSourceRangeEnd(int end) {
        super.setSourceRangeEnd(end);
        this.fBodyRange[1] = end;
    }

    protected void shareContents(DOMNode node) {
        super.shareContents(node);
        DOMMethod method = (DOMMethod)node;
        this.fBody = method.fBody;
        this.fBodyRange = this.rangeCopy(method.fBodyRange);
        this.fExceptionList = method.fExceptionList;
        this.fExceptionRange = this.rangeCopy(method.fExceptionRange);
        this.fExceptions = method.fExceptions;
        this.fParameterList = method.fParameterList;
        this.fParameterNames = method.fParameterNames;
        this.fParameterRange = this.rangeCopy(method.fParameterRange);
        this.fParameterTypes = method.fParameterTypes;
        this.fReturnType = method.fReturnType;
        this.fReturnTypeRange = this.rangeCopy(method.fReturnTypeRange);
    }

    public String toString() {
        if (this.isConstructor()) {
            return "CONSTRUCTOR";
        }
        return "METHOD: " + this.getName();
    }

    public void setDefault(String defaultValue) {
        this.fDefaultValue = defaultValue;
    }

    public String getDefault() {
        return this.fDefaultValue;
    }

    public String[] getTypeParameters() {
        return this.fTypeParameters;
    }

    public void setTypeParameters(String[] typeParameters) {
        this.fTypeParameters = typeParameters;
    }
}

