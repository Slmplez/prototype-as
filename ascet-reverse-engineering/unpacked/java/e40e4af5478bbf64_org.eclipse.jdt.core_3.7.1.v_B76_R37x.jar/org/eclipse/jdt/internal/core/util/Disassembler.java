/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.util.ClassFileBytesDisassembler;
import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IAnnotation;
import org.eclipse.jdt.core.util.IAnnotationComponent;
import org.eclipse.jdt.core.util.IAnnotationComponentValue;
import org.eclipse.jdt.core.util.IAnnotationDefaultAttribute;
import org.eclipse.jdt.core.util.IAttributeNamesConstants;
import org.eclipse.jdt.core.util.IClassFileAttribute;
import org.eclipse.jdt.core.util.IClassFileReader;
import org.eclipse.jdt.core.util.ICodeAttribute;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IConstantValueAttribute;
import org.eclipse.jdt.core.util.IEnclosingMethodAttribute;
import org.eclipse.jdt.core.util.IExceptionAttribute;
import org.eclipse.jdt.core.util.IExceptionTableEntry;
import org.eclipse.jdt.core.util.IFieldInfo;
import org.eclipse.jdt.core.util.IInnerClassesAttribute;
import org.eclipse.jdt.core.util.IInnerClassesAttributeEntry;
import org.eclipse.jdt.core.util.ILineNumberAttribute;
import org.eclipse.jdt.core.util.ILocalVariableAttribute;
import org.eclipse.jdt.core.util.ILocalVariableTableEntry;
import org.eclipse.jdt.core.util.ILocalVariableTypeTableAttribute;
import org.eclipse.jdt.core.util.ILocalVariableTypeTableEntry;
import org.eclipse.jdt.core.util.IMethodInfo;
import org.eclipse.jdt.core.util.IParameterAnnotation;
import org.eclipse.jdt.core.util.IRuntimeInvisibleAnnotationsAttribute;
import org.eclipse.jdt.core.util.IRuntimeInvisibleParameterAnnotationsAttribute;
import org.eclipse.jdt.core.util.IRuntimeVisibleAnnotationsAttribute;
import org.eclipse.jdt.core.util.IRuntimeVisibleParameterAnnotationsAttribute;
import org.eclipse.jdt.core.util.ISignatureAttribute;
import org.eclipse.jdt.core.util.ISourceAttribute;
import org.eclipse.jdt.core.util.IStackMapAttribute;
import org.eclipse.jdt.core.util.IStackMapFrame;
import org.eclipse.jdt.core.util.IStackMapTableAttribute;
import org.eclipse.jdt.core.util.IVerificationTypeInfo;
import org.eclipse.jdt.internal.compiler.codegen.AttributeNamesConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.core.util.ClassFileReader;
import org.eclipse.jdt.internal.core.util.DefaultBytecodeVisitor;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class Disassembler
extends ClassFileBytesDisassembler {
    private static final char[] ANY_EXCEPTION = Messages.classfileformat_anyexceptionhandler.toCharArray();
    private static final String VERSION_UNKNOWN = Messages.classfileformat_versionUnknown;

    private boolean appendModifier(StringBuffer buffer, int accessFlags, int modifierConstant, String modifier, boolean firstModifier) {
        if ((accessFlags & modifierConstant) != 0) {
            if (!firstModifier) {
                buffer.append(Messages.disassembler_space);
            }
            if (firstModifier) {
                firstModifier = false;
            }
            buffer.append(modifier);
        }
        return firstModifier;
    }

    private void decodeModifiers(StringBuffer buffer, int accessFlags, int[] checkBits) {
        this.decodeModifiers(buffer, accessFlags, false, false, checkBits);
    }

    private void decodeModifiers(StringBuffer buffer, int accessFlags, boolean printDefault, boolean asBridge, int[] checkBits) {
        if (checkBits == null) {
            return;
        }
        boolean firstModifier = true;
        int i = 0;
        int max = checkBits.length;
        while (i < max) {
            switch (checkBits[i]) {
                case 1: {
                    firstModifier = this.appendModifier(buffer, accessFlags, 1, "public", firstModifier);
                    break;
                }
                case 4: {
                    firstModifier = this.appendModifier(buffer, accessFlags, 4, "protected", firstModifier);
                    break;
                }
                case 2: {
                    firstModifier = this.appendModifier(buffer, accessFlags, 2, "private", firstModifier);
                    break;
                }
                case 1024: {
                    firstModifier = this.appendModifier(buffer, accessFlags, 1024, "abstract", firstModifier);
                    break;
                }
                case 8: {
                    firstModifier = this.appendModifier(buffer, accessFlags, 8, "static", firstModifier);
                    break;
                }
                case 16: {
                    firstModifier = this.appendModifier(buffer, accessFlags, 16, "final", firstModifier);
                    break;
                }
                case 32: {
                    firstModifier = this.appendModifier(buffer, accessFlags, 32, "synchronized", firstModifier);
                    break;
                }
                case 256: {
                    firstModifier = this.appendModifier(buffer, accessFlags, 256, "native", firstModifier);
                    break;
                }
                case 2048: {
                    firstModifier = this.appendModifier(buffer, accessFlags, 2048, "strictfp", firstModifier);
                    break;
                }
                case 128: {
                    firstModifier = this.appendModifier(buffer, accessFlags, 128, "transient", firstModifier);
                    break;
                }
                case 64: {
                    if (asBridge) {
                        firstModifier = this.appendModifier(buffer, accessFlags, 64, "bridge", firstModifier);
                        break;
                    }
                    firstModifier = this.appendModifier(buffer, accessFlags, 64, "volatile", firstModifier);
                    break;
                }
                case 16384: {
                    firstModifier = this.appendModifier(buffer, accessFlags, 16384, "enum", firstModifier);
                }
            }
            ++i;
        }
        if (!firstModifier) {
            if (!printDefault) {
                buffer.append(Messages.disassembler_space);
            }
        } else if (printDefault) {
            buffer.append("default");
        }
    }

    private void decodeModifiersForField(StringBuffer buffer, int accessFlags) {
        this.decodeModifiers(buffer, accessFlags, new int[]{1, 4, 2, 8, 16, 128, 64, 16384});
    }

    private void decodeModifiersForFieldForWorkingCopy(StringBuffer buffer, int accessFlags) {
        this.decodeModifiers(buffer, accessFlags, new int[]{1, 4, 2, 8, 16, 128, 64});
    }

    private final void decodeModifiersForInnerClasses(StringBuffer buffer, int accessFlags, boolean printDefault) {
        this.decodeModifiers(buffer, accessFlags, printDefault, false, new int[]{1, 4, 2, 1024, 8, 16});
    }

    private final void decodeModifiersForMethod(StringBuffer buffer, int accessFlags) {
        this.decodeModifiers(buffer, accessFlags, false, true, new int[]{1, 4, 2, 1024, 8, 16, 32, 256, 2048, 64});
    }

    private final void decodeModifiersForType(StringBuffer buffer, int accessFlags) {
        this.decodeModifiers(buffer, accessFlags, new int[]{1, 1024, 16});
    }

    public static String escapeString(String s) {
        return Disassembler.decodeStringValue(s);
    }

    static String decodeStringValue(char[] chars) {
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        int max = chars.length;
        while (i < max) {
            char c = chars[i];
            Disassembler.escapeChar(buffer, c);
            ++i;
        }
        return buffer.toString();
    }

    private static void escapeChar(StringBuffer buffer, char c) {
        switch (c) {
            case '\b': {
                buffer.append("\\b");
                break;
            }
            case '\t': {
                buffer.append("\\t");
                break;
            }
            case '\n': {
                buffer.append("\\n");
                break;
            }
            case '\f': {
                buffer.append("\\f");
                break;
            }
            case '\r': {
                buffer.append("\\r");
                break;
            }
            case '\u0000': {
                buffer.append("\\0");
                break;
            }
            case '\u0001': {
                buffer.append("\\1");
                break;
            }
            case '\u0002': {
                buffer.append("\\2");
                break;
            }
            case '\u0003': {
                buffer.append("\\3");
                break;
            }
            case '\u0004': {
                buffer.append("\\4");
                break;
            }
            case '\u0005': {
                buffer.append("\\5");
                break;
            }
            case '\u0006': {
                buffer.append("\\6");
                break;
            }
            case '\u0007': {
                buffer.append("\\7");
                break;
            }
            default: {
                buffer.append(c);
            }
        }
    }

    static String decodeStringValue(String s) {
        return Disassembler.decodeStringValue(s.toCharArray());
    }

    public String disassemble(byte[] classFileBytes, String lineSeparator) throws ClassFormatException {
        try {
            return this.disassemble(new ClassFileReader(classFileBytes, 65535), lineSeparator, 2);
        }
        catch (ArrayIndexOutOfBoundsException e) {
            throw new ClassFormatException(e.getMessage(), e);
        }
    }

    public String disassemble(byte[] classFileBytes, String lineSeparator, int mode) throws ClassFormatException {
        try {
            return this.disassemble(new ClassFileReader(classFileBytes, 65535), lineSeparator, mode);
        }
        catch (ArrayIndexOutOfBoundsException e) {
            throw new ClassFormatException(e.getMessage(), e);
        }
    }

    private void disassemble(IAnnotation annotation, StringBuffer buffer, String lineSeparator, int tabNumber, int mode) {
        this.writeNewLine(buffer, lineSeparator, tabNumber + 1);
        int typeIndex = annotation.getTypeIndex();
        char[] typeName = CharOperation.replaceOnCopy(annotation.getTypeName(), '/', '.');
        buffer.append(Messages.bind(Messages.disassembler_annotationentrystart, new String[]{Integer.toString(typeIndex), new String(this.returnClassName(Signature.toCharArray(typeName), '.', mode))}));
        IAnnotationComponent[] components = annotation.getComponents();
        int i = 0;
        int max = components.length;
        while (i < max) {
            this.disassemble(components[i], buffer, lineSeparator, tabNumber + 1, mode);
            ++i;
        }
        this.writeNewLine(buffer, lineSeparator, tabNumber + 1);
        buffer.append(Messages.disassembler_annotationentryend);
    }

    private void disassemble(IAnnotationComponent annotationComponent, StringBuffer buffer, String lineSeparator, int tabNumber, int mode) {
        this.writeNewLine(buffer, lineSeparator, tabNumber + 1);
        buffer.append(Messages.bind(Messages.disassembler_annotationcomponent, new String[]{Integer.toString(annotationComponent.getComponentNameIndex()), new String(annotationComponent.getComponentName())}));
        this.disassemble(annotationComponent.getComponentValue(), buffer, lineSeparator, tabNumber + 1, mode);
    }

    private void disassemble(IAnnotationComponentValue annotationComponentValue, StringBuffer buffer, String lineSeparator, int tabNumber, int mode) {
        switch (annotationComponentValue.getTag()) {
            case 66: 
            case 67: 
            case 68: 
            case 70: 
            case 73: 
            case 74: 
            case 83: 
            case 90: 
            case 115: {
                IConstantPoolEntry constantPoolEntry = annotationComponentValue.getConstantValue();
                String value = null;
                switch (constantPoolEntry.getKind()) {
                    case 5: {
                        value = String.valueOf(constantPoolEntry.getLongValue()) + "L";
                        break;
                    }
                    case 4: {
                        value = String.valueOf(constantPoolEntry.getFloatValue()) + "f";
                        break;
                    }
                    case 6: {
                        value = Double.toString(constantPoolEntry.getDoubleValue());
                        break;
                    }
                    case 3: {
                        StringBuffer temp = new StringBuffer();
                        switch (annotationComponentValue.getTag()) {
                            case 67: {
                                temp.append('\'');
                                Disassembler.escapeChar(temp, (char)constantPoolEntry.getIntegerValue());
                                temp.append('\'');
                                break;
                            }
                            case 90: {
                                temp.append(constantPoolEntry.getIntegerValue() == 1 ? "true" : "false");
                                break;
                            }
                            case 66: {
                                temp.append("(byte) ").append(constantPoolEntry.getIntegerValue());
                                break;
                            }
                            case 83: {
                                temp.append("(short) ").append(constantPoolEntry.getIntegerValue());
                                break;
                            }
                            case 73: {
                                temp.append("(int) ").append(constantPoolEntry.getIntegerValue());
                            }
                        }
                        value = String.valueOf(temp);
                        break;
                    }
                    case 1: {
                        value = "\"" + Disassembler.decodeStringValue(constantPoolEntry.getUtf8Value()) + "\"";
                    }
                }
                buffer.append(Messages.bind(Messages.disassembler_annotationdefaultvalue, value));
                break;
            }
            case 101: {
                int enumConstantTypeNameIndex = annotationComponentValue.getEnumConstantTypeNameIndex();
                char[] typeName = CharOperation.replaceOnCopy(annotationComponentValue.getEnumConstantTypeName(), '/', '.');
                int enumConstantNameIndex = annotationComponentValue.getEnumConstantNameIndex();
                char[] constantName = annotationComponentValue.getEnumConstantName();
                buffer.append(Messages.bind(Messages.disassembler_annotationenumvalue, new String[]{Integer.toString(enumConstantTypeNameIndex), Integer.toString(enumConstantNameIndex), new String(this.returnClassName(Signature.toCharArray(typeName), '.', mode)), new String(constantName)}));
                break;
            }
            case 99: {
                int classIndex = annotationComponentValue.getClassInfoIndex();
                IConstantPoolEntry constantPoolEntry = annotationComponentValue.getClassInfo();
                char[] className = CharOperation.replaceOnCopy(constantPoolEntry.getUtf8Value(), '/', '.');
                buffer.append(Messages.bind(Messages.disassembler_annotationclassvalue, new String[]{Integer.toString(classIndex), new String(this.returnClassName(Signature.toCharArray(className), '.', mode))}));
                break;
            }
            case 64: {
                buffer.append(Messages.disassembler_annotationannotationvalue);
                IAnnotation annotation = annotationComponentValue.getAnnotationValue();
                this.disassemble(annotation, buffer, lineSeparator, tabNumber + 1, mode);
                break;
            }
            case 91: {
                buffer.append(Messages.disassembler_annotationarrayvaluestart);
                IAnnotationComponentValue[] annotationComponentValues = annotationComponentValue.getAnnotationComponentValues();
                int i = 0;
                int max = annotationComponentValues.length;
                while (i < max) {
                    this.writeNewLine(buffer, lineSeparator, tabNumber + 1);
                    this.disassemble(annotationComponentValues[i], buffer, lineSeparator, tabNumber + 1, mode);
                    ++i;
                }
                this.writeNewLine(buffer, lineSeparator, tabNumber + 1);
                buffer.append(Messages.disassembler_annotationarrayvalueend);
            }
        }
    }

    private void disassemble(IAnnotationDefaultAttribute annotationDefaultAttribute, StringBuffer buffer, String lineSeparator, int tabNumber, int mode) {
        this.writeNewLine(buffer, lineSeparator, tabNumber + 1);
        buffer.append(Messages.disassembler_annotationdefaultheader);
        IAnnotationComponentValue componentValue = annotationDefaultAttribute.getMemberValue();
        this.writeNewLine(buffer, lineSeparator, tabNumber + 2);
        this.disassemble(componentValue, buffer, lineSeparator, tabNumber + 1, mode);
    }

    private void disassemble(IClassFileAttribute classFileAttribute, StringBuffer buffer, String lineSeparator, int tabNumber, int mode) {
        this.writeNewLine(buffer, lineSeparator, tabNumber + 1);
        buffer.append(Messages.bind(Messages.disassembler_genericattributeheader, new String[]{new String(classFileAttribute.getAttributeName()), Long.toString(classFileAttribute.getAttributeLength())}));
    }

    private void disassembleEnumConstructor(IClassFileReader classFileReader, char[] className, IMethodInfo methodInfo, StringBuffer buffer, String lineSeparator, int tabNumber, int mode) {
        this.writeNewLine(buffer, lineSeparator, tabNumber);
        ICodeAttribute codeAttribute = methodInfo.getCodeAttribute();
        char[] methodDescriptor = methodInfo.getDescriptor();
        IClassFileAttribute runtimeVisibleAnnotationsAttribute = Util.getAttribute(methodInfo, IAttributeNamesConstants.RUNTIME_VISIBLE_ANNOTATIONS);
        IClassFileAttribute runtimeInvisibleAnnotationsAttribute = Util.getAttribute(methodInfo, IAttributeNamesConstants.RUNTIME_INVISIBLE_ANNOTATIONS);
        if (runtimeInvisibleAnnotationsAttribute != null) {
            this.disassembleAsModifier((IRuntimeInvisibleAnnotationsAttribute)runtimeInvisibleAnnotationsAttribute, buffer, lineSeparator, tabNumber, mode);
            this.writeNewLine(buffer, lineSeparator, tabNumber);
        }
        if (runtimeVisibleAnnotationsAttribute != null) {
            this.disassembleAsModifier((IRuntimeVisibleAnnotationsAttribute)runtimeVisibleAnnotationsAttribute, buffer, lineSeparator, tabNumber, mode);
            this.writeNewLine(buffer, lineSeparator, tabNumber);
        }
        int accessFlags = methodInfo.getAccessFlags();
        this.decodeModifiersForMethod(buffer, accessFlags & 2);
        CharOperation.replace(methodDescriptor, '/', '.');
        boolean isVarArgs = (accessFlags & 0x80) != 0;
        char[] signature = Signature.toCharArray(methodDescriptor, this.returnClassName(className, '.', 8), this.getParameterNames(methodDescriptor, codeAttribute, accessFlags), !this.checkMode(mode, 8), false, isVarArgs);
        int index = CharOperation.indexOf(',', signature);
        index = CharOperation.indexOf(',', signature, index + 1);
        buffer.append(signature, 0, CharOperation.indexOf('(', signature) + 1);
        buffer.append(signature, index + 2, signature.length - index - 2);
        IExceptionAttribute exceptionAttribute = methodInfo.getExceptionAttribute();
        if (exceptionAttribute != null) {
            buffer.append(" throws ");
            char[][] exceptionNames = exceptionAttribute.getExceptionNames();
            int length = exceptionNames.length;
            int i = 0;
            while (i < length) {
                if (i != 0) {
                    buffer.append(Messages.disassembler_comma).append(Messages.disassembler_space);
                }
                char[] exceptionName = exceptionNames[i];
                CharOperation.replace(exceptionName, '/', '.');
                buffer.append(this.returnClassName(exceptionName, '.', mode));
                ++i;
            }
        }
        if ((accessFlags & 0x100) == 0 && (accessFlags & 0x400) == 0) {
            buffer.append(" {");
            char[] returnType = Signature.getReturnType(methodDescriptor);
            if (returnType.length == 1) {
                switch (returnType[0]) {
                    case 'V': {
                        this.writeNewLine(buffer, lineSeparator, tabNumber);
                        break;
                    }
                    case 'B': 
                    case 'C': 
                    case 'D': 
                    case 'F': 
                    case 'I': 
                    case 'J': 
                    case 'S': {
                        this.writeNewLine(buffer, lineSeparator, tabNumber + 1);
                        buffer.append("return 0;");
                        this.writeNewLine(buffer, lineSeparator, tabNumber);
                        break;
                    }
                    default: {
                        this.writeNewLine(buffer, lineSeparator, tabNumber + 1);
                        buffer.append("return false;");
                        this.writeNewLine(buffer, lineSeparator, tabNumber);
                        break;
                    }
                }
            } else {
                this.writeNewLine(buffer, lineSeparator, tabNumber + 1);
                buffer.append("return null;");
                this.writeNewLine(buffer, lineSeparator, tabNumber);
            }
            buffer.append('}');
        } else {
            buffer.append(';');
        }
    }

    private void disassemble(IClassFileReader classFileReader, char[] className, IMethodInfo methodInfo, StringBuffer buffer, String lineSeparator, int tabNumber, int mode) {
        int i;
        int length;
        char[] signature;
        this.writeNewLine(buffer, lineSeparator, tabNumber);
        ICodeAttribute codeAttribute = methodInfo.getCodeAttribute();
        char[] methodDescriptor = methodInfo.getDescriptor();
        ISignatureAttribute signatureAttribute = (ISignatureAttribute)Util.getAttribute(methodInfo, IAttributeNamesConstants.SIGNATURE);
        IClassFileAttribute runtimeVisibleAnnotationsAttribute = Util.getAttribute(methodInfo, IAttributeNamesConstants.RUNTIME_VISIBLE_ANNOTATIONS);
        IClassFileAttribute runtimeInvisibleAnnotationsAttribute = Util.getAttribute(methodInfo, IAttributeNamesConstants.RUNTIME_INVISIBLE_ANNOTATIONS);
        IClassFileAttribute runtimeVisibleParameterAnnotationsAttribute = Util.getAttribute(methodInfo, IAttributeNamesConstants.RUNTIME_VISIBLE_PARAMETER_ANNOTATIONS);
        IClassFileAttribute runtimeInvisibleParameterAnnotationsAttribute = Util.getAttribute(methodInfo, IAttributeNamesConstants.RUNTIME_INVISIBLE_PARAMETER_ANNOTATIONS);
        IClassFileAttribute annotationDefaultAttribute = Util.getAttribute(methodInfo, IAttributeNamesConstants.ANNOTATION_DEFAULT);
        if (this.checkMode(mode, 5)) {
            buffer.append(Messages.bind(Messages.classfileformat_methoddescriptor, new String[]{Integer.toString(methodInfo.getDescriptorIndex()), new String(methodDescriptor)}));
            if (methodInfo.isDeprecated()) {
                buffer.append(Messages.disassembler_deprecated);
            }
            this.writeNewLine(buffer, lineSeparator, tabNumber);
            if (signatureAttribute != null) {
                buffer.append(Messages.bind(Messages.disassembler_signatureattributeheader, new String(signatureAttribute.getSignature())));
                this.writeNewLine(buffer, lineSeparator, tabNumber);
            }
            if (codeAttribute != null) {
                buffer.append(Messages.bind(Messages.classfileformat_stacksAndLocals, new String[]{Integer.toString(codeAttribute.getMaxStack()), Integer.toString(codeAttribute.getMaxLocals())}));
                this.writeNewLine(buffer, lineSeparator, tabNumber);
            }
        }
        if (this.checkMode(mode, 1)) {
            if (runtimeInvisibleAnnotationsAttribute != null) {
                this.disassembleAsModifier((IRuntimeInvisibleAnnotationsAttribute)runtimeInvisibleAnnotationsAttribute, buffer, lineSeparator, tabNumber, mode);
                this.writeNewLine(buffer, lineSeparator, tabNumber);
            }
            if (runtimeVisibleAnnotationsAttribute != null) {
                this.disassembleAsModifier((IRuntimeVisibleAnnotationsAttribute)runtimeVisibleAnnotationsAttribute, buffer, lineSeparator, tabNumber, mode);
                this.writeNewLine(buffer, lineSeparator, tabNumber);
            }
        }
        int accessFlags = methodInfo.getAccessFlags();
        this.decodeModifiersForMethod(buffer, accessFlags);
        if (methodInfo.isSynthetic() && !this.checkMode(mode, 16)) {
            buffer.append("synthetic");
            buffer.append(Messages.disassembler_space);
        }
        CharOperation.replace(methodDescriptor, '/', '.');
        boolean isVarArgs = this.isVarArgs(methodInfo);
        char[] methodHeader = null;
        char[][] parameterNames = null;
        if (!methodInfo.isClinit()) {
            parameterNames = this.getParameterNames(methodDescriptor, codeAttribute, accessFlags);
        }
        if (methodInfo.isConstructor()) {
            if (this.checkMode(mode, 16) && signatureAttribute != null) {
                signature = signatureAttribute.getSignature();
                CharOperation.replace(signature, '/', '.');
                this.disassembleGenericSignature(mode, buffer, signature);
                buffer.append(' ');
                methodHeader = Signature.toCharArray(signature, this.returnClassName(className, '.', 8), parameterNames, !this.checkMode(mode, 8), false, isVarArgs);
            } else {
                methodHeader = Signature.toCharArray(methodDescriptor, this.returnClassName(className, '.', 8), parameterNames, !this.checkMode(mode, 8), false, isVarArgs);
            }
        } else if (methodInfo.isClinit()) {
            methodHeader = Messages.bind(Messages.classfileformat_clinitname).toCharArray();
        } else if (this.checkMode(mode, 16) && signatureAttribute != null) {
            signature = signatureAttribute.getSignature();
            CharOperation.replace(signature, '/', '.');
            this.disassembleGenericSignature(mode, buffer, signature);
            buffer.append(' ');
            methodHeader = Signature.toCharArray(signature, methodInfo.getName(), parameterNames, !this.checkMode(mode, 8), true, isVarArgs);
        } else {
            methodHeader = Signature.toCharArray(methodDescriptor, methodInfo.getName(), parameterNames, !this.checkMode(mode, 8), true, isVarArgs);
        }
        if (this.checkMode(mode, 1) && (runtimeInvisibleParameterAnnotationsAttribute != null || runtimeVisibleParameterAnnotationsAttribute != null)) {
            int parameterNamesLength;
            IClassFileAttribute attribute;
            IParameterAnnotation[] invisibleParameterAnnotations = null;
            IParameterAnnotation[] visibleParameterAnnotations = null;
            length = -1;
            if (runtimeInvisibleParameterAnnotationsAttribute != null && (length = (invisibleParameterAnnotations = (attribute = (IRuntimeInvisibleParameterAnnotationsAttribute)runtimeInvisibleParameterAnnotationsAttribute).getParameterAnnotations()).length) > 0 && length < (parameterNamesLength = parameterNames.length)) {
                IParameterAnnotation[] iParameterAnnotationArray = invisibleParameterAnnotations;
                invisibleParameterAnnotations = new IParameterAnnotation[parameterNamesLength];
                System.arraycopy(iParameterAnnotationArray, 0, invisibleParameterAnnotations, 1, length);
                length = parameterNamesLength;
            }
            if (runtimeVisibleParameterAnnotationsAttribute != null && (length = (visibleParameterAnnotations = (attribute = (IRuntimeVisibleParameterAnnotationsAttribute)runtimeVisibleParameterAnnotationsAttribute).getParameterAnnotations()).length) > 0 && length < (parameterNamesLength = parameterNames.length)) {
                IParameterAnnotation[] iParameterAnnotationArray = visibleParameterAnnotations;
                visibleParameterAnnotations = new IParameterAnnotation[parameterNamesLength];
                System.arraycopy(iParameterAnnotationArray, 0, visibleParameterAnnotations, 1, length);
                length = parameterNamesLength;
            }
            int insertionPosition = CharOperation.indexOf('(', methodHeader) + 1;
            int start = 0;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(methodHeader, 0, insertionPosition);
            int i2 = 0;
            while (i2 < length) {
                if (i2 > 0) {
                    stringBuffer.append(' ');
                }
                int stringBufferSize = stringBuffer.length();
                if (visibleParameterAnnotations != null) {
                    this.disassembleAsModifier(visibleParameterAnnotations, stringBuffer, i2, lineSeparator, tabNumber, mode);
                }
                if (invisibleParameterAnnotations != null) {
                    if (stringBuffer.length() != stringBufferSize) {
                        stringBuffer.append(' ');
                        stringBufferSize = stringBuffer.length();
                    }
                    this.disassembleAsModifier(invisibleParameterAnnotations, stringBuffer, i2, lineSeparator, tabNumber, mode);
                }
                if (i2 == 0 && stringBuffer.length() != stringBufferSize) {
                    stringBuffer.append(' ');
                }
                if ((insertionPosition = CharOperation.indexOf(',', methodHeader, (start = insertionPosition) + 1) + 1) == 0) {
                    stringBuffer.append(methodHeader, start, methodHeader.length - start);
                } else {
                    stringBuffer.append(methodHeader, start, insertionPosition - start);
                }
                ++i2;
            }
            buffer.append(stringBuffer);
        } else {
            buffer.append(methodHeader);
        }
        IExceptionAttribute exceptionAttribute = methodInfo.getExceptionAttribute();
        if (exceptionAttribute != null) {
            buffer.append(" throws ");
            char[][] exceptionNames = exceptionAttribute.getExceptionNames();
            length = exceptionNames.length;
            i = 0;
            while (i < length) {
                if (i != 0) {
                    buffer.append(Messages.disassembler_comma).append(Messages.disassembler_space);
                }
                char[] exceptionName = exceptionNames[i];
                CharOperation.replace(exceptionName, '/', '.');
                buffer.append(this.returnClassName(exceptionName, '.', mode));
                ++i;
            }
        }
        if (this.checkMode(mode, 1) && annotationDefaultAttribute != null) {
            buffer.append(" default ");
            this.disassembleAsModifier((IAnnotationDefaultAttribute)annotationDefaultAttribute, buffer, lineSeparator, tabNumber, mode);
        }
        if (this.checkMode(mode, 16)) {
            if (annotationDefaultAttribute != null) {
                buffer.append(" default ");
                this.disassembleAsModifier((IAnnotationDefaultAttribute)annotationDefaultAttribute, buffer, lineSeparator, tabNumber, mode);
            }
            if ((accessFlags & 0x100) == 0 && (accessFlags & 0x400) == 0) {
                buffer.append(" {");
                char[] returnType = Signature.getReturnType(methodDescriptor);
                if (returnType.length == 1) {
                    switch (returnType[0]) {
                        case 'V': {
                            this.writeNewLine(buffer, lineSeparator, tabNumber);
                            break;
                        }
                        case 'B': 
                        case 'C': 
                        case 'D': 
                        case 'F': 
                        case 'I': 
                        case 'J': 
                        case 'S': {
                            this.writeNewLine(buffer, lineSeparator, tabNumber + 1);
                            buffer.append("return 0;");
                            this.writeNewLine(buffer, lineSeparator, tabNumber);
                            break;
                        }
                        default: {
                            this.writeNewLine(buffer, lineSeparator, tabNumber + 1);
                            buffer.append("return false;");
                            this.writeNewLine(buffer, lineSeparator, tabNumber);
                            break;
                        }
                    }
                } else {
                    this.writeNewLine(buffer, lineSeparator, tabNumber + 1);
                    buffer.append("return null;");
                    this.writeNewLine(buffer, lineSeparator, tabNumber);
                }
                buffer.append('}');
            } else {
                buffer.append(';');
            }
        } else {
            buffer.append(Messages.disassembler_endofmethodheader);
        }
        if (this.checkMode(mode, 5) && codeAttribute != null) {
            this.disassemble(codeAttribute, parameterNames, methodDescriptor, (accessFlags & 8) != 0, buffer, lineSeparator, tabNumber, mode);
        }
        if (this.checkMode(mode, 4)) {
            IClassFileAttribute[] attributes = methodInfo.getAttributes();
            length = attributes.length;
            if (length != 0) {
                i = 0;
                while (i < length) {
                    IClassFileAttribute attribute = attributes[i];
                    if (attribute != codeAttribute && attribute != exceptionAttribute && attribute != signatureAttribute && attribute != annotationDefaultAttribute && attribute != runtimeInvisibleAnnotationsAttribute && attribute != runtimeVisibleAnnotationsAttribute && attribute != runtimeInvisibleParameterAnnotationsAttribute && attribute != runtimeVisibleParameterAnnotationsAttribute && !CharOperation.equals(attribute.getAttributeName(), IAttributeNamesConstants.DEPRECATED) && !CharOperation.equals(attribute.getAttributeName(), IAttributeNamesConstants.SYNTHETIC)) {
                        this.disassemble(attribute, buffer, lineSeparator, tabNumber, mode);
                        this.writeNewLine(buffer, lineSeparator, tabNumber);
                    }
                    ++i;
                }
            }
            if (annotationDefaultAttribute != null) {
                this.disassemble((IAnnotationDefaultAttribute)annotationDefaultAttribute, buffer, lineSeparator, tabNumber, mode);
            }
            if (runtimeVisibleAnnotationsAttribute != null) {
                this.disassemble((IRuntimeVisibleAnnotationsAttribute)runtimeVisibleAnnotationsAttribute, buffer, lineSeparator, tabNumber, mode);
            }
            if (runtimeInvisibleAnnotationsAttribute != null) {
                this.disassemble((IRuntimeInvisibleAnnotationsAttribute)runtimeInvisibleAnnotationsAttribute, buffer, lineSeparator, tabNumber, mode);
            }
            if (runtimeVisibleParameterAnnotationsAttribute != null) {
                this.disassemble((IRuntimeVisibleParameterAnnotationsAttribute)runtimeVisibleParameterAnnotationsAttribute, buffer, lineSeparator, tabNumber, mode);
            }
            if (runtimeInvisibleParameterAnnotationsAttribute != null) {
                this.disassemble((IRuntimeInvisibleParameterAnnotationsAttribute)runtimeInvisibleParameterAnnotationsAttribute, buffer, lineSeparator, tabNumber, mode);
            }
        }
    }

    public String disassemble(IClassFileReader classFileReader, String lineSeparator) {
        return this.disassemble(classFileReader, lineSeparator, 2);
    }

    public String disassemble(IClassFileReader classFileReader, String lineSeparator, int mode) {
        char[][] superclassInterfaces;
        int length;
        char[] superclassName;
        if (classFileReader == null) {
            return org.eclipse.jdt.internal.compiler.util.Util.EMPTY_STRING;
        }
        char[] className = classFileReader.getClassName();
        if (className == null) {
            return org.eclipse.jdt.internal.compiler.util.Util.EMPTY_STRING;
        }
        className = CharOperation.replaceOnCopy(className, '/', '.');
        int classNameLength = className.length;
        int accessFlags = classFileReader.getAccessFlags();
        boolean isEnum = (accessFlags & 0x4000) != 0;
        StringBuffer buffer = new StringBuffer();
        ISourceAttribute sourceAttribute = classFileReader.getSourceFileAttribute();
        IClassFileAttribute classFileAttribute = Util.getAttribute(classFileReader, IAttributeNamesConstants.SIGNATURE);
        ISignatureAttribute signatureAttribute = (ISignatureAttribute)classFileAttribute;
        if (this.checkMode(mode, 5)) {
            int minorVersion = classFileReader.getMinorVersion();
            int majorVersion = classFileReader.getMajorVersion();
            buffer.append(Messages.disassembler_begincommentline);
            if (sourceAttribute != null) {
                buffer.append(Messages.disassembler_sourceattributeheader);
                buffer.append(sourceAttribute.getSourceFileName());
            }
            String versionNumber = VERSION_UNKNOWN;
            if (minorVersion == 3 && majorVersion == 45) {
                versionNumber = "1.1";
            } else if (minorVersion == 0 && majorVersion == 46) {
                versionNumber = "1.2";
            } else if (minorVersion == 0 && majorVersion == 47) {
                versionNumber = "1.3";
            } else if (minorVersion == 0 && majorVersion == 48) {
                versionNumber = "1.4";
            } else if (minorVersion == 0 && majorVersion == 49) {
                versionNumber = "1.5";
            } else if (minorVersion == 0 && majorVersion == 50) {
                versionNumber = "1.6";
            } else if (minorVersion == 0 && majorVersion == 51) {
                versionNumber = "1.7";
            }
            buffer.append(Messages.bind(Messages.classfileformat_versiondetails, new String[]{versionNumber, Integer.toString(majorVersion), Integer.toString(minorVersion), String.valueOf((accessFlags & 0x20) != 0 ? Messages.classfileformat_superflagisset : Messages.classfileformat_superflagisnotset) + (this.isDeprecated(classFileReader) ? ", deprecated" : org.eclipse.jdt.internal.compiler.util.Util.EMPTY_STRING)}));
            this.writeNewLine(buffer, lineSeparator, 0);
            if (signatureAttribute != null) {
                buffer.append(Messages.bind(Messages.disassembler_signatureattributeheader, new String(signatureAttribute.getSignature())));
                this.writeNewLine(buffer, lineSeparator, 0);
            }
        }
        int lastDotIndexInClassName = CharOperation.lastIndexOf('.', className);
        if (this.checkMode(mode, 16) && lastDotIndexInClassName != -1) {
            buffer.append("package ");
            buffer.append(className, 0, lastDotIndexInClassName);
            buffer.append(';');
            this.writeNewLine(buffer, lineSeparator, 0);
        }
        IInnerClassesAttribute innerClassesAttribute = classFileReader.getInnerClassesAttribute();
        IClassFileAttribute runtimeVisibleAnnotationsAttribute = Util.getAttribute(classFileReader, IAttributeNamesConstants.RUNTIME_VISIBLE_ANNOTATIONS);
        IClassFileAttribute runtimeInvisibleAnnotationsAttribute = Util.getAttribute(classFileReader, IAttributeNamesConstants.RUNTIME_INVISIBLE_ANNOTATIONS);
        if (this.checkMode(mode, 1)) {
            if (runtimeInvisibleAnnotationsAttribute != null) {
                this.disassembleAsModifier((IRuntimeInvisibleAnnotationsAttribute)runtimeInvisibleAnnotationsAttribute, buffer, lineSeparator, 0, mode);
                this.writeNewLine(buffer, lineSeparator, 0);
            }
            if (runtimeVisibleAnnotationsAttribute != null) {
                this.disassembleAsModifier((IRuntimeVisibleAnnotationsAttribute)runtimeVisibleAnnotationsAttribute, buffer, lineSeparator, 0, mode);
                this.writeNewLine(buffer, lineSeparator, 0);
            }
        }
        boolean decoded = false;
        if (isEnum && this.checkMode(mode, 16)) {
            this.decodeModifiersForType(buffer, accessFlags & 1);
        } else {
            if (innerClassesAttribute != null) {
                IInnerClassesAttributeEntry[] entries = innerClassesAttribute.getInnerClassAttributesEntries();
                int i = 0;
                int max = entries.length;
                while (i < max) {
                    IInnerClassesAttributeEntry entry = entries[i];
                    char[] innerClassName = entry.getInnerClassName();
                    if (innerClassName != null && CharOperation.equals(classFileReader.getClassName(), innerClassName)) {
                        this.decodeModifiersForInnerClasses(buffer, entry.getAccessFlags(), false);
                        decoded = true;
                    }
                    ++i;
                }
            }
            if (!decoded) {
                this.decodeModifiersForType(buffer, accessFlags);
                if (this.isSynthetic(classFileReader)) {
                    buffer.append("synthetic");
                    buffer.append(Messages.disassembler_space);
                }
            }
        }
        boolean isAnnotation = (accessFlags & 0x2000) != 0;
        boolean isInterface = false;
        if (isEnum) {
            buffer.append("enum ");
        } else if (classFileReader.isClass()) {
            buffer.append("class ");
        } else {
            if (isAnnotation) {
                buffer.append("@");
            }
            buffer.append("interface ");
            isInterface = true;
        }
        if (this.checkMode(mode, 16)) {
            int start = lastDotIndexInClassName + 1;
            buffer.append(className, start, classNameLength - start);
            className = CharOperation.subarray(className, start, classNameLength);
            if (signatureAttribute != null) {
                this.disassembleGenericSignature(mode, buffer, signatureAttribute.getSignature());
            }
        } else {
            buffer.append(className);
        }
        if ((superclassName = classFileReader.getSuperclassName()) != null) {
            CharOperation.replace(superclassName, '/', '.');
            if (!this.isJavaLangObject(superclassName) && !isEnum) {
                buffer.append(" extends ");
                buffer.append(this.returnClassName(superclassName, '.', mode));
            }
        }
        if (!(isAnnotation && this.checkMode(mode, 16) || (length = (superclassInterfaces = classFileReader.getInterfaceNames()).length) == 0)) {
            if (isInterface) {
                buffer.append(" extends ");
            } else {
                buffer.append(" implements ");
            }
            int i = 0;
            while (i < length) {
                if (i != 0) {
                    buffer.append(Messages.disassembler_comma).append(Messages.disassembler_space);
                }
                char[] superinterface = superclassInterfaces[i];
                CharOperation.replace(superinterface, '/', '.');
                buffer.append(this.returnClassName(superinterface, '.', mode));
                ++i;
            }
        }
        buffer.append(Messages.bind(Messages.disassembler_opentypedeclaration));
        if (this.checkMode(mode, 4)) {
            this.disassemble(classFileReader.getConstantPool(), buffer, lineSeparator, 1);
        }
        this.disassembleTypeMembers(classFileReader, className, buffer, lineSeparator, 1, mode, isEnum);
        if (this.checkMode(mode, 5)) {
            IClassFileAttribute[] attributes = classFileReader.getAttributes();
            length = attributes.length;
            IEnclosingMethodAttribute enclosingMethodAttribute = this.getEnclosingMethodAttribute(classFileReader);
            int remainingAttributesLength = length;
            if (innerClassesAttribute != null) {
                --remainingAttributesLength;
            }
            if (enclosingMethodAttribute != null) {
                --remainingAttributesLength;
            }
            if (sourceAttribute != null) {
                --remainingAttributesLength;
            }
            if (signatureAttribute != null) {
                --remainingAttributesLength;
            }
            if (innerClassesAttribute != null || enclosingMethodAttribute != null || remainingAttributesLength != 0) {
                this.writeNewLine(buffer, lineSeparator, 0);
            }
            if (innerClassesAttribute != null) {
                this.disassemble(innerClassesAttribute, buffer, lineSeparator, 1);
            }
            if (enclosingMethodAttribute != null) {
                this.disassemble(enclosingMethodAttribute, buffer, lineSeparator, 0);
            }
            if (this.checkMode(mode, 4)) {
                if (runtimeVisibleAnnotationsAttribute != null) {
                    this.disassemble((IRuntimeVisibleAnnotationsAttribute)runtimeVisibleAnnotationsAttribute, buffer, lineSeparator, 0, mode);
                }
                if (runtimeInvisibleAnnotationsAttribute != null) {
                    this.disassemble((IRuntimeInvisibleAnnotationsAttribute)runtimeInvisibleAnnotationsAttribute, buffer, lineSeparator, 0, mode);
                }
                if (length != 0) {
                    int i = 0;
                    while (i < length) {
                        IClassFileAttribute attribute = attributes[i];
                        if (attribute != innerClassesAttribute && attribute != sourceAttribute && attribute != signatureAttribute && attribute != enclosingMethodAttribute && attribute != runtimeInvisibleAnnotationsAttribute && attribute != runtimeVisibleAnnotationsAttribute && !CharOperation.equals(attribute.getAttributeName(), IAttributeNamesConstants.DEPRECATED) && !CharOperation.equals(attribute.getAttributeName(), IAttributeNamesConstants.SYNTHETIC)) {
                            this.disassemble(attribute, buffer, lineSeparator, 0, mode);
                        }
                        ++i;
                    }
                }
            }
        }
        this.writeNewLine(buffer, lineSeparator, 0);
        buffer.append(Messages.disassembler_closetypedeclaration);
        return buffer.toString();
    }

    private void disassembleGenericSignature(int mode, StringBuffer buffer, char[] signature) {
        CharOperation.replace(signature, '/', '.');
        char[][] typeParameters = Signature.getTypeParameters(signature);
        int typeParametersLength = typeParameters.length;
        if (typeParametersLength != 0) {
            buffer.append('<');
            int i = 0;
            while (i < typeParametersLength) {
                if (i != 0) {
                    buffer.append(Messages.disassembler_comma);
                }
                buffer.append(typeParameters[i], 0, CharOperation.indexOf(':', typeParameters[i]));
                char[][] bounds = Signature.getTypeParameterBounds(typeParameters[i]);
                int boundsLength = bounds.length;
                if (boundsLength != 0) {
                    if (boundsLength == 1) {
                        char[] bound = bounds[0];
                        if (!this.isJavaLangObject(Signature.toCharArray(bound))) {
                            buffer.append(" extends ");
                            buffer.append(this.returnClassName(Signature.toCharArray(bound), '.', mode));
                        }
                    } else {
                        buffer.append(" extends ");
                        int j = 0;
                        while (j < boundsLength) {
                            if (j != 0) {
                                buffer.append(" & ");
                            }
                            buffer.append(this.returnClassName(Signature.toCharArray(bounds[j]), '.', mode));
                            ++j;
                        }
                    }
                }
                ++i;
            }
            buffer.append('>');
        }
    }

    private boolean isJavaLangObject(char[] className) {
        return CharOperation.equals(TypeConstants.JAVA_LANG_OBJECT, CharOperation.splitOn('.', className));
    }

    private boolean isVarArgs(IMethodInfo methodInfo) {
        int accessFlags = methodInfo.getAccessFlags();
        if ((accessFlags & 0x80) != 0) {
            return true;
        }
        return Util.getAttribute(methodInfo, AttributeNamesConstants.VarargsName) != null;
    }

    private void disassemble(ICodeAttribute codeAttribute, char[][] parameterNames, char[] methodDescriptor, boolean isStatic, StringBuffer buffer, String lineSeparator, int tabNumber, int mode) {
        int length;
        int i;
        ILocalVariableTypeTableAttribute localVariableTypeAttribute;
        int localVariableTypeTableLength;
        ILocalVariableAttribute localVariableAttribute;
        int localVariableAttributeLength;
        ILineNumberAttribute lineNumberAttribute;
        int lineAttributeLength;
        this.writeNewLine(buffer, lineSeparator, tabNumber - 1);
        DefaultBytecodeVisitor visitor = new DefaultBytecodeVisitor(codeAttribute, parameterNames, methodDescriptor, isStatic, buffer, lineSeparator, tabNumber, mode);
        try {
            codeAttribute.traverse(visitor);
        }
        catch (ClassFormatException classFormatException) {
            this.dumpTab(tabNumber + 2, buffer);
            buffer.append(Messages.classformat_classformatexception);
            this.writeNewLine(buffer, lineSeparator, tabNumber + 1);
        }
        int exceptionTableLength = codeAttribute.getExceptionTableLength();
        boolean isFirstAttribute = true;
        if (exceptionTableLength != 0) {
            int tabNumberForExceptionAttribute = tabNumber + 2;
            isFirstAttribute = false;
            this.dumpTab(tabNumberForExceptionAttribute, buffer);
            IExceptionTableEntry[] exceptionTableEntries = codeAttribute.getExceptionTable();
            buffer.append(Messages.disassembler_exceptiontableheader);
            this.writeNewLine(buffer, lineSeparator, tabNumberForExceptionAttribute + 1);
            int i2 = 0;
            while (i2 < exceptionTableLength) {
                char[] catchType;
                IExceptionTableEntry exceptionTableEntry;
                if (i2 != 0) {
                    this.writeNewLine(buffer, lineSeparator, tabNumberForExceptionAttribute + 1);
                }
                if ((exceptionTableEntry = exceptionTableEntries[i2]).getCatchTypeIndex() != 0) {
                    catchType = exceptionTableEntry.getCatchType();
                    CharOperation.replace(catchType, '/', '.');
                    catchType = this.returnClassName(catchType, '.', mode);
                } else {
                    catchType = ANY_EXCEPTION;
                }
                buffer.append(Messages.bind(Messages.classfileformat_exceptiontableentry, new String[]{Integer.toString(exceptionTableEntry.getStartPC()), Integer.toString(exceptionTableEntry.getEndPC()), Integer.toString(exceptionTableEntry.getHandlerPC()), new String(catchType)}));
                ++i2;
            }
        }
        int n = lineAttributeLength = (lineNumberAttribute = codeAttribute.getLineNumberAttribute()) == null ? 0 : lineNumberAttribute.getLineNumberTableLength();
        if (lineAttributeLength != 0) {
            int tabNumberForLineAttribute = tabNumber + 2;
            if (!isFirstAttribute) {
                this.writeNewLine(buffer, lineSeparator, tabNumberForLineAttribute);
            } else {
                this.dumpTab(tabNumberForLineAttribute, buffer);
                isFirstAttribute = false;
            }
            buffer.append(Messages.disassembler_linenumberattributeheader);
            this.writeNewLine(buffer, lineSeparator, tabNumberForLineAttribute + 1);
            int[][] lineattributesEntries = lineNumberAttribute.getLineNumberTable();
            int i3 = 0;
            while (i3 < lineAttributeLength) {
                if (i3 != 0) {
                    this.writeNewLine(buffer, lineSeparator, tabNumberForLineAttribute + 1);
                }
                buffer.append(Messages.bind(Messages.classfileformat_linenumbertableentry, new String[]{Integer.toString(lineattributesEntries[i3][0]), Integer.toString(lineattributesEntries[i3][1])}));
                ++i3;
            }
        }
        int n2 = localVariableAttributeLength = (localVariableAttribute = codeAttribute.getLocalVariableAttribute()) == null ? 0 : localVariableAttribute.getLocalVariableTableLength();
        if (localVariableAttributeLength != 0) {
            int tabNumberForLocalVariableAttribute = tabNumber + 2;
            if (!isFirstAttribute) {
                this.writeNewLine(buffer, lineSeparator, tabNumberForLocalVariableAttribute);
            } else {
                isFirstAttribute = false;
                this.dumpTab(tabNumberForLocalVariableAttribute, buffer);
            }
            buffer.append(Messages.disassembler_localvariabletableattributeheader);
            this.writeNewLine(buffer, lineSeparator, tabNumberForLocalVariableAttribute + 1);
            ILocalVariableTableEntry[] localVariableTableEntries = localVariableAttribute.getLocalVariableTable();
            int i4 = 0;
            while (i4 < localVariableAttributeLength) {
                if (i4 != 0) {
                    this.writeNewLine(buffer, lineSeparator, tabNumberForLocalVariableAttribute + 1);
                }
                ILocalVariableTableEntry localVariableTableEntry = localVariableTableEntries[i4];
                int index = localVariableTableEntry.getIndex();
                int startPC = localVariableTableEntry.getStartPC();
                int length2 = localVariableTableEntry.getLength();
                char[] typeName = Signature.toCharArray(localVariableTableEntry.getDescriptor());
                CharOperation.replace(typeName, '/', '.');
                buffer.append(Messages.bind(Messages.classfileformat_localvariabletableentry, new String[]{Integer.toString(startPC), Integer.toString(startPC + length2), new String(localVariableTableEntry.getName()), Integer.toString(index), new String(this.returnClassName(typeName, '.', mode))}));
                ++i4;
            }
        }
        int n3 = localVariableTypeTableLength = (localVariableTypeAttribute = (ILocalVariableTypeTableAttribute)this.getAttribute(IAttributeNamesConstants.LOCAL_VARIABLE_TYPE_TABLE, codeAttribute)) == null ? 0 : localVariableTypeAttribute.getLocalVariableTypeTableLength();
        if (localVariableTypeTableLength != 0) {
            int tabNumberForLocalVariableAttribute = tabNumber + 2;
            if (!isFirstAttribute) {
                this.writeNewLine(buffer, lineSeparator, tabNumberForLocalVariableAttribute);
            } else {
                isFirstAttribute = false;
                this.dumpTab(tabNumberForLocalVariableAttribute, buffer);
            }
            buffer.append(Messages.disassembler_localvariabletypetableattributeheader);
            this.writeNewLine(buffer, lineSeparator, tabNumberForLocalVariableAttribute + 1);
            ILocalVariableTypeTableEntry[] localVariableTypeTableEntries = localVariableTypeAttribute.getLocalVariableTypeTable();
            i = 0;
            while (i < localVariableTypeTableLength) {
                if (i != 0) {
                    this.writeNewLine(buffer, lineSeparator, tabNumberForLocalVariableAttribute + 1);
                }
                ILocalVariableTypeTableEntry localVariableTypeTableEntry = localVariableTypeTableEntries[i];
                int index = localVariableTypeTableEntry.getIndex();
                int startPC = localVariableTypeTableEntry.getStartPC();
                int length3 = localVariableTypeTableEntry.getLength();
                char[] typeName = Signature.toCharArray(localVariableTypeTableEntry.getSignature());
                CharOperation.replace(typeName, '/', '.');
                buffer.append(Messages.bind(Messages.classfileformat_localvariabletableentry, new String[]{Integer.toString(startPC), Integer.toString(startPC + length3), new String(localVariableTypeTableEntry.getName()), Integer.toString(index), new String(this.returnClassName(typeName, '.', mode))}));
                ++i;
            }
        }
        if ((length = codeAttribute.getAttributesCount()) != 0) {
            IClassFileAttribute[] attributes = codeAttribute.getAttributes();
            i = 0;
            while (i < length) {
                IClassFileAttribute attribute = attributes[i];
                if (CharOperation.equals(attribute.getAttributeName(), IAttributeNamesConstants.STACK_MAP_TABLE)) {
                    IStackMapTableAttribute stackMapTableAttribute = (IStackMapTableAttribute)attribute;
                    if (!isFirstAttribute) {
                        this.writeNewLine(buffer, lineSeparator, tabNumber + 2);
                    } else {
                        isFirstAttribute = false;
                        this.dumpTab(tabNumber + 1, buffer);
                    }
                    int numberOfEntries = stackMapTableAttribute.getNumberOfEntries();
                    buffer.append(Messages.bind(Messages.disassembler_stackmaptableattributeheader, Integer.toString(numberOfEntries)));
                    if (numberOfEntries != 0) {
                        this.disassemble(stackMapTableAttribute, buffer, lineSeparator, tabNumber, mode);
                    }
                } else if (CharOperation.equals(attribute.getAttributeName(), IAttributeNamesConstants.STACK_MAP)) {
                    IStackMapAttribute stackMapAttribute = (IStackMapAttribute)attribute;
                    if (!isFirstAttribute) {
                        this.writeNewLine(buffer, lineSeparator, tabNumber + 2);
                    } else {
                        isFirstAttribute = false;
                        this.dumpTab(tabNumber + 1, buffer);
                    }
                    int numberOfEntries = stackMapAttribute.getNumberOfEntries();
                    buffer.append(Messages.bind(Messages.disassembler_stackmapattributeheader, Integer.toString(numberOfEntries)));
                    if (numberOfEntries != 0) {
                        this.disassemble(stackMapAttribute, buffer, lineSeparator, tabNumber, mode);
                    }
                } else if (attribute != lineNumberAttribute && attribute != localVariableAttribute && attribute != localVariableTypeAttribute) {
                    if (!isFirstAttribute) {
                        this.writeNewLine(buffer, lineSeparator, tabNumber + 2);
                    } else {
                        isFirstAttribute = false;
                        this.dumpTab(tabNumber + 1, buffer);
                    }
                    buffer.append(Messages.bind(Messages.disassembler_genericattributeheader, new String[]{new String(attribute.getAttributeName()), Long.toString(attribute.getAttributeLength())}));
                }
                ++i;
            }
        }
    }

    private void disassemble(IStackMapTableAttribute attribute, StringBuffer buffer, String lineSeparator, int tabNumber, int mode) {
        this.writeNewLine(buffer, lineSeparator, tabNumber + 3);
        int numberOfEntries = attribute.getNumberOfEntries();
        IStackMapFrame[] stackMapFrames = attribute.getStackMapFrame();
        int absolutePC = -1;
        int j = 0;
        while (j < numberOfEntries) {
            if (j > 0) {
                this.writeNewLine(buffer, lineSeparator, tabNumber + 3);
            }
            IStackMapFrame frame = stackMapFrames[j];
            int type = frame.getFrameType();
            int offsetDelta = frame.getOffsetDelta();
            absolutePC = absolutePC == -1 ? offsetDelta : (absolutePC += offsetDelta + 1);
            switch (type) {
                case 247: {
                    buffer.append(Messages.bind(Messages.disassembler_frame_same_locals_1_stack_item_extended, Integer.toString(absolutePC), this.disassemble(frame.getStackItems(), mode)));
                    break;
                }
                case 248: 
                case 249: 
                case 250: {
                    buffer.append(Messages.bind(Messages.disassembler_frame_chop, Integer.toString(absolutePC), Integer.toString(251 - type)));
                    break;
                }
                case 251: {
                    buffer.append(Messages.bind(Messages.disassembler_frame_same_frame_extended, Integer.toString(absolutePC)));
                    break;
                }
                case 252: 
                case 253: 
                case 254: {
                    buffer.append(Messages.bind(Messages.disassembler_frame_append, Integer.toString(absolutePC), this.disassemble(frame.getLocals(), mode)));
                    break;
                }
                case 255: {
                    buffer.append(Messages.bind(Messages.disassembler_frame_full_frame, new String[]{Integer.toString(absolutePC), Integer.toString(frame.getNumberOfLocals()), this.disassemble(frame.getLocals(), mode), Integer.toString(frame.getNumberOfStackItems()), this.disassemble(frame.getStackItems(), mode), this.dumpNewLineWithTabs(lineSeparator, tabNumber + 5)}));
                    break;
                }
                default: {
                    if (type <= 63) {
                        offsetDelta = type;
                        buffer.append(Messages.bind(Messages.disassembler_frame_same_frame, Integer.toString(absolutePC)));
                        break;
                    }
                    if (type > 127) break;
                    offsetDelta = type - 64;
                    buffer.append(Messages.bind(Messages.disassembler_frame_same_locals_1_stack_item, Integer.toString(absolutePC), this.disassemble(frame.getStackItems(), mode)));
                }
            }
            ++j;
        }
    }

    private void disassemble(IStackMapAttribute attribute, StringBuffer buffer, String lineSeparator, int tabNumber, int mode) {
        this.writeNewLine(buffer, lineSeparator, tabNumber + 3);
        int numberOfEntries = attribute.getNumberOfEntries();
        IStackMapFrame[] stackMapFrames = attribute.getStackMapFrame();
        int j = 0;
        while (j < numberOfEntries) {
            if (j > 0) {
                this.writeNewLine(buffer, lineSeparator, tabNumber + 3);
            }
            IStackMapFrame frame = stackMapFrames[j];
            buffer.append(Messages.bind(Messages.disassembler_frame_full_frame, new String[]{Integer.toString(frame.getOffsetDelta()), Integer.toString(frame.getNumberOfLocals()), this.disassemble(frame.getLocals(), mode), Integer.toString(frame.getNumberOfStackItems()), this.disassemble(frame.getStackItems(), mode), this.dumpNewLineWithTabs(lineSeparator, tabNumber + 5)}));
            ++j;
        }
    }

    private void disassemble(IConstantPool constantPool, StringBuffer buffer, String lineSeparator, int tabNumber) {
        this.writeNewLine(buffer, lineSeparator, tabNumber);
        int length = constantPool.getConstantPoolCount();
        buffer.append(Messages.disassembler_constantpoolheader);
        this.writeNewLine(buffer, lineSeparator, tabNumber + 1);
        int i = 1;
        while (i < length) {
            if (i != 1) {
                this.writeNewLine(buffer, lineSeparator, tabNumber + 1);
            }
            IConstantPoolEntry constantPoolEntry = constantPool.decodeEntry(i);
            switch (constantPool.getEntryKind(i)) {
                case 7: {
                    buffer.append(Messages.bind(Messages.disassembler_constantpool_class, new String[]{Integer.toString(i), Integer.toString(constantPoolEntry.getClassInfoNameIndex()), new String(constantPoolEntry.getClassInfoName())}));
                    break;
                }
                case 6: {
                    buffer.append(Messages.bind(Messages.disassembler_constantpool_double, new String[]{Integer.toString(i), Double.toString(constantPoolEntry.getDoubleValue())}));
                    break;
                }
                case 9: {
                    buffer.append(Messages.bind(Messages.disassembler_constantpool_fieldref, new String[]{Integer.toString(i), Integer.toString(constantPoolEntry.getClassIndex()), Integer.toString(constantPoolEntry.getNameAndTypeIndex()), new String(constantPoolEntry.getClassName()), new String(constantPoolEntry.getFieldName()), new String(constantPoolEntry.getFieldDescriptor())}));
                    break;
                }
                case 4: {
                    buffer.append(Messages.bind(Messages.disassembler_constantpool_float, new String[]{Integer.toString(i), Float.toString(constantPoolEntry.getFloatValue())}));
                    break;
                }
                case 3: {
                    buffer.append(Messages.bind(Messages.disassembler_constantpool_integer, new String[]{Integer.toString(i), Integer.toString(constantPoolEntry.getIntegerValue())}));
                    break;
                }
                case 11: {
                    buffer.append(Messages.bind(Messages.disassembler_constantpool_interfacemethodref, new String[]{Integer.toString(i), Integer.toString(constantPoolEntry.getClassIndex()), Integer.toString(constantPoolEntry.getNameAndTypeIndex()), new String(constantPoolEntry.getClassName()), new String(constantPoolEntry.getMethodName()), new String(constantPoolEntry.getMethodDescriptor())}));
                    break;
                }
                case 5: {
                    buffer.append(Messages.bind(Messages.disassembler_constantpool_long, new String[]{Integer.toString(i), Long.toString(constantPoolEntry.getLongValue())}));
                    break;
                }
                case 10: {
                    buffer.append(Messages.bind(Messages.disassembler_constantpool_methodref, new String[]{Integer.toString(i), Integer.toString(constantPoolEntry.getClassIndex()), Integer.toString(constantPoolEntry.getNameAndTypeIndex()), new String(constantPoolEntry.getClassName()), new String(constantPoolEntry.getMethodName()), new String(constantPoolEntry.getMethodDescriptor())}));
                    break;
                }
                case 12: {
                    int nameIndex = constantPoolEntry.getNameAndTypeInfoNameIndex();
                    int typeIndex = constantPoolEntry.getNameAndTypeInfoDescriptorIndex();
                    IConstantPoolEntry entry = constantPool.decodeEntry(nameIndex);
                    char[] nameValue = entry.getUtf8Value();
                    entry = constantPool.decodeEntry(typeIndex);
                    char[] typeValue = entry.getUtf8Value();
                    buffer.append(Messages.bind(Messages.disassembler_constantpool_name_and_type, new String[]{Integer.toString(i), Integer.toString(nameIndex), Integer.toString(typeIndex), String.valueOf(nameValue), String.valueOf(typeValue)}));
                    break;
                }
                case 8: {
                    buffer.append(Messages.bind(Messages.disassembler_constantpool_string, new String[]{Integer.toString(i), Integer.toString(constantPoolEntry.getStringIndex()), Disassembler.decodeStringValue(constantPoolEntry.getStringValue())}));
                    break;
                }
                case 1: {
                    buffer.append(Messages.bind(Messages.disassembler_constantpool_utf8, new String[]{Integer.toString(i), Disassembler.decodeStringValue(new String(constantPoolEntry.getUtf8Value()))}));
                }
            }
            ++i;
        }
    }

    private void disassemble(IEnclosingMethodAttribute enclosingMethodAttribute, StringBuffer buffer, String lineSeparator, int tabNumber) {
        this.writeNewLine(buffer, lineSeparator, tabNumber + 1);
        buffer.append(Messages.disassembler_enclosingmethodheader);
        buffer.append(Messages.disassembler_constantpoolindex).append(enclosingMethodAttribute.getEnclosingClassIndex()).append(" ").append(Messages.disassembler_constantpoolindex).append(enclosingMethodAttribute.getMethodNameAndTypeIndex()).append(" ").append(enclosingMethodAttribute.getEnclosingClass());
        if (enclosingMethodAttribute.getMethodNameAndTypeIndex() != 0) {
            buffer.append(".").append(enclosingMethodAttribute.getMethodName()).append(enclosingMethodAttribute.getMethodDescriptor());
        }
    }

    private void disassembleEnumConstants(IFieldInfo fieldInfo, StringBuffer buffer, String lineSeparator, int tabNumber, char[][] argumentTypes, int mode) {
        this.writeNewLine(buffer, lineSeparator, tabNumber);
        IClassFileAttribute runtimeVisibleAnnotationsAttribute = Util.getAttribute(fieldInfo, IAttributeNamesConstants.RUNTIME_VISIBLE_ANNOTATIONS);
        IClassFileAttribute runtimeInvisibleAnnotationsAttribute = Util.getAttribute(fieldInfo, IAttributeNamesConstants.RUNTIME_INVISIBLE_ANNOTATIONS);
        if (runtimeInvisibleAnnotationsAttribute != null) {
            this.disassembleAsModifier((IRuntimeInvisibleAnnotationsAttribute)runtimeInvisibleAnnotationsAttribute, buffer, lineSeparator, tabNumber, mode);
            this.writeNewLine(buffer, lineSeparator, tabNumber);
        }
        if (runtimeVisibleAnnotationsAttribute != null) {
            this.disassembleAsModifier((IRuntimeVisibleAnnotationsAttribute)runtimeVisibleAnnotationsAttribute, buffer, lineSeparator, tabNumber, mode);
            this.writeNewLine(buffer, lineSeparator, tabNumber);
        }
        buffer.append(new String(fieldInfo.getName()));
        buffer.append('(');
        int length = argumentTypes.length;
        if (length != 0) {
            int i = 0;
            while (i < length) {
                if (i != 0) {
                    buffer.append(Messages.disassembler_comma);
                }
                char[] type = argumentTypes[i];
                switch (type.length) {
                    case 1: {
                        switch (type[0]) {
                            case 'B': 
                            case 'D': 
                            case 'F': 
                            case 'I': 
                            case 'J': 
                            case 'S': {
                                buffer.append('0');
                                break;
                            }
                            case 'Z': {
                                buffer.append("false");
                                break;
                            }
                            case 'C': {
                                buffer.append("' '");
                            }
                        }
                        break;
                    }
                    default: {
                        buffer.append("null");
                    }
                }
                ++i;
            }
        }
        buffer.append(')').append(Messages.disassembler_comma);
    }

    private void disassemble(IFieldInfo fieldInfo, StringBuffer buffer, String lineSeparator, int tabNumber, int mode) {
        this.writeNewLine(buffer, lineSeparator, tabNumber);
        char[] fieldDescriptor = fieldInfo.getDescriptor();
        ISignatureAttribute signatureAttribute = (ISignatureAttribute)Util.getAttribute(fieldInfo, IAttributeNamesConstants.SIGNATURE);
        if (this.checkMode(mode, 5)) {
            buffer.append(Messages.bind(Messages.classfileformat_fieldddescriptor, new String[]{Integer.toString(fieldInfo.getDescriptorIndex()), new String(fieldDescriptor)}));
            if (fieldInfo.isDeprecated()) {
                buffer.append(Messages.disassembler_deprecated);
            }
            this.writeNewLine(buffer, lineSeparator, tabNumber);
            if (signatureAttribute != null) {
                buffer.append(Messages.bind(Messages.disassembler_signatureattributeheader, new String(signatureAttribute.getSignature())));
                this.writeNewLine(buffer, lineSeparator, tabNumber);
            }
        }
        IClassFileAttribute runtimeVisibleAnnotationsAttribute = Util.getAttribute(fieldInfo, IAttributeNamesConstants.RUNTIME_VISIBLE_ANNOTATIONS);
        IClassFileAttribute runtimeInvisibleAnnotationsAttribute = Util.getAttribute(fieldInfo, IAttributeNamesConstants.RUNTIME_INVISIBLE_ANNOTATIONS);
        if (this.checkMode(mode, 1)) {
            if (runtimeInvisibleAnnotationsAttribute != null) {
                this.disassembleAsModifier((IRuntimeInvisibleAnnotationsAttribute)runtimeInvisibleAnnotationsAttribute, buffer, lineSeparator, tabNumber, mode);
                this.writeNewLine(buffer, lineSeparator, tabNumber);
            }
            if (runtimeVisibleAnnotationsAttribute != null) {
                this.disassembleAsModifier((IRuntimeVisibleAnnotationsAttribute)runtimeVisibleAnnotationsAttribute, buffer, lineSeparator, tabNumber, mode);
                this.writeNewLine(buffer, lineSeparator, tabNumber);
            }
        }
        if (this.checkMode(mode, 16)) {
            this.decodeModifiersForFieldForWorkingCopy(buffer, fieldInfo.getAccessFlags());
            if (signatureAttribute != null) {
                buffer.append(this.returnClassName(this.getSignatureForField(signatureAttribute.getSignature()), '.', mode));
            } else {
                buffer.append(this.returnClassName(this.getSignatureForField(fieldDescriptor), '.', mode));
            }
        } else {
            this.decodeModifiersForField(buffer, fieldInfo.getAccessFlags());
            if (fieldInfo.isSynthetic()) {
                buffer.append("synthetic");
                buffer.append(Messages.disassembler_space);
            }
            buffer.append(this.returnClassName(this.getSignatureForField(fieldDescriptor), '.', mode));
        }
        buffer.append(' ');
        buffer.append(new String(fieldInfo.getName()));
        IConstantValueAttribute constantValueAttribute = fieldInfo.getConstantValueAttribute();
        if (constantValueAttribute != null) {
            buffer.append(Messages.disassembler_fieldhasconstant);
            IConstantPoolEntry constantPoolEntry = constantValueAttribute.getConstantValue();
            switch (constantPoolEntry.getKind()) {
                case 5: {
                    buffer.append(String.valueOf(constantPoolEntry.getLongValue()) + "L");
                    break;
                }
                case 4: {
                    buffer.append(String.valueOf(constantPoolEntry.getFloatValue()) + "f");
                    break;
                }
                case 6: {
                    double doubleValue = constantPoolEntry.getDoubleValue();
                    if (this.checkMode(mode, 16)) {
                        if (doubleValue == Double.POSITIVE_INFINITY) {
                            buffer.append("1.0 / 0.0");
                            break;
                        }
                        if (doubleValue == Double.NEGATIVE_INFINITY) {
                            buffer.append("-1.0 / 0.0");
                            break;
                        }
                        buffer.append(constantPoolEntry.getDoubleValue());
                        break;
                    }
                    buffer.append(constantPoolEntry.getDoubleValue());
                    break;
                }
                case 3: {
                    switch (fieldDescriptor[0]) {
                        case 'C': {
                            buffer.append("'" + (char)constantPoolEntry.getIntegerValue() + "'");
                            break;
                        }
                        case 'Z': {
                            buffer.append(constantPoolEntry.getIntegerValue() == 1 ? "true" : "false");
                            break;
                        }
                        case 'B': {
                            buffer.append(constantPoolEntry.getIntegerValue());
                            break;
                        }
                        case 'S': {
                            buffer.append(constantPoolEntry.getIntegerValue());
                            break;
                        }
                        case 'I': {
                            buffer.append(constantPoolEntry.getIntegerValue());
                        }
                    }
                    break;
                }
                case 8: {
                    buffer.append("\"" + Disassembler.decodeStringValue(constantPoolEntry.getStringValue()) + "\"");
                }
            }
        }
        buffer.append(Messages.disassembler_endoffieldheader);
        if (this.checkMode(mode, 4)) {
            IClassFileAttribute[] attributes = fieldInfo.getAttributes();
            int length = attributes.length;
            if (length != 0) {
                int i = 0;
                while (i < length) {
                    IClassFileAttribute attribute = attributes[i];
                    if (attribute != constantValueAttribute && attribute != signatureAttribute && attribute != runtimeInvisibleAnnotationsAttribute && attribute != runtimeVisibleAnnotationsAttribute && !CharOperation.equals(attribute.getAttributeName(), IAttributeNamesConstants.DEPRECATED) && !CharOperation.equals(attribute.getAttributeName(), IAttributeNamesConstants.SYNTHETIC)) {
                        this.disassemble(attribute, buffer, lineSeparator, tabNumber, mode);
                    }
                    ++i;
                }
            }
            if (runtimeVisibleAnnotationsAttribute != null) {
                this.disassemble((IRuntimeVisibleAnnotationsAttribute)runtimeVisibleAnnotationsAttribute, buffer, lineSeparator, tabNumber, mode);
            }
            if (runtimeInvisibleAnnotationsAttribute != null) {
                this.disassemble((IRuntimeInvisibleAnnotationsAttribute)runtimeInvisibleAnnotationsAttribute, buffer, lineSeparator, tabNumber, mode);
            }
        }
    }

    private void disassemble(IInnerClassesAttribute innerClassesAttribute, StringBuffer buffer, String lineSeparator, int tabNumber) {
        this.writeNewLine(buffer, lineSeparator, tabNumber);
        buffer.append(Messages.disassembler_innerattributesheader);
        this.writeNewLine(buffer, lineSeparator, tabNumber + 1);
        IInnerClassesAttributeEntry[] innerClassesAttributeEntries = innerClassesAttribute.getInnerClassAttributesEntries();
        int length = innerClassesAttributeEntries.length;
        int i = 0;
        while (i < length) {
            if (i != 0) {
                buffer.append(Messages.disassembler_comma);
                this.writeNewLine(buffer, lineSeparator, tabNumber + 1);
            }
            IInnerClassesAttributeEntry innerClassesAttributeEntry = innerClassesAttributeEntries[i];
            int innerClassNameIndex = innerClassesAttributeEntry.getInnerClassNameIndex();
            int outerClassNameIndex = innerClassesAttributeEntry.getOuterClassNameIndex();
            int innerNameIndex = innerClassesAttributeEntry.getInnerNameIndex();
            int accessFlags = innerClassesAttributeEntry.getAccessFlags();
            buffer.append(Messages.disassembler_openinnerclassentry).append(Messages.disassembler_inner_class_info_name).append(Messages.disassembler_constantpoolindex).append(innerClassNameIndex);
            if (innerClassNameIndex != 0) {
                buffer.append(Messages.disassembler_space).append(innerClassesAttributeEntry.getInnerClassName());
            }
            buffer.append(Messages.disassembler_comma).append(Messages.disassembler_space).append(Messages.disassembler_outer_class_info_name).append(Messages.disassembler_constantpoolindex).append(outerClassNameIndex);
            if (outerClassNameIndex != 0) {
                buffer.append(Messages.disassembler_space).append(innerClassesAttributeEntry.getOuterClassName());
            }
            this.writeNewLine(buffer, lineSeparator, tabNumber);
            this.dumpTab(tabNumber, buffer);
            buffer.append(Messages.disassembler_space);
            buffer.append(Messages.disassembler_inner_name).append(Messages.disassembler_constantpoolindex).append(innerNameIndex);
            if (innerNameIndex != 0) {
                buffer.append(Messages.disassembler_space).append(innerClassesAttributeEntry.getInnerName());
            }
            buffer.append(Messages.disassembler_comma).append(Messages.disassembler_space).append(Messages.disassembler_inner_accessflags).append(accessFlags).append(Messages.disassembler_space);
            this.decodeModifiersForInnerClasses(buffer, accessFlags, true);
            buffer.append(Messages.disassembler_closeinnerclassentry);
            ++i;
        }
    }

    private void disassemble(int index, IParameterAnnotation parameterAnnotation, StringBuffer buffer, String lineSeparator, int tabNumber, int mode) {
        IAnnotation[] annotations = parameterAnnotation.getAnnotations();
        this.writeNewLine(buffer, lineSeparator, tabNumber + 1);
        buffer.append(Messages.bind(Messages.disassembler_parameterannotationentrystart, new String[]{Integer.toString(index), Integer.toString(annotations.length)}));
        int i = 0;
        int max = annotations.length;
        while (i < max) {
            this.disassemble(annotations[i], buffer, lineSeparator, tabNumber + 1, mode);
            ++i;
        }
    }

    private void disassemble(IRuntimeInvisibleAnnotationsAttribute runtimeInvisibleAnnotationsAttribute, StringBuffer buffer, String lineSeparator, int tabNumber, int mode) {
        this.writeNewLine(buffer, lineSeparator, tabNumber + 1);
        buffer.append(Messages.disassembler_runtimeinvisibleannotationsattributeheader);
        IAnnotation[] annotations = runtimeInvisibleAnnotationsAttribute.getAnnotations();
        int i = 0;
        int max = annotations.length;
        while (i < max) {
            this.disassemble(annotations[i], buffer, lineSeparator, tabNumber + 1, mode);
            ++i;
        }
    }

    private void disassemble(IRuntimeInvisibleParameterAnnotationsAttribute runtimeInvisibleParameterAnnotationsAttribute, StringBuffer buffer, String lineSeparator, int tabNumber, int mode) {
        this.writeNewLine(buffer, lineSeparator, tabNumber + 1);
        buffer.append(Messages.disassembler_runtimeinvisibleparameterannotationsattributeheader);
        IParameterAnnotation[] parameterAnnotations = runtimeInvisibleParameterAnnotationsAttribute.getParameterAnnotations();
        int i = 0;
        int max = parameterAnnotations.length;
        while (i < max) {
            this.disassemble(i, parameterAnnotations[i], buffer, lineSeparator, tabNumber + 1, mode);
            ++i;
        }
    }

    private void disassemble(IRuntimeVisibleAnnotationsAttribute runtimeVisibleAnnotationsAttribute, StringBuffer buffer, String lineSeparator, int tabNumber, int mode) {
        this.writeNewLine(buffer, lineSeparator, tabNumber + 1);
        buffer.append(Messages.disassembler_runtimevisibleannotationsattributeheader);
        IAnnotation[] annotations = runtimeVisibleAnnotationsAttribute.getAnnotations();
        int i = 0;
        int max = annotations.length;
        while (i < max) {
            this.disassemble(annotations[i], buffer, lineSeparator, tabNumber + 1, mode);
            ++i;
        }
    }

    private void disassemble(IRuntimeVisibleParameterAnnotationsAttribute runtimeVisibleParameterAnnotationsAttribute, StringBuffer buffer, String lineSeparator, int tabNumber, int mode) {
        this.writeNewLine(buffer, lineSeparator, tabNumber + 1);
        buffer.append(Messages.disassembler_runtimevisibleparameterannotationsattributeheader);
        IParameterAnnotation[] parameterAnnotations = runtimeVisibleParameterAnnotationsAttribute.getParameterAnnotations();
        int i = 0;
        int max = parameterAnnotations.length;
        while (i < max) {
            this.disassemble(i, parameterAnnotations[i], buffer, lineSeparator, tabNumber + 1, mode);
            ++i;
        }
    }

    private String disassemble(IVerificationTypeInfo[] infos, int mode) {
        StringBuffer buffer = new StringBuffer();
        buffer.append('{');
        int i = 0;
        int max = infos.length;
        while (i < max) {
            if (i != 0) {
                buffer.append(Messages.disassembler_comma).append(Messages.disassembler_space);
            }
            switch (infos[i].getTag()) {
                case 3: {
                    buffer.append("double");
                    break;
                }
                case 2: {
                    buffer.append("float");
                    break;
                }
                case 1: {
                    buffer.append("int");
                    break;
                }
                case 4: {
                    buffer.append("long");
                    break;
                }
                case 5: {
                    buffer.append("null");
                    break;
                }
                case 7: {
                    char[] classTypeName = infos[i].getClassTypeName();
                    CharOperation.replace(classTypeName, '/', '.');
                    if (classTypeName.length > 0 && classTypeName[0] == '[') {
                        classTypeName = Signature.toCharArray(classTypeName);
                    }
                    buffer.append(this.returnClassName(classTypeName, '.', mode));
                    break;
                }
                case 0: {
                    buffer.append("_");
                    break;
                }
                case 8: {
                    buffer.append("uninitialized(");
                    buffer.append(infos[i].getOffset());
                    buffer.append(')');
                    break;
                }
                case 6: {
                    buffer.append("uninitialized_this");
                }
            }
            ++i;
        }
        buffer.append('}');
        return String.valueOf(buffer);
    }

    private void disassembleAsModifier(IAnnotation annotation, StringBuffer buffer, String lineSeparator, int tabNumber, int mode) {
        char[] typeName = CharOperation.replaceOnCopy(annotation.getTypeName(), '/', '.');
        buffer.append('@').append(this.returnClassName(Signature.toCharArray(typeName), '.', mode));
        IAnnotationComponent[] components = annotation.getComponents();
        int length = components.length;
        if (length != 0) {
            buffer.append('(');
            int i = 0;
            while (i < length) {
                if (i > 0) {
                    buffer.append(',');
                    this.writeNewLine(buffer, lineSeparator, tabNumber);
                }
                this.disassembleAsModifier(components[i], buffer, lineSeparator, tabNumber + 1, mode);
                ++i;
            }
            buffer.append(')');
        }
    }

    private void disassembleAsModifier(IAnnotationComponent annotationComponent, StringBuffer buffer, String lineSeparator, int tabNumber, int mode) {
        buffer.append(annotationComponent.getComponentName()).append('=');
        this.disassembleAsModifier(annotationComponent.getComponentValue(), buffer, lineSeparator, tabNumber + 1, mode);
    }

    private void disassembleAsModifier(IAnnotationComponentValue annotationComponentValue, StringBuffer buffer, String lineSeparator, int tabNumber, int mode) {
        switch (annotationComponentValue.getTag()) {
            case 66: 
            case 67: 
            case 68: 
            case 70: 
            case 73: 
            case 74: 
            case 83: 
            case 90: 
            case 115: {
                IConstantPoolEntry constantPoolEntry = annotationComponentValue.getConstantValue();
                String value = null;
                switch (constantPoolEntry.getKind()) {
                    case 5: {
                        value = String.valueOf(constantPoolEntry.getLongValue()) + "L";
                        break;
                    }
                    case 4: {
                        value = String.valueOf(constantPoolEntry.getFloatValue()) + "f";
                        break;
                    }
                    case 6: {
                        value = Double.toString(constantPoolEntry.getDoubleValue());
                        break;
                    }
                    case 3: {
                        StringBuffer temp = new StringBuffer();
                        switch (annotationComponentValue.getTag()) {
                            case 67: {
                                temp.append('\'');
                                Disassembler.escapeChar(temp, (char)constantPoolEntry.getIntegerValue());
                                temp.append('\'');
                                break;
                            }
                            case 90: {
                                temp.append(constantPoolEntry.getIntegerValue() == 1 ? "true" : "false");
                                break;
                            }
                            case 66: {
                                temp.append("(byte) ").append(constantPoolEntry.getIntegerValue());
                                break;
                            }
                            case 83: {
                                temp.append("(short) ").append(constantPoolEntry.getIntegerValue());
                                break;
                            }
                            case 73: {
                                temp.append("(int) ").append(constantPoolEntry.getIntegerValue());
                            }
                        }
                        value = String.valueOf(temp);
                        break;
                    }
                    case 1: {
                        value = "\"" + Disassembler.decodeStringValue(constantPoolEntry.getUtf8Value()) + "\"";
                    }
                }
                buffer.append(value);
                break;
            }
            case 101: {
                char[] typeName = CharOperation.replaceOnCopy(annotationComponentValue.getEnumConstantTypeName(), '/', '.');
                char[] constantName = annotationComponentValue.getEnumConstantName();
                buffer.append(this.returnClassName(Signature.toCharArray(typeName), '.', mode)).append('.').append(constantName);
                break;
            }
            case 99: {
                IConstantPoolEntry constantPoolEntry = annotationComponentValue.getClassInfo();
                char[] className = CharOperation.replaceOnCopy(constantPoolEntry.getUtf8Value(), '/', '.');
                buffer.append(this.returnClassName(Signature.toCharArray(className), '.', mode));
                break;
            }
            case 64: {
                IAnnotation annotation = annotationComponentValue.getAnnotationValue();
                this.disassembleAsModifier(annotation, buffer, lineSeparator, tabNumber + 1, mode);
                break;
            }
            case 91: {
                IAnnotationComponentValue[] annotationComponentValues = annotationComponentValue.getAnnotationComponentValues();
                buffer.append('{');
                int i = 0;
                int max = annotationComponentValues.length;
                while (i < max) {
                    if (i > 0) {
                        buffer.append(',');
                    }
                    this.disassembleAsModifier(annotationComponentValues[i], buffer, lineSeparator, tabNumber + 1, mode);
                    ++i;
                }
                buffer.append('}');
            }
        }
    }

    private void disassembleAsModifier(IAnnotationDefaultAttribute annotationDefaultAttribute, StringBuffer buffer, String lineSeparator, int tabNumber, int mode) {
        IAnnotationComponentValue componentValue = annotationDefaultAttribute.getMemberValue();
        this.disassembleAsModifier(componentValue, buffer, lineSeparator, tabNumber + 1, mode);
    }

    private void disassembleAsModifier(IRuntimeInvisibleAnnotationsAttribute runtimeInvisibleAnnotationsAttribute, StringBuffer buffer, String lineSeparator, int tabNumber, int mode) {
        IAnnotation[] annotations = runtimeInvisibleAnnotationsAttribute.getAnnotations();
        int i = 0;
        int max = annotations.length;
        while (i < max) {
            this.disassembleAsModifier(annotations[i], buffer, lineSeparator, tabNumber + 1, mode);
            ++i;
        }
    }

    private void disassembleAsModifier(IParameterAnnotation[] parameterAnnotations, StringBuffer buffer, int index, String lineSeparator, int tabNumber, int mode) {
        if (parameterAnnotations.length > index) {
            this.disassembleAsModifier(parameterAnnotations[index], buffer, lineSeparator, tabNumber + 1, mode);
        }
    }

    private void disassembleAsModifier(IParameterAnnotation parameterAnnotation, StringBuffer buffer, String lineSeparator, int tabNumber, int mode) {
        if (parameterAnnotation == null) {
            return;
        }
        IAnnotation[] annotations = parameterAnnotation.getAnnotations();
        int i = 0;
        int max = annotations.length;
        while (i < max) {
            if (i > 0) {
                buffer.append(' ');
            }
            this.disassembleAsModifier(annotations[i], buffer, lineSeparator, tabNumber + 1, mode);
            ++i;
        }
    }

    private void disassembleAsModifier(IRuntimeVisibleAnnotationsAttribute runtimeVisibleAnnotationsAttribute, StringBuffer buffer, String lineSeparator, int tabNumber, int mode) {
        IAnnotation[] annotations = runtimeVisibleAnnotationsAttribute.getAnnotations();
        int i = 0;
        int max = annotations.length;
        while (i < max) {
            if (i > 0) {
                this.writeNewLine(buffer, lineSeparator, tabNumber);
            }
            this.disassembleAsModifier(annotations[i], buffer, lineSeparator, tabNumber + 1, mode);
            ++i;
        }
    }

    private void disassembleTypeMembers(IClassFileReader classFileReader, char[] className, StringBuffer buffer, String lineSeparator, int tabNumber, int mode, boolean isEnum) {
        IFieldInfo[] fields = classFileReader.getFieldInfos();
        if (isEnum && this.checkMode(mode, 16)) {
            int index = 0;
            int fieldsLength = fields.length;
            IMethodInfo[] methods = classFileReader.getMethodInfos();
            char[][] constructorArguments = this.getConstructorArgumentsForEnum(methods);
            while (index < fieldsLength) {
                IFieldInfo fieldInfo = fields[index];
                int accessFlags = fieldInfo.getAccessFlags();
                if ((accessFlags & 0x4000) == 0) break;
                this.writeNewLine(buffer, lineSeparator, tabNumber);
                this.disassembleEnumConstants(fields[index], buffer, lineSeparator, tabNumber, constructorArguments, mode);
                ++index;
            }
            buffer.append(';');
            boolean foundSyntheticField = false;
            while (index < fieldsLength) {
                if (!foundSyntheticField && CharOperation.equals(TypeConstants.SYNTHETIC_ENUM_VALUES, fields[index].getName())) {
                    foundSyntheticField = true;
                } else {
                    this.writeNewLine(buffer, lineSeparator, tabNumber);
                    this.disassemble(fields[index], buffer, lineSeparator, tabNumber, mode);
                }
                ++index;
            }
            int i = 0;
            int max = methods.length;
            while (i < max) {
                char[] descriptor;
                IMethodInfo methodInfo = methods[i];
                if (CharOperation.equals(methodInfo.getName(), TypeConstants.VALUES)) {
                    descriptor = methodInfo.getDescriptor();
                    CharOperation.replace(descriptor, '/', '.');
                    if (Signature.getParameterCount(descriptor) == 0 && CharOperation.equals(this.returnClassName(Signature.getReturnType(descriptor), '.', mode), CharOperation.concat(new char[]{'[', 'L'}, className, new char[]{';'}))) {
                        // empty if block
                    }
                } else if (CharOperation.equals(methodInfo.getName(), TypeConstants.VALUEOF)) {
                    descriptor = methodInfo.getDescriptor();
                    CharOperation.replace(descriptor, '/', '.');
                    char[][] parameterTypes = Signature.getParameterTypes(descriptor);
                    if (parameterTypes.length == 1 && CharOperation.equals(parameterTypes[0], "Ljava.lang.String;".toCharArray()) && CharOperation.equals(this.returnClassName(Signature.getReturnType(descriptor), '.', mode), CharOperation.concat('L', className, ';'))) {
                        // empty if block
                    }
                } else if (!methodInfo.isClinit() && !methodInfo.isSynthetic()) {
                    if (methodInfo.isConstructor()) {
                        this.writeNewLine(buffer, lineSeparator, tabNumber);
                        this.disassembleEnumConstructor(classFileReader, className, methodInfo, buffer, lineSeparator, tabNumber, mode);
                    } else {
                        this.writeNewLine(buffer, lineSeparator, tabNumber);
                        this.disassemble(classFileReader, className, methodInfo, buffer, lineSeparator, tabNumber, mode);
                    }
                }
                ++i;
            }
        } else {
            int i = 0;
            int max = fields.length;
            while (i < max) {
                this.writeNewLine(buffer, lineSeparator, tabNumber);
                this.disassemble(fields[i], buffer, lineSeparator, tabNumber, mode);
                ++i;
            }
            IMethodInfo[] methods = classFileReader.getMethodInfos();
            int i2 = 0;
            int max2 = methods.length;
            while (i2 < max2) {
                this.writeNewLine(buffer, lineSeparator, tabNumber);
                this.disassemble(classFileReader, className, methods[i2], buffer, lineSeparator, tabNumber, mode);
                ++i2;
            }
        }
    }

    private char[][] getConstructorArgumentsForEnum(IMethodInfo[] methods) {
        int i = 0;
        int max = methods.length;
        while (i < max) {
            char[][] parameterTypes;
            int length;
            IMethodInfo methodInfo = methods[i];
            if (methodInfo.isConstructor() && (length = (parameterTypes = Signature.getParameterTypes(methodInfo.getDescriptor())).length) >= 2) {
                return CharOperation.subarray(parameterTypes, 2, length);
            }
            ++i;
        }
        return null;
    }

    private final void dumpTab(int tabNumber, StringBuffer buffer) {
        int i = 0;
        while (i < tabNumber) {
            buffer.append(Messages.disassembler_indentation);
            ++i;
        }
    }

    private final String dumpNewLineWithTabs(String lineSeparator, int tabNumber) {
        StringBuffer buffer = new StringBuffer();
        this.writeNewLine(buffer, lineSeparator, tabNumber);
        return String.valueOf(buffer);
    }

    public String getDescription() {
        return Messages.disassembler_description;
    }

    private IEnclosingMethodAttribute getEnclosingMethodAttribute(IClassFileReader classFileReader) {
        IClassFileAttribute[] attributes = classFileReader.getAttributes();
        int i = 0;
        int max = attributes.length;
        while (i < max) {
            if (CharOperation.equals(attributes[i].getAttributeName(), IAttributeNamesConstants.ENCLOSING_METHOD)) {
                return (IEnclosingMethodAttribute)attributes[i];
            }
            ++i;
        }
        return null;
    }

    private IClassFileAttribute getAttribute(char[] attributeName, ICodeAttribute codeAttribute) {
        IClassFileAttribute[] attributes = codeAttribute.getAttributes();
        int i = 0;
        int max = attributes.length;
        while (i < max) {
            if (CharOperation.equals(attributes[i].getAttributeName(), attributeName)) {
                return attributes[i];
            }
            ++i;
        }
        return null;
    }

    private char[][] getParameterNames(char[] methodDescriptor, ICodeAttribute codeAttribute, int accessFlags) {
        int paramCount = Signature.getParameterCount(methodDescriptor);
        char[][] parameterNames = new char[paramCount][];
        if (codeAttribute != null) {
            ILocalVariableAttribute localVariableAttribute = codeAttribute.getLocalVariableAttribute();
            if (localVariableAttribute != null) {
                ILocalVariableTableEntry[] entries = localVariableAttribute.getLocalVariableTable();
                int startingIndex = (accessFlags & 8) != 0 ? 0 : 1;
                int i = 0;
                while (i < paramCount) {
                    ILocalVariableTableEntry searchedEntry = this.getEntryFor(this.getLocalIndex(startingIndex, i, methodDescriptor), entries);
                    parameterNames[i] = searchedEntry != null ? searchedEntry.getName() : CharOperation.concat(Messages.disassembler_parametername.toCharArray(), Integer.toString(i).toCharArray());
                    ++i;
                }
            } else {
                int i = 0;
                while (i < paramCount) {
                    parameterNames[i] = CharOperation.concat(Messages.disassembler_parametername.toCharArray(), Integer.toString(i).toCharArray());
                    ++i;
                }
            }
        } else {
            int i = 0;
            while (i < paramCount) {
                parameterNames[i] = CharOperation.concat(Messages.disassembler_parametername.toCharArray(), Integer.toString(i).toCharArray());
                ++i;
            }
        }
        return parameterNames;
    }

    private int getLocalIndex(int startingSlot, int index, char[] methodDescriptor) {
        int slot = startingSlot;
        char[][] types = Signature.getParameterTypes(methodDescriptor);
        int i = 0;
        while (i < index) {
            char[] type = types[i];
            block0 : switch (type.length) {
                case 1: {
                    switch (type[0]) {
                        case 'D': 
                        case 'J': {
                            slot += 2;
                            break block0;
                        }
                    }
                    ++slot;
                    break;
                }
                default: {
                    ++slot;
                }
            }
            ++i;
        }
        return slot;
    }

    private ILocalVariableTableEntry getEntryFor(int index, ILocalVariableTableEntry[] entries) {
        int i = 0;
        int max = entries.length;
        while (i < max) {
            ILocalVariableTableEntry entry = entries[i];
            if (index == entry.getIndex()) {
                return entry;
            }
            ++i;
        }
        return null;
    }

    private char[] getSignatureForField(char[] fieldDescriptor) {
        char[] newFieldDescriptor = CharOperation.replaceOnCopy(fieldDescriptor, '/', '.');
        newFieldDescriptor = CharOperation.replaceOnCopy(newFieldDescriptor, '$', '%');
        char[] fieldDescriptorSignature = Signature.toCharArray(newFieldDescriptor);
        CharOperation.replace(fieldDescriptorSignature, '%', '$');
        return fieldDescriptorSignature;
    }

    private boolean isDeprecated(IClassFileReader classFileReader) {
        IClassFileAttribute[] attributes = classFileReader.getAttributes();
        int i = 0;
        int max = attributes.length;
        while (i < max) {
            if (CharOperation.equals(attributes[i].getAttributeName(), IAttributeNamesConstants.DEPRECATED)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private boolean isSynthetic(IClassFileReader classFileReader) {
        int flags = classFileReader.getAccessFlags();
        if ((flags & 0x1000) != 0) {
            return true;
        }
        IClassFileAttribute[] attributes = classFileReader.getAttributes();
        int i = 0;
        int max = attributes.length;
        while (i < max) {
            if (CharOperation.equals(attributes[i].getAttributeName(), IAttributeNamesConstants.SYNTHETIC)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private boolean checkMode(int mode, int flag) {
        return (mode & flag) != 0;
    }

    private boolean isCompact(int mode) {
        return (mode & 8) != 0;
    }

    private char[] returnClassName(char[] classInfoName, char separator, int mode) {
        int lastIndexOfSlash;
        if (classInfoName.length == 0) {
            return CharOperation.NO_CHAR;
        }
        if (this.isCompact(mode) && (lastIndexOfSlash = CharOperation.lastIndexOf(separator, classInfoName)) != -1) {
            return CharOperation.subarray(classInfoName, lastIndexOfSlash + 1, classInfoName.length);
        }
        return classInfoName;
    }

    private void writeNewLine(StringBuffer buffer, String lineSeparator, int tabNumber) {
        buffer.append(lineSeparator);
        this.dumpTab(tabNumber, buffer);
    }
}

