/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.Substitution;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;

public class CaptureBinding
extends TypeVariableBinding {
    public TypeBinding lowerBound;
    public WildcardBinding wildcard;
    public int captureID;
    public ReferenceBinding sourceType;
    public int position;

    public CaptureBinding(WildcardBinding wildcard, ReferenceBinding sourceType, int position, int captureID) {
        super(TypeConstants.WILDCARD_CAPTURE_NAME_PREFIX, null, 0, wildcard.environment);
        this.wildcard = wildcard;
        this.modifiers = 0x40000001;
        this.fPackage = wildcard.fPackage;
        this.sourceType = sourceType;
        this.position = position;
        this.captureID = captureID;
    }

    public char[] computeUniqueKey(boolean isLeaf) {
        StringBuffer buffer = new StringBuffer();
        if (isLeaf) {
            buffer.append(this.sourceType.computeUniqueKey(false));
            buffer.append('&');
        }
        buffer.append(TypeConstants.WILDCARD_CAPTURE);
        buffer.append(this.wildcard.computeUniqueKey(false));
        buffer.append(this.position);
        buffer.append(';');
        int length = buffer.length();
        char[] uniqueKey = new char[length];
        buffer.getChars(0, length, uniqueKey, 0);
        return uniqueKey;
    }

    public String debugName() {
        if (this.wildcard != null) {
            StringBuffer buffer = new StringBuffer(10);
            buffer.append(TypeConstants.WILDCARD_CAPTURE_NAME_PREFIX).append(this.captureID).append(TypeConstants.WILDCARD_CAPTURE_NAME_SUFFIX).append(this.wildcard.debugName());
            return buffer.toString();
        }
        return super.debugName();
    }

    public char[] genericTypeSignature() {
        if (this.genericTypeSignature == null) {
            this.genericTypeSignature = CharOperation.concat(TypeConstants.WILDCARD_CAPTURE, this.wildcard.genericTypeSignature());
        }
        return this.genericTypeSignature;
    }

    public void initializeBounds(Scope scope, ParameterizedTypeBinding capturedParameterizedType) {
        ReferenceBinding[] originalVariableInterfaces;
        ReferenceBinding[] substitutedVariableInterfaces;
        TypeVariableBinding wildcardVariable = this.wildcard.typeVariable();
        if (wildcardVariable == null) {
            TypeBinding originalWildcardBound = this.wildcard.bound;
            switch (this.wildcard.boundKind) {
                case 1: {
                    TypeBinding capturedWildcardBound = originalWildcardBound.capture(scope, this.position);
                    if (originalWildcardBound.isInterface()) {
                        this.superclass = scope.getJavaLangObject();
                        this.superInterfaces = new ReferenceBinding[]{(ReferenceBinding)capturedWildcardBound};
                    } else {
                        this.superclass = capturedWildcardBound.isArrayType() || capturedWildcardBound == this ? scope.getJavaLangObject() : (ReferenceBinding)capturedWildcardBound;
                        this.superInterfaces = Binding.NO_SUPERINTERFACES;
                    }
                    this.firstBound = capturedWildcardBound;
                    if ((capturedWildcardBound.tagBits & 0x20000000L) != 0L) break;
                    this.tagBits &= 0xFFFFFFFFDFFFFFFFL;
                    break;
                }
                case 0: {
                    this.superclass = scope.getJavaLangObject();
                    this.superInterfaces = Binding.NO_SUPERINTERFACES;
                    this.tagBits &= 0xFFFFFFFFDFFFFFFFL;
                    break;
                }
                case 2: {
                    this.superclass = scope.getJavaLangObject();
                    this.superInterfaces = Binding.NO_SUPERINTERFACES;
                    this.lowerBound = this.wildcard.bound;
                    if ((originalWildcardBound.tagBits & 0x20000000L) != 0L) break;
                    this.tagBits &= 0xFFFFFFFFDFFFFFFFL;
                }
            }
            return;
        }
        ReferenceBinding originalVariableSuperclass = wildcardVariable.superclass;
        ReferenceBinding substitutedVariableSuperclass = (ReferenceBinding)Scope.substitute((Substitution)capturedParameterizedType, originalVariableSuperclass);
        if (substitutedVariableSuperclass == this) {
            substitutedVariableSuperclass = originalVariableSuperclass;
        }
        if ((substitutedVariableInterfaces = Scope.substitute((Substitution)capturedParameterizedType, originalVariableInterfaces = wildcardVariable.superInterfaces())) != originalVariableInterfaces) {
            int i = 0;
            int length = substitutedVariableInterfaces.length;
            while (i < length) {
                if (substitutedVariableInterfaces[i] == this) {
                    substitutedVariableInterfaces[i] = originalVariableInterfaces[i];
                }
                ++i;
            }
        }
        TypeBinding originalWildcardBound = this.wildcard.bound;
        switch (this.wildcard.boundKind) {
            case 1: {
                TypeBinding capturedWildcardBound = originalWildcardBound.capture(scope, this.position);
                if (originalWildcardBound.isInterface()) {
                    this.superclass = substitutedVariableSuperclass;
                    if (substitutedVariableInterfaces == Binding.NO_SUPERINTERFACES) {
                        this.superInterfaces = new ReferenceBinding[]{(ReferenceBinding)capturedWildcardBound};
                    } else {
                        int length = substitutedVariableInterfaces.length;
                        ReferenceBinding[] referenceBindingArray = substitutedVariableInterfaces;
                        substitutedVariableInterfaces = new ReferenceBinding[length + 1];
                        System.arraycopy(referenceBindingArray, 0, substitutedVariableInterfaces, 1, length);
                        substitutedVariableInterfaces[0] = (ReferenceBinding)capturedWildcardBound;
                        this.superInterfaces = Scope.greaterLowerBound(substitutedVariableInterfaces);
                    }
                } else {
                    if (capturedWildcardBound.isArrayType() || capturedWildcardBound == this) {
                        this.superclass = substitutedVariableSuperclass;
                    } else {
                        this.superclass = (ReferenceBinding)capturedWildcardBound;
                        if (this.superclass.isSuperclassOf(substitutedVariableSuperclass)) {
                            this.superclass = substitutedVariableSuperclass;
                        }
                    }
                    this.superInterfaces = substitutedVariableInterfaces;
                }
                this.firstBound = capturedWildcardBound;
                if ((capturedWildcardBound.tagBits & 0x20000000L) != 0L) break;
                this.tagBits &= 0xFFFFFFFFDFFFFFFFL;
                break;
            }
            case 0: {
                this.superclass = substitutedVariableSuperclass;
                this.superInterfaces = substitutedVariableInterfaces;
                this.tagBits &= 0xFFFFFFFFDFFFFFFFL;
                break;
            }
            case 2: {
                this.superclass = substitutedVariableSuperclass;
                if (wildcardVariable.firstBound == substitutedVariableSuperclass || originalWildcardBound == substitutedVariableSuperclass) {
                    this.firstBound = substitutedVariableSuperclass;
                }
                this.superInterfaces = substitutedVariableInterfaces;
                this.lowerBound = originalWildcardBound;
                if ((originalWildcardBound.tagBits & 0x20000000L) != 0L) break;
                this.tagBits &= 0xFFFFFFFFDFFFFFFFL;
            }
        }
    }

    public boolean isCapture() {
        return true;
    }

    public boolean isEquivalentTo(TypeBinding otherType) {
        if (this == otherType) {
            return true;
        }
        if (otherType == null) {
            return false;
        }
        if (this.firstBound != null && this.firstBound.isArrayType() && this.firstBound.isCompatibleWith(otherType)) {
            return true;
        }
        switch (otherType.kind()) {
            case 516: 
            case 8196: {
                return ((WildcardBinding)otherType).boundCheck(this);
            }
        }
        return false;
    }

    public char[] readableName() {
        if (this.wildcard != null) {
            StringBuffer buffer = new StringBuffer(10);
            buffer.append(TypeConstants.WILDCARD_CAPTURE_NAME_PREFIX).append(this.captureID).append(TypeConstants.WILDCARD_CAPTURE_NAME_SUFFIX).append(this.wildcard.readableName());
            int length = buffer.length();
            char[] name = new char[length];
            buffer.getChars(0, length, name, 0);
            return name;
        }
        return super.readableName();
    }

    public char[] shortReadableName() {
        if (this.wildcard != null) {
            StringBuffer buffer = new StringBuffer(10);
            buffer.append(TypeConstants.WILDCARD_CAPTURE_NAME_PREFIX).append(this.captureID).append(TypeConstants.WILDCARD_CAPTURE_NAME_SUFFIX).append(this.wildcard.shortReadableName());
            int length = buffer.length();
            char[] name = new char[length];
            buffer.getChars(0, length, name, 0);
            return name;
        }
        return super.shortReadableName();
    }

    public String toString() {
        if (this.wildcard != null) {
            StringBuffer buffer = new StringBuffer(10);
            buffer.append(TypeConstants.WILDCARD_CAPTURE_NAME_PREFIX).append(this.captureID).append(TypeConstants.WILDCARD_CAPTURE_NAME_SUFFIX).append(this.wildcard);
            return buffer.toString();
        }
        return super.toString();
    }
}

