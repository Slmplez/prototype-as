/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import java.util.Arrays;
import java.util.Comparator;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationHolder;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.CaptureBinding;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticArgumentBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;

public abstract class ReferenceBinding
extends TypeBinding {
    public char[][] compoundName;
    public char[] sourceName;
    public int modifiers;
    public PackageBinding fPackage;
    char[] fileName;
    char[] constantPoolName;
    char[] signature;
    private SimpleLookupTable compatibleCache;
    public static final ReferenceBinding LUB_GENERIC = new ReferenceBinding(){};
    private static final Comparator FIELD_COMPARATOR = new Comparator(){

        public int compare(Object o1, Object o2) {
            char[] n1 = ((FieldBinding)o1).name;
            char[] n2 = ((FieldBinding)o2).name;
            return ReferenceBinding.compare(n1, n2, n1.length, n2.length);
        }
    };
    private static final Comparator METHOD_COMPARATOR = new Comparator(){

        public int compare(Object o1, Object o2) {
            MethodBinding m1 = (MethodBinding)o1;
            MethodBinding m2 = (MethodBinding)o2;
            char[] s1 = m1.selector;
            char[] s2 = m2.selector;
            int c = ReferenceBinding.compare(s1, s2, s1.length, s2.length);
            return c == 0 ? m1.parameters.length - m2.parameters.length : c;
        }
    };

    public static FieldBinding binarySearch(char[] name, FieldBinding[] sortedFields) {
        if (sortedFields == null) {
            return null;
        }
        int max = sortedFields.length;
        if (max == 0) {
            return null;
        }
        int left = 0;
        int right = max - 1;
        int nameLength = name.length;
        int mid = 0;
        while (left <= right) {
            mid = left + (right - left) / 2;
            char[] midName = sortedFields[mid].name;
            int compare = ReferenceBinding.compare(name, sortedFields[mid].name, nameLength, midName.length);
            if (compare < 0) {
                right = mid - 1;
                continue;
            }
            if (compare > 0) {
                left = mid + 1;
                continue;
            }
            return sortedFields[mid];
        }
        return null;
    }

    public static long binarySearch(char[] selector, MethodBinding[] sortedMethods) {
        if (sortedMethods == null) {
            return -1L;
        }
        int max = sortedMethods.length;
        if (max == 0) {
            return -1L;
        }
        int left = 0;
        int right = max - 1;
        int selectorLength = selector.length;
        int mid = 0;
        while (left <= right) {
            mid = left + (right - left) / 2;
            char[] midSelector = sortedMethods[mid].selector;
            int compare = ReferenceBinding.compare(selector, sortedMethods[mid].selector, selectorLength, midSelector.length);
            if (compare < 0) {
                right = mid - 1;
                continue;
            }
            if (compare > 0) {
                left = mid + 1;
                continue;
            }
            int start = mid;
            int end = mid;
            while (start > left && CharOperation.equals(sortedMethods[start - 1].selector, selector)) {
                --start;
            }
            while (end < right && CharOperation.equals(sortedMethods[end + 1].selector, selector)) {
                ++end;
            }
            return (long)start + ((long)end << 32);
        }
        return -1L;
    }

    static int compare(char[] str1, char[] str2, int len1, int len2) {
        int n = Math.min(len1, len2);
        int i = 0;
        while (n-- != 0) {
            char c2;
            char c1 = str1[i];
            if (c1 == (c2 = str2[i++])) continue;
            return c1 - c2;
        }
        return len1 - len2;
    }

    public static void sortFields(FieldBinding[] sortedFields, int left, int right) {
        Arrays.sort(sortedFields, left, right, FIELD_COMPARATOR);
    }

    public static void sortMethods(MethodBinding[] sortedMethods, int left, int right) {
        Arrays.sort(sortedMethods, left, right, METHOD_COMPARATOR);
    }

    public FieldBinding[] availableFields() {
        return this.fields();
    }

    public MethodBinding[] availableMethods() {
        return this.methods();
    }

    public boolean canBeInstantiated() {
        return (this.modifiers & 0x6600) == 0;
    }

    public final boolean canBeSeenBy(PackageBinding invocationPackage) {
        if (this.isPublic()) {
            return true;
        }
        if (this.isPrivate()) {
            return false;
        }
        return invocationPackage == this.fPackage;
    }

    public final boolean canBeSeenBy(ReferenceBinding receiverType, ReferenceBinding invocationType) {
        block18: {
            block19: {
                block20: {
                    if (this.isPublic()) {
                        return true;
                    }
                    if (invocationType == this && invocationType == receiverType) {
                        return true;
                    }
                    if (this.isProtected()) {
                        if (invocationType == this) {
                            return true;
                        }
                        if (invocationType.fPackage == this.fPackage) {
                            return true;
                        }
                        TypeBinding currentType = invocationType.erasure();
                        TypeBinding declaringClass = this.enclosingType().erasure();
                        if (declaringClass == invocationType) {
                            return true;
                        }
                        if (declaringClass == null) {
                            return false;
                        }
                        do {
                            if (currentType.findSuperTypeOriginatingFrom(declaringClass) == null) continue;
                            return true;
                        } while ((currentType = currentType.enclosingType()) != null);
                        return false;
                    }
                    if (!this.isPrivate()) break block18;
                    if (receiverType == this || receiverType == this.enclosingType()) break block19;
                    if (!receiverType.isTypeVariable()) break block20;
                    TypeVariableBinding typeVariable = (TypeVariableBinding)receiverType;
                    if (typeVariable.environment.globalOptions.complianceLevel <= 0x320000L && (typeVariable.isErasureBoundTo(this.erasure()) || typeVariable.isErasureBoundTo(this.enclosingType().erasure()))) break block19;
                }
                return false;
            }
            if (invocationType != this) {
                ReferenceBinding outerInvocationType = invocationType;
                ReferenceBinding temp = outerInvocationType.enclosingType();
                while (temp != null) {
                    outerInvocationType = temp;
                    temp = temp.enclosingType();
                }
                ReferenceBinding outerDeclaringClass = (ReferenceBinding)this.erasure();
                temp = outerDeclaringClass.enclosingType();
                while (temp != null) {
                    outerDeclaringClass = temp;
                    temp = temp.enclosingType();
                }
                if (outerInvocationType != outerDeclaringClass) {
                    return false;
                }
            }
            return true;
        }
        if (invocationType.fPackage != this.fPackage) {
            return false;
        }
        ReferenceBinding currentType = receiverType;
        TypeBinding originalDeclaringClass = (this.enclosingType() == null ? this : this.enclosingType()).original();
        do {
            if (currentType.isCapture() ? originalDeclaringClass == currentType.erasure().original() : originalDeclaringClass == currentType.original()) {
                return true;
            }
            PackageBinding currentPackage = currentType.fPackage;
            if (currentPackage == null || currentPackage == this.fPackage) continue;
            return false;
        } while ((currentType = currentType.superclass()) != null);
        return false;
    }

    public final boolean canBeSeenBy(Scope scope) {
        if (this.isPublic()) {
            return true;
        }
        SourceTypeBinding invocationType = scope.enclosingSourceType();
        if (invocationType == this) {
            return true;
        }
        if (invocationType == null) {
            return !this.isPrivate() && scope.getCurrentPackage() == this.fPackage;
        }
        if (this.isProtected()) {
            if (invocationType.fPackage == this.fPackage) {
                return true;
            }
            TypeBinding declaringClass = this.enclosingType();
            if (declaringClass == null) {
                return false;
            }
            declaringClass = declaringClass.erasure();
            TypeBinding currentType = invocationType.erasure();
            do {
                if (declaringClass == invocationType) {
                    return true;
                }
                if (currentType.findSuperTypeOriginatingFrom(declaringClass) == null) continue;
                return true;
            } while ((currentType = currentType.enclosingType()) != null);
            return false;
        }
        if (this.isPrivate()) {
            ReferenceBinding outerInvocationType = invocationType;
            ReferenceBinding temp = outerInvocationType.enclosingType();
            while (temp != null) {
                outerInvocationType = temp;
                temp = temp.enclosingType();
            }
            ReferenceBinding outerDeclaringClass = (ReferenceBinding)this.erasure();
            temp = outerDeclaringClass.enclosingType();
            while (temp != null) {
                outerDeclaringClass = temp;
                temp = temp.enclosingType();
            }
            return outerInvocationType == outerDeclaringClass;
        }
        return invocationType.fPackage == this.fPackage;
    }

    public char[] computeGenericTypeSignature(TypeVariableBinding[] typeVariables) {
        char[] typeSig;
        boolean isMemberOfGeneric;
        boolean bl = isMemberOfGeneric = this.isMemberType() && (this.enclosingType().modifiers & 0x40000000) != 0;
        if (typeVariables == Binding.NO_TYPE_VARIABLES && !isMemberOfGeneric) {
            return this.signature();
        }
        StringBuffer sig = new StringBuffer(10);
        if (isMemberOfGeneric) {
            typeSig = this.enclosingType().genericTypeSignature();
            sig.append(typeSig, 0, typeSig.length - 1);
            sig.append('.');
            sig.append(this.sourceName);
        } else {
            typeSig = this.signature();
            sig.append(typeSig, 0, typeSig.length - 1);
        }
        if (typeVariables == Binding.NO_TYPE_VARIABLES) {
            sig.append(';');
        } else {
            sig.append('<');
            int i = 0;
            int length = typeVariables.length;
            while (i < length) {
                sig.append(typeVariables[i].genericTypeSignature());
                ++i;
            }
            sig.append(">;");
        }
        int sigLength = sig.length();
        char[] result = new char[sigLength];
        sig.getChars(0, sigLength, result, 0);
        return result;
    }

    public void computeId() {
        block0 : switch (this.compoundName.length) {
            case 3: {
                if (!CharOperation.equals(TypeConstants.JAVA, this.compoundName[0])) {
                    return;
                }
                char[] packageName = this.compoundName[1];
                if (packageName.length == 0) {
                    return;
                }
                char[] typeName = this.compoundName[2];
                if (typeName.length == 0) {
                    return;
                }
                if (!CharOperation.equals(TypeConstants.LANG, this.compoundName[1])) {
                    switch (packageName[0]) {
                        case 'i': {
                            if (CharOperation.equals(packageName, TypeConstants.IO)) {
                                switch (typeName[0]) {
                                    case 'E': {
                                        if (CharOperation.equals(typeName, TypeConstants.JAVA_IO_EXTERNALIZABLE[2])) {
                                            this.id = 56;
                                        }
                                        return;
                                    }
                                    case 'I': {
                                        if (CharOperation.equals(typeName, TypeConstants.JAVA_IO_IOEXCEPTION[2])) {
                                            this.id = 58;
                                        }
                                        return;
                                    }
                                    case 'O': {
                                        if (CharOperation.equals(typeName, TypeConstants.JAVA_IO_OBJECTSTREAMEXCEPTION[2])) {
                                            this.id = 57;
                                        }
                                        return;
                                    }
                                    case 'P': {
                                        if (CharOperation.equals(typeName, TypeConstants.JAVA_IO_PRINTSTREAM[2])) {
                                            this.id = 53;
                                        }
                                        return;
                                    }
                                    case 'S': {
                                        if (CharOperation.equals(typeName, TypeConstants.JAVA_IO_SERIALIZABLE[2])) {
                                            this.id = 37;
                                        }
                                        return;
                                    }
                                }
                            }
                            return;
                        }
                        case 'u': {
                            if (CharOperation.equals(packageName, TypeConstants.UTIL)) {
                                switch (typeName[0]) {
                                    case 'C': {
                                        if (CharOperation.equals(typeName, TypeConstants.JAVA_UTIL_COLLECTION[2])) {
                                            this.id = 59;
                                        }
                                        return;
                                    }
                                    case 'I': {
                                        if (CharOperation.equals(typeName, TypeConstants.JAVA_UTIL_ITERATOR[2])) {
                                            this.id = 39;
                                        }
                                        return;
                                    }
                                }
                            }
                            return;
                        }
                    }
                    return;
                }
                switch (typeName[0]) {
                    case 'A': {
                        switch (typeName.length) {
                            case 13: {
                                if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_AUTOCLOSEABLE[2])) {
                                    this.id = 62;
                                }
                                return;
                            }
                            case 14: {
                                if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_ASSERTIONERROR[2])) {
                                    this.id = 35;
                                }
                                return;
                            }
                        }
                        return;
                    }
                    case 'B': {
                        switch (typeName.length) {
                            case 4: {
                                if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_BYTE[2])) {
                                    this.id = 26;
                                }
                                return;
                            }
                            case 7: {
                                if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_BOOLEAN[2])) {
                                    this.id = 33;
                                }
                                return;
                            }
                        }
                        return;
                    }
                    case 'C': {
                        switch (typeName.length) {
                            case 5: {
                                if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_CLASS[2])) {
                                    this.id = 16;
                                }
                                return;
                            }
                            case 9: {
                                if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_CHARACTER[2])) {
                                    this.id = 28;
                                } else if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_CLONEABLE[2])) {
                                    this.id = 36;
                                }
                                return;
                            }
                            case 22: {
                                if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_CLASSNOTFOUNDEXCEPTION[2])) {
                                    this.id = 23;
                                }
                                return;
                            }
                        }
                        return;
                    }
                    case 'D': {
                        switch (typeName.length) {
                            case 6: {
                                if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_DOUBLE[2])) {
                                    this.id = 32;
                                }
                                return;
                            }
                            case 10: {
                                if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_DEPRECATED[2])) {
                                    this.id = 44;
                                }
                                return;
                            }
                        }
                        return;
                    }
                    case 'E': {
                        switch (typeName.length) {
                            case 4: {
                                if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_ENUM[2])) {
                                    this.id = 41;
                                }
                                return;
                            }
                            case 5: {
                                if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_ERROR[2])) {
                                    this.id = 19;
                                }
                                return;
                            }
                            case 9: {
                                if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_EXCEPTION[2])) {
                                    this.id = 25;
                                }
                                return;
                            }
                        }
                        return;
                    }
                    case 'F': {
                        if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_FLOAT[2])) {
                            this.id = 31;
                        }
                        return;
                    }
                    case 'I': {
                        switch (typeName.length) {
                            case 7: {
                                if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_INTEGER[2])) {
                                    this.id = 29;
                                }
                                return;
                            }
                            case 8: {
                                if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_ITERABLE[2])) {
                                    this.id = 38;
                                }
                                return;
                            }
                            case 24: {
                                if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_ILLEGALARGUMENTEXCEPTION[2])) {
                                    this.id = 42;
                                }
                                return;
                            }
                        }
                        return;
                    }
                    case 'L': {
                        if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_LONG[2])) {
                            this.id = 30;
                        }
                        return;
                    }
                    case 'N': {
                        if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_NOCLASSDEFERROR[2])) {
                            this.id = 22;
                        }
                        return;
                    }
                    case 'O': {
                        switch (typeName.length) {
                            case 6: {
                                if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_OBJECT[2])) {
                                    this.id = 1;
                                }
                                return;
                            }
                            case 8: {
                                if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_OVERRIDE[2])) {
                                    this.id = 47;
                                }
                                return;
                            }
                        }
                        return;
                    }
                    case 'R': {
                        if (!CharOperation.equals(typeName, TypeConstants.JAVA_LANG_RUNTIMEEXCEPTION[2])) break block0;
                        this.id = 24;
                        break block0;
                    }
                    case 'S': {
                        switch (typeName.length) {
                            case 5: {
                                if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_SHORT[2])) {
                                    this.id = 27;
                                }
                                return;
                            }
                            case 6: {
                                if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_STRING[2])) {
                                    this.id = 11;
                                } else if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_SYSTEM[2])) {
                                    this.id = 18;
                                }
                                return;
                            }
                            case 11: {
                                if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_SAFEVARARGS[2])) {
                                    this.id = 60;
                                }
                                return;
                            }
                            case 12: {
                                if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_STRINGBUFFER[2])) {
                                    this.id = 17;
                                }
                                return;
                            }
                            case 13: {
                                if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_STRINGBUILDER[2])) {
                                    this.id = 40;
                                }
                                return;
                            }
                            case 16: {
                                if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_SUPPRESSWARNINGS[2])) {
                                    this.id = 49;
                                }
                                return;
                            }
                        }
                        return;
                    }
                    case 'T': {
                        if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_THROWABLE[2])) {
                            this.id = 21;
                        }
                        return;
                    }
                    case 'V': {
                        if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_VOID[2])) {
                            this.id = 34;
                        }
                        return;
                    }
                }
                break;
            }
            case 4: {
                if (!CharOperation.equals(TypeConstants.JAVA, this.compoundName[0])) {
                    return;
                }
                char[] packageName = this.compoundName[1];
                if (packageName.length == 0) {
                    return;
                }
                packageName = this.compoundName[2];
                if (packageName.length == 0) {
                    return;
                }
                char[] typeName = this.compoundName[3];
                if (typeName.length == 0) {
                    return;
                }
                switch (packageName[0]) {
                    case 'a': {
                        if (CharOperation.equals(packageName, TypeConstants.ANNOTATION)) {
                            switch (typeName[0]) {
                                case 'A': {
                                    if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_ANNOTATION_ANNOTATION[3])) {
                                        this.id = 43;
                                    }
                                    return;
                                }
                                case 'D': {
                                    if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_ANNOTATION_DOCUMENTED[3])) {
                                        this.id = 45;
                                    }
                                    return;
                                }
                                case 'E': {
                                    if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_ANNOTATION_ELEMENTTYPE[3])) {
                                        this.id = 52;
                                    }
                                    return;
                                }
                                case 'I': {
                                    if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_ANNOTATION_INHERITED[3])) {
                                        this.id = 46;
                                    }
                                    return;
                                }
                                case 'R': {
                                    switch (typeName.length) {
                                        case 9: {
                                            if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_ANNOTATION_RETENTION[3])) {
                                                this.id = 48;
                                            }
                                            return;
                                        }
                                        case 15: {
                                            if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_ANNOTATION_RETENTIONPOLICY[3])) {
                                                this.id = 51;
                                            }
                                            return;
                                        }
                                    }
                                    return;
                                }
                                case 'T': {
                                    if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_ANNOTATION_TARGET[3])) {
                                        this.id = 50;
                                    }
                                    return;
                                }
                            }
                        }
                        return;
                    }
                    case 'i': {
                        if (CharOperation.equals(packageName, TypeConstants.INVOKE)) {
                            if (typeName.length == 0) {
                                return;
                            }
                            switch (typeName[0]) {
                                case 'M': {
                                    if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_INVOKE_METHODHANDLE_$_POLYMORPHICSIGNATURE[3])) {
                                        this.id = 61;
                                    }
                                    return;
                                }
                            }
                        }
                        return;
                    }
                    case 'r': {
                        if (CharOperation.equals(packageName, TypeConstants.REFLECT)) {
                            switch (typeName[0]) {
                                case 'C': {
                                    if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_REFLECT_CONSTRUCTOR[2])) {
                                        this.id = 20;
                                    }
                                    return;
                                }
                                case 'F': {
                                    if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_REFLECT_FIELD[2])) {
                                        this.id = 54;
                                    }
                                    return;
                                }
                                case 'M': {
                                    if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_REFLECT_METHOD[2])) {
                                        this.id = 55;
                                    }
                                    return;
                                }
                            }
                        }
                        return;
                    }
                }
                break;
            }
            case 5: {
                if (!CharOperation.equals(TypeConstants.JAVA, this.compoundName[0])) {
                    return;
                }
                char[] packageName = this.compoundName[1];
                if (packageName.length == 0) {
                    return;
                }
                if (!CharOperation.equals(TypeConstants.LANG, packageName)) break;
                packageName = this.compoundName[2];
                if (packageName.length == 0) {
                    return;
                }
                switch (packageName[0]) {
                    case 'i': {
                        if (CharOperation.equals(packageName, TypeConstants.INVOKE)) {
                            char[] typeName = this.compoundName[3];
                            if (typeName.length == 0) {
                                return;
                            }
                            switch (typeName[0]) {
                                case 'M': {
                                    char[] memberTypeName = this.compoundName[4];
                                    if (memberTypeName.length == 0) {
                                        return;
                                    }
                                    if (CharOperation.equals(typeName, TypeConstants.JAVA_LANG_INVOKE_METHODHANDLE_POLYMORPHICSIGNATURE[3]) && CharOperation.equals(memberTypeName, TypeConstants.JAVA_LANG_INVOKE_METHODHANDLE_POLYMORPHICSIGNATURE[4])) {
                                        this.id = 61;
                                    }
                                    return;
                                }
                            }
                        }
                        return;
                    }
                }
                return;
            }
        }
    }

    public char[] computeUniqueKey(boolean isLeaf) {
        if (!isLeaf) {
            return this.signature();
        }
        return this.genericTypeSignature();
    }

    public char[] constantPoolName() {
        if (this.constantPoolName != null) {
            return this.constantPoolName;
        }
        this.constantPoolName = CharOperation.concatWith(this.compoundName, '/');
        return this.constantPoolName;
    }

    public String debugName() {
        return this.compoundName != null ? new String(this.readableName()) : "UNNAMED TYPE";
    }

    public final int depth() {
        int depth = 0;
        ReferenceBinding current = this;
        while ((current = current.enclosingType()) != null) {
            ++depth;
        }
        return depth;
    }

    public boolean detectAnnotationCycle() {
        if ((this.tagBits & 0x100000000L) != 0L) {
            return false;
        }
        if ((this.tagBits & 0x80000000L) != 0L) {
            return true;
        }
        this.tagBits |= 0x80000000L;
        MethodBinding[] currentMethods = this.methods();
        boolean inCycle = false;
        int i = 0;
        int l = currentMethods.length;
        while (i < l) {
            MethodDeclaration decl;
            TypeBinding returnType = currentMethods[i].returnType.leafComponentType().erasure();
            if (this == returnType) {
                if (this instanceof SourceTypeBinding) {
                    decl = (MethodDeclaration)currentMethods[i].sourceMethod();
                    ((SourceTypeBinding)this).scope.problemReporter().annotationCircularity(this, this, decl != null ? decl.returnType : null);
                }
            } else if (returnType.isAnnotationType() && ((ReferenceBinding)returnType).detectAnnotationCycle()) {
                if (this instanceof SourceTypeBinding) {
                    decl = (MethodDeclaration)currentMethods[i].sourceMethod();
                    ((SourceTypeBinding)this).scope.problemReporter().annotationCircularity(this, returnType, decl != null ? decl.returnType : null);
                }
                inCycle = true;
            }
            ++i;
        }
        if (inCycle) {
            return true;
        }
        this.tagBits |= 0x100000000L;
        return false;
    }

    public final ReferenceBinding enclosingTypeAt(int relativeDepth) {
        ReferenceBinding current = this;
        while (relativeDepth-- > 0 && current != null) {
            current = current.enclosingType();
        }
        return current;
    }

    public int enumConstantCount() {
        int count = 0;
        FieldBinding[] fields = this.fields();
        int i = 0;
        int length = fields.length;
        while (i < length) {
            if ((fields[i].modifiers & 0x4000) != 0) {
                ++count;
            }
            ++i;
        }
        return count;
    }

    public int fieldCount() {
        return this.fields().length;
    }

    public FieldBinding[] fields() {
        return Binding.NO_FIELDS;
    }

    public final int getAccessFlags() {
        return this.modifiers & 0xFFFF;
    }

    public AnnotationBinding[] getAnnotations() {
        return this.retrieveAnnotations(this);
    }

    public long getAnnotationTagBits() {
        return this.tagBits;
    }

    public int getEnclosingInstancesSlotSize() {
        if (this.isStatic()) {
            return 0;
        }
        return this.enclosingType() == null ? 0 : 1;
    }

    public MethodBinding getExactConstructor(TypeBinding[] argumentTypes) {
        return null;
    }

    public MethodBinding getExactMethod(char[] selector, TypeBinding[] argumentTypes, CompilationUnitScope refScope) {
        return null;
    }

    public FieldBinding getField(char[] fieldName, boolean needResolve) {
        return null;
    }

    public char[] getFileName() {
        return this.fileName;
    }

    public ReferenceBinding getMemberType(char[] typeName) {
        ReferenceBinding[] memberTypes = this.memberTypes();
        int i = memberTypes.length;
        while (--i >= 0) {
            if (!CharOperation.equals(memberTypes[i].sourceName, typeName)) continue;
            return memberTypes[i];
        }
        return null;
    }

    public MethodBinding[] getMethods(char[] selector) {
        return Binding.NO_METHODS;
    }

    public MethodBinding[] getMethods(char[] selector, int suggestedParameterLength) {
        return this.getMethods(selector);
    }

    public int getOuterLocalVariablesSlotSize() {
        return 0;
    }

    public PackageBinding getPackage() {
        return this.fPackage;
    }

    public TypeVariableBinding getTypeVariable(char[] variableName) {
        TypeVariableBinding[] typeVariables = this.typeVariables();
        int i = typeVariables.length;
        while (--i >= 0) {
            if (!CharOperation.equals(typeVariables[i].sourceName, variableName)) continue;
            return typeVariables[i];
        }
        return null;
    }

    public int hashCode() {
        return this.compoundName == null || this.compoundName.length == 0 ? super.hashCode() : CharOperation.hashCode(this.compoundName[this.compoundName.length - 1]);
    }

    public boolean hasIncompatibleSuperType(ReferenceBinding otherType) {
        TypeBinding match;
        if (this == otherType) {
            return false;
        }
        ReferenceBinding[] interfacesToVisit = null;
        int nextPosition = 0;
        ReferenceBinding currentType = this;
        do {
            if ((match = otherType.findSuperTypeOriginatingFrom(currentType)) != null && match.isProvablyDistinct(currentType)) {
                return true;
            }
            ReferenceBinding[] itsInterfaces = currentType.superInterfaces();
            if (itsInterfaces == null || itsInterfaces == Binding.NO_SUPERINTERFACES) continue;
            if (interfacesToVisit == null) {
                interfacesToVisit = itsInterfaces;
                nextPosition = interfacesToVisit.length;
                continue;
            }
            int itsLength = itsInterfaces.length;
            if (nextPosition + itsLength >= interfacesToVisit.length) {
                ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
            }
            int a = 0;
            while (a < itsLength) {
                block16: {
                    ReferenceBinding next = itsInterfaces[a];
                    int b = 0;
                    while (b < nextPosition) {
                        if (next != interfacesToVisit[b]) {
                            ++b;
                            continue;
                        }
                        break block16;
                    }
                    interfacesToVisit[nextPosition++] = next;
                }
                ++a;
            }
        } while ((currentType = currentType.superclass()) != null);
        int i = 0;
        while (i < nextPosition) {
            currentType = interfacesToVisit[i];
            if (currentType == otherType) {
                return false;
            }
            match = otherType.findSuperTypeOriginatingFrom(currentType);
            if (match != null && match.isProvablyDistinct(currentType)) {
                return true;
            }
            ReferenceBinding[] itsInterfaces = currentType.superInterfaces();
            if (itsInterfaces != null && itsInterfaces != Binding.NO_SUPERINTERFACES) {
                int itsLength = itsInterfaces.length;
                if (nextPosition + itsLength >= interfacesToVisit.length) {
                    ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                    interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                    System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
                }
                int a = 0;
                while (a < itsLength) {
                    block17: {
                        ReferenceBinding next = itsInterfaces[a];
                        int b = 0;
                        while (b < nextPosition) {
                            if (next != interfacesToVisit[b]) {
                                ++b;
                                continue;
                            }
                            break block17;
                        }
                        interfacesToVisit[nextPosition++] = next;
                    }
                    ++a;
                }
            }
            ++i;
        }
        return false;
    }

    public boolean hasMemberTypes() {
        return false;
    }

    public final boolean hasRestrictedAccess() {
        return (this.modifiers & 0x40000) != 0;
    }

    public boolean implementsInterface(ReferenceBinding anInterface, boolean searchHierarchy) {
        if (this == anInterface) {
            return true;
        }
        ReferenceBinding[] interfacesToVisit = null;
        int nextPosition = 0;
        ReferenceBinding currentType = this;
        do {
            ReferenceBinding[] itsInterfaces;
            if ((itsInterfaces = currentType.superInterfaces()) == null || itsInterfaces == Binding.NO_SUPERINTERFACES) continue;
            if (interfacesToVisit == null) {
                interfacesToVisit = itsInterfaces;
                nextPosition = interfacesToVisit.length;
                continue;
            }
            int itsLength = itsInterfaces.length;
            if (nextPosition + itsLength >= interfacesToVisit.length) {
                ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
            }
            int a = 0;
            while (a < itsLength) {
                block14: {
                    ReferenceBinding next = itsInterfaces[a];
                    int b = 0;
                    while (b < nextPosition) {
                        if (next != interfacesToVisit[b]) {
                            ++b;
                            continue;
                        }
                        break block14;
                    }
                    interfacesToVisit[nextPosition++] = next;
                }
                ++a;
            }
        } while (searchHierarchy && (currentType = currentType.superclass()) != null);
        int i = 0;
        while (i < nextPosition) {
            currentType = interfacesToVisit[i];
            if (currentType.isEquivalentTo(anInterface)) {
                return true;
            }
            ReferenceBinding[] itsInterfaces = currentType.superInterfaces();
            if (itsInterfaces != null && itsInterfaces != Binding.NO_SUPERINTERFACES) {
                int itsLength = itsInterfaces.length;
                if (nextPosition + itsLength >= interfacesToVisit.length) {
                    ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                    interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                    System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
                }
                int a = 0;
                while (a < itsLength) {
                    block15: {
                        ReferenceBinding next = itsInterfaces[a];
                        int b = 0;
                        while (b < nextPosition) {
                            if (next != interfacesToVisit[b]) {
                                ++b;
                                continue;
                            }
                            break block15;
                        }
                        interfacesToVisit[nextPosition++] = next;
                    }
                    ++a;
                }
            }
            ++i;
        }
        return false;
    }

    boolean implementsMethod(MethodBinding method) {
        char[] selector = method.selector;
        ReferenceBinding type = this;
        while (type != null) {
            MethodBinding[] methods = type.methods();
            long range = ReferenceBinding.binarySearch(selector, methods);
            if (range >= 0L) {
                int start = (int)range;
                int end = (int)(range >> 32);
                int i = start;
                while (i <= end) {
                    if (methods[i].areParametersEqual(method)) {
                        return true;
                    }
                    ++i;
                }
            }
            type = type.superclass();
        }
        return false;
    }

    public final boolean isAbstract() {
        return (this.modifiers & 0x400) != 0;
    }

    public boolean isAnnotationType() {
        return (this.modifiers & 0x2000) != 0;
    }

    public final boolean isBinaryBinding() {
        return (this.tagBits & 0x40L) != 0L;
    }

    public boolean isClass() {
        return (this.modifiers & 0x6200) == 0;
    }

    public boolean isCompatibleWith(TypeBinding otherType) {
        if (otherType == this) {
            return true;
        }
        if (otherType.id == 1) {
            return true;
        }
        if (this.compatibleCache == null) {
            this.compatibleCache = new SimpleLookupTable(3);
            Object result = null;
        } else {
            Object result = this.compatibleCache.get(otherType);
            if (result != null) {
                return result == Boolean.TRUE;
            }
        }
        this.compatibleCache.put(otherType, Boolean.FALSE);
        if (this.isCompatibleWith0(otherType)) {
            this.compatibleCache.put(otherType, Boolean.TRUE);
            return true;
        }
        return false;
    }

    private boolean isCompatibleWith0(TypeBinding otherType) {
        if (otherType == this) {
            return true;
        }
        if (otherType.id == 1) {
            return true;
        }
        if (this.isEquivalentTo(otherType)) {
            return true;
        }
        switch (otherType.kind()) {
            case 516: 
            case 8196: {
                return false;
            }
            case 4100: {
                if (otherType.isCapture()) {
                    CaptureBinding otherCapture = (CaptureBinding)otherType;
                    TypeBinding otherLowerBound = otherCapture.lowerBound;
                    if (otherLowerBound != null) {
                        if (otherLowerBound.isArrayType()) {
                            return false;
                        }
                        return this.isCompatibleWith(otherLowerBound);
                    }
                }
            }
            case 4: 
            case 260: 
            case 1028: 
            case 2052: {
                switch (this.kind()) {
                    case 260: 
                    case 1028: 
                    case 2052: {
                        if (this.erasure() != otherType.erasure()) break;
                        return false;
                    }
                }
                ReferenceBinding otherReferenceType = (ReferenceBinding)otherType;
                if (otherReferenceType.isInterface()) {
                    return this.implementsInterface(otherReferenceType, true);
                }
                if (this.isInterface()) {
                    return false;
                }
                return otherReferenceType.isSuperclassOf(this);
            }
        }
        return false;
    }

    public final boolean isDefault() {
        return (this.modifiers & 7) == 0;
    }

    public final boolean isDeprecated() {
        return (this.modifiers & 0x100000) != 0;
    }

    public boolean isEnum() {
        return (this.modifiers & 0x4000) != 0;
    }

    public final boolean isFinal() {
        return (this.modifiers & 0x10) != 0;
    }

    public boolean isHierarchyBeingConnected() {
        return (this.tagBits & 0x200L) == 0L && (this.tagBits & 0x100L) != 0L;
    }

    public boolean isHierarchyBeingActivelyConnected() {
        return (this.tagBits & 0x200L) == 0L && (this.tagBits & 0x100L) != 0L && (this.tagBits & 0x80000L) == 0L;
    }

    public boolean isHierarchyConnected() {
        return true;
    }

    public boolean isInterface() {
        return (this.modifiers & 0x200) != 0;
    }

    public final boolean isPrivate() {
        return (this.modifiers & 2) != 0;
    }

    public final boolean isOrEnclosedByPrivateType() {
        if (this.isLocalType()) {
            return true;
        }
        ReferenceBinding type = this;
        while (type != null) {
            if ((type.modifiers & 2) != 0) {
                return true;
            }
            type = type.enclosingType();
        }
        return false;
    }

    public final boolean isProtected() {
        return (this.modifiers & 4) != 0;
    }

    public final boolean isPublic() {
        return (this.modifiers & 1) != 0;
    }

    public final boolean isStatic() {
        return (this.modifiers & 0x208) != 0 || (this.tagBits & 4L) == 0L;
    }

    public final boolean isStrictfp() {
        return (this.modifiers & 0x800) != 0;
    }

    public boolean isSuperclassOf(ReferenceBinding otherType) {
        while ((otherType = otherType.superclass()) != null) {
            if (!otherType.isEquivalentTo(this)) continue;
            return true;
        }
        return false;
    }

    public boolean isThrowable() {
        ReferenceBinding current = this;
        do {
            switch (current.id) {
                case 19: 
                case 21: 
                case 24: 
                case 25: {
                    return true;
                }
            }
        } while ((current = current.superclass()) != null);
        return false;
    }

    public boolean isUncheckedException(boolean includeSupertype) {
        switch (this.id) {
            case 19: 
            case 24: {
                return true;
            }
            case 21: 
            case 25: {
                return includeSupertype;
            }
        }
        ReferenceBinding current = this;
        while ((current = current.superclass()) != null) {
            switch (current.id) {
                case 19: 
                case 24: {
                    return true;
                }
                case 21: 
                case 25: {
                    return false;
                }
            }
        }
        return false;
    }

    public final boolean isUsed() {
        return (this.modifiers & 0x8000000) != 0;
    }

    public final boolean isViewedAsDeprecated() {
        return (this.modifiers & 0x300000) != 0 || this.getPackage().isViewedAsDeprecated();
    }

    public ReferenceBinding[] memberTypes() {
        return Binding.NO_MEMBER_TYPES;
    }

    public MethodBinding[] methods() {
        return Binding.NO_METHODS;
    }

    public final ReferenceBinding outermostEnclosingType() {
        ReferenceBinding last;
        ReferenceBinding current = this;
        do {
            last = current;
        } while ((current = current.enclosingType()) != null);
        return last;
    }

    public char[] qualifiedSourceName() {
        if (this.isMemberType()) {
            return CharOperation.concat(this.enclosingType().qualifiedSourceName(), this.sourceName(), '.');
        }
        return this.sourceName();
    }

    public char[] readableName() {
        char[] readableName = this.isMemberType() ? CharOperation.concat(this.enclosingType().readableName(), this.sourceName, '.') : CharOperation.concatWith(this.compoundName, '.');
        TypeVariableBinding[] typeVars = this.typeVariables();
        if (typeVars != Binding.NO_TYPE_VARIABLES) {
            StringBuffer nameBuffer = new StringBuffer(10);
            nameBuffer.append(readableName).append('<');
            int i = 0;
            int length = typeVars.length;
            while (i < length) {
                if (i > 0) {
                    nameBuffer.append(',');
                }
                nameBuffer.append(typeVars[i].readableName());
                ++i;
            }
            nameBuffer.append('>');
            int nameLength = nameBuffer.length();
            readableName = new char[nameLength];
            nameBuffer.getChars(0, nameLength, readableName, 0);
        }
        return readableName;
    }

    public AnnotationHolder retrieveAnnotationHolder(Binding binding, boolean forceInitialization) {
        SimpleLookupTable store = this.storedAnnotations(forceInitialization);
        return store == null ? null : (AnnotationHolder)store.get(binding);
    }

    AnnotationBinding[] retrieveAnnotations(Binding binding) {
        AnnotationHolder holder = this.retrieveAnnotationHolder(binding, true);
        return holder == null ? Binding.NO_ANNOTATIONS : holder.getAnnotations();
    }

    public void setAnnotations(AnnotationBinding[] annotations) {
        this.storeAnnotations(this, annotations);
    }

    public char[] shortReadableName() {
        char[] shortReadableName = this.isMemberType() ? CharOperation.concat(this.enclosingType().shortReadableName(), this.sourceName, '.') : this.sourceName;
        TypeVariableBinding[] typeVars = this.typeVariables();
        if (typeVars != Binding.NO_TYPE_VARIABLES) {
            StringBuffer nameBuffer = new StringBuffer(10);
            nameBuffer.append(shortReadableName).append('<');
            int i = 0;
            int length = typeVars.length;
            while (i < length) {
                if (i > 0) {
                    nameBuffer.append(',');
                }
                nameBuffer.append(typeVars[i].shortReadableName());
                ++i;
            }
            nameBuffer.append('>');
            int nameLength = nameBuffer.length();
            shortReadableName = new char[nameLength];
            nameBuffer.getChars(0, nameLength, shortReadableName, 0);
        }
        return shortReadableName;
    }

    public char[] signature() {
        if (this.signature != null) {
            return this.signature;
        }
        this.signature = CharOperation.concat('L', this.constantPoolName(), ';');
        return this.signature;
    }

    public char[] sourceName() {
        return this.sourceName;
    }

    void storeAnnotationHolder(Binding binding, AnnotationHolder holder) {
        if (holder == null) {
            SimpleLookupTable store = this.storedAnnotations(false);
            if (store != null) {
                store.removeKey(binding);
            }
        } else {
            SimpleLookupTable store = this.storedAnnotations(true);
            if (store != null) {
                store.put(binding, holder);
            }
        }
    }

    void storeAnnotations(Binding binding, AnnotationBinding[] annotations) {
        AnnotationHolder holder = null;
        if (annotations == null || annotations.length == 0) {
            SimpleLookupTable store = this.storedAnnotations(false);
            if (store != null) {
                holder = (AnnotationHolder)store.get(binding);
            }
            if (holder == null) {
                return;
            }
        } else {
            SimpleLookupTable store = this.storedAnnotations(true);
            if (store == null) {
                return;
            }
            holder = (AnnotationHolder)store.get(binding);
            if (holder == null) {
                holder = new AnnotationHolder();
            }
        }
        this.storeAnnotationHolder(binding, holder.setAnnotations(annotations));
    }

    SimpleLookupTable storedAnnotations(boolean forceInitialize) {
        return null;
    }

    public ReferenceBinding superclass() {
        return null;
    }

    public ReferenceBinding[] superInterfaces() {
        return Binding.NO_SUPERINTERFACES;
    }

    public ReferenceBinding[] syntheticEnclosingInstanceTypes() {
        if (this.isStatic()) {
            return null;
        }
        ReferenceBinding enclosingType = this.enclosingType();
        if (enclosingType == null) {
            return null;
        }
        return new ReferenceBinding[]{enclosingType};
    }

    public SyntheticArgumentBinding[] syntheticOuterLocalVariables() {
        return null;
    }

    MethodBinding[] unResolvedMethods() {
        return this.methods();
    }

    public FieldBinding[] unResolvedFields() {
        return Binding.NO_FIELDS;
    }
}

