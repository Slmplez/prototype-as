/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.hierarchy;

import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryField;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryNestedType;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;

public class HierarchyBinaryType
implements IBinaryType {
    private int modifiers;
    private char[] sourceName;
    private char[] name;
    private char[] enclosingTypeName;
    private char[] superclass;
    private char[][] superInterfaces = NoInterface;
    private char[][] typeParameterSignatures;
    private char[] genericSignature;

    public HierarchyBinaryType(int modifiers, char[] qualification, char[] sourceName, char[] enclosingTypeName, char[][] typeParameterSignatures, char typeSuffix) {
        this.modifiers = modifiers;
        this.sourceName = sourceName;
        if (enclosingTypeName == null) {
            this.name = CharOperation.concat(qualification, sourceName, '/');
        } else {
            this.name = CharOperation.concat(qualification, '/', enclosingTypeName, '$', sourceName);
            this.enclosingTypeName = CharOperation.concat(qualification, enclosingTypeName, '/');
            CharOperation.replace(this.enclosingTypeName, '.', '/');
        }
        this.typeParameterSignatures = typeParameterSignatures;
        CharOperation.replace(this.name, '.', '/');
    }

    public IBinaryAnnotation[] getAnnotations() {
        return null;
    }

    public char[] getEnclosingMethod() {
        return null;
    }

    public char[] getEnclosingTypeName() {
        return this.enclosingTypeName;
    }

    public IBinaryField[] getFields() {
        return null;
    }

    public char[] getFileName() {
        return null;
    }

    public char[] getGenericSignature() {
        if (this.typeParameterSignatures != null && this.genericSignature == null) {
            StringBuffer buffer = new StringBuffer();
            buffer.append('<');
            int i = 0;
            int length = this.typeParameterSignatures.length;
            while (i < length) {
                buffer.append(this.typeParameterSignatures[i]);
                ++i;
            }
            buffer.append('>');
            if (this.superclass == null) {
                buffer.append(Signature.createTypeSignature("java.lang.Object", true));
            } else {
                buffer.append(Signature.createTypeSignature(this.superclass, true));
            }
            if (this.superInterfaces != null) {
                i = 0;
                length = this.superInterfaces.length;
                while (i < length) {
                    buffer.append(Signature.createTypeSignature(this.superInterfaces[i], true));
                    ++i;
                }
            }
            this.genericSignature = buffer.toString().toCharArray();
            CharOperation.replace(this.genericSignature, '.', '/');
        }
        return this.genericSignature;
    }

    public char[][] getInterfaceNames() {
        return this.superInterfaces;
    }

    public IBinaryNestedType[] getMemberTypes() {
        return null;
    }

    public IBinaryMethod[] getMethods() {
        return null;
    }

    public char[][][] getMissingTypeNames() {
        return null;
    }

    public int getModifiers() {
        return this.modifiers;
    }

    public char[] getName() {
        return this.name;
    }

    public char[] getSourceName() {
        return this.sourceName;
    }

    public char[] getSuperclassName() {
        return this.superclass;
    }

    public long getTagBits() {
        return 0L;
    }

    public boolean isAnonymous() {
        return false;
    }

    public boolean isBinaryType() {
        return true;
    }

    public boolean isLocal() {
        return false;
    }

    public boolean isMember() {
        return false;
    }

    public void recordSuperType(char[] superTypeName, char[] superQualification, char superClassOrInterface) {
        int length;
        if (superQualification != null && superQualification[(length = superQualification.length) - 1] == '$') {
            char[] enclosingSuperName = CharOperation.lastSegment(superQualification, '.');
            superTypeName = CharOperation.concat(enclosingSuperName, superTypeName);
            superQualification = CharOperation.subarray(superQualification, 0, length - enclosingSuperName.length - 1);
        }
        if (superClassOrInterface == 'C') {
            if (TypeDeclaration.kind(this.modifiers) == 2) {
                return;
            }
            char[] encodedName = CharOperation.concat(superQualification, superTypeName, '/');
            CharOperation.replace(encodedName, '.', '/');
            this.superclass = encodedName;
        } else {
            char[] encodedName = CharOperation.concat(superQualification, superTypeName, '/');
            CharOperation.replace(encodedName, '.', '/');
            if (this.superInterfaces == NoInterface) {
                this.superInterfaces = new char[][]{encodedName};
            } else {
                int length2 = this.superInterfaces.length;
                char[][] cArrayArray = new char[length2 + 1][];
                this.superInterfaces = cArrayArray;
                System.arraycopy(this.superInterfaces, 0, cArrayArray, 0, length2);
                this.superInterfaces[length2] = encodedName;
            }
        }
    }

    public char[] sourceFileName() {
        return null;
    }

    public String toString() {
        int length;
        StringBuffer buffer = new StringBuffer();
        if (this.modifiers == 1) {
            buffer.append("public ");
        }
        switch (TypeDeclaration.kind(this.modifiers)) {
            case 1: {
                buffer.append("class ");
                break;
            }
            case 2: {
                buffer.append("interface ");
                break;
            }
            case 3: {
                buffer.append("enum ");
            }
        }
        if (this.name != null) {
            buffer.append(this.name);
        }
        if (this.superclass != null) {
            buffer.append("\n  extends ");
            buffer.append(this.superclass);
        }
        if (this.superInterfaces != null && (length = this.superInterfaces.length) != 0) {
            buffer.append("\n implements ");
            int i = 0;
            while (i < length) {
                buffer.append(this.superInterfaces[i]);
                if (i != length - 1) {
                    buffer.append(", ");
                }
                ++i;
            }
        }
        return buffer.toString();
    }
}

