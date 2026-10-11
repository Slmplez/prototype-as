/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ClassLoaderReference
 *  com.sun.jdi.ClassNotLoadedException
 *  com.sun.jdi.ClassNotPreparedException
 *  com.sun.jdi.Type
 *  com.sun.jdi.Value
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.ClassLoaderReference;
import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.ClassNotPreparedException;
import com.sun.jdi.Type;
import com.sun.jdi.Value;
import org.eclipse.jdi.internal.AccessibleImpl;
import org.eclipse.jdi.internal.JDIMessages;
import org.eclipse.jdi.internal.PrimitiveTypeImpl;
import org.eclipse.jdi.internal.ReferenceTypeImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.VoidTypeImpl;

public abstract class TypeImpl
extends AccessibleImpl
implements Type {
    protected String fName = null;
    protected String fSignature = null;

    protected TypeImpl(String description, VirtualMachineImpl vmImpl) {
        super(description, vmImpl);
    }

    protected TypeImpl(String description, VirtualMachineImpl vmImpl, String name, String signature) {
        super(description, vmImpl);
        this.setName(name);
        this.setSignature(signature);
    }

    public static TypeImpl create(VirtualMachineImpl vmImpl, String signature, ClassLoaderReference classLoader) throws ClassNotLoadedException {
        if (TypeImpl.isVoidSignature(signature)) {
            return new VoidTypeImpl(vmImpl);
        }
        if (TypeImpl.isPrimitiveSignature(signature)) {
            return PrimitiveTypeImpl.create(vmImpl, signature);
        }
        return ReferenceTypeImpl.create(vmImpl, signature, classLoader);
    }

    public void setName(String name) {
        this.fName = name;
    }

    public void setSignature(String signature) {
        this.fSignature = signature;
    }

    public String toString() {
        try {
            return this.name();
        }
        catch (ClassNotPreparedException classNotPreparedException) {
            return JDIMessages.TypeImpl__Unloaded_Type__1;
        }
        catch (Exception exception) {
            return this.fDescription;
        }
    }

    public abstract Value createNullValue();

    public String name() {
        return this.fName;
    }

    public String signature() {
        return this.fSignature;
    }

    public abstract int modifiers();

    public static String classNameToSignature(String qualifiedName) {
        StringBuffer signature = new StringBuffer();
        int firstBrace = qualifiedName.indexOf(91);
        if (firstBrace < 0) {
            signature.append('L');
            signature.append(qualifiedName.replace('.', '/'));
            signature.append(';');
            return signature.toString();
        }
        int index = 0;
        while ((index = qualifiedName.indexOf(91, index) + 1) > 0) {
            signature.append('[');
        }
        String name = qualifiedName.substring(0, firstBrace);
        switch (name.charAt(0)) {
            case 'b': {
                if (name.equals("byte")) {
                    signature.append('B');
                    return signature.toString();
                }
                if (!name.equals("boolean")) break;
                signature.append('Z');
                return signature.toString();
            }
            case 'i': {
                if (!name.equals("int")) break;
                signature.append('I');
                return signature.toString();
            }
            case 'd': {
                if (!name.equals("double")) break;
                signature.append('D');
                return signature.toString();
            }
            case 's': {
                if (!name.equals("short")) break;
                signature.append('S');
                return signature.toString();
            }
            case 'c': {
                if (!name.equals("char")) break;
                signature.append('C');
                return signature.toString();
            }
            case 'l': {
                if (!name.equals("long")) break;
                signature.append('J');
                return signature.toString();
            }
            case 'f': {
                if (!name.equals("float")) break;
                signature.append('F');
                return signature.toString();
            }
        }
        signature.append('L');
        signature.append(name.replace('.', '/'));
        signature.append(';');
        return signature.toString();
    }

    public static String classSignatureToName(String signature) {
        return signature.substring(1, signature.length() - 1).replace('/', '.');
    }

    public static String arraySignatureToName(String signature) {
        if (signature.indexOf(91) < 0) {
            return signature;
        }
        StringBuffer name = new StringBuffer();
        String type = signature.substring(signature.lastIndexOf(91) + 1);
        if (type.length() == 1 && TypeImpl.isPrimitiveSignature(type)) {
            name.append(TypeImpl.getPrimitiveSignatureToName(type.charAt(0)));
        } else {
            name.append(TypeImpl.classSignatureToName(type));
        }
        int index = 0;
        while ((index = signature.indexOf(91, index) + 1) > 0) {
            name.append('[').append(']');
        }
        return String.valueOf(TypeImpl.signatureToName(signature.substring(1))) + "[]";
    }

    public static String signatureToName(String signature) {
        String primitive = TypeImpl.getPrimitiveSignatureToName(signature.charAt(0));
        if (primitive != null) {
            return primitive;
        }
        switch (signature.charAt(0)) {
            case 'V': {
                return "void";
            }
            case 'L': {
                return TypeImpl.classSignatureToName(signature);
            }
            case '[': {
                return TypeImpl.arraySignatureToName(signature);
            }
            case '(': {
                throw new InternalError(JDIMessages.TypeImpl_Can__t_convert_method_signature_to_name_2);
            }
        }
        throw new InternalError(String.valueOf(JDIMessages.TypeImpl_Invalid_signature____10) + signature + JDIMessages.TypeImpl___11);
    }

    private static String getPrimitiveSignatureToName(char signature) {
        switch (signature) {
            case 'Z': {
                return "boolean";
            }
            case 'B': {
                return "byte";
            }
            case 'C': {
                return "char";
            }
            case 'S': {
                return "short";
            }
            case 'I': {
                return "int";
            }
            case 'J': {
                return "long";
            }
            case 'F': {
                return "float";
            }
            case 'D': {
                return "double";
            }
        }
        return null;
    }

    public static byte signatureToTag(String signature) {
        switch (signature.charAt(0)) {
            case 'Z': {
                return 90;
            }
            case 'B': {
                return 66;
            }
            case 'C': {
                return 67;
            }
            case 'S': {
                return 83;
            }
            case 'I': {
                return 73;
            }
            case 'J': {
                return 74;
            }
            case 'F': {
                return 70;
            }
            case 'D': {
                return 68;
            }
            case 'V': {
                return 86;
            }
            case 'L': {
                return 76;
            }
            case '[': {
                return 91;
            }
            case '(': {
                throw new InternalError(String.valueOf(JDIMessages.TypeImpl_Can__t_covert_method_signature_to_tag___9) + signature);
            }
        }
        throw new InternalError(String.valueOf(JDIMessages.TypeImpl_Invalid_signature____10) + signature + JDIMessages.TypeImpl___11);
    }

    public static boolean isPrimitiveSignature(String signature) {
        switch (signature.charAt(0)) {
            case 'B': 
            case 'C': 
            case 'D': 
            case 'F': 
            case 'I': 
            case 'J': 
            case 'S': 
            case 'Z': {
                return true;
            }
        }
        return false;
    }

    public static boolean isVoidSignature(String signature) {
        return signature.charAt(0) == 'V';
    }
}

