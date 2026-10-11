/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.util.HashtableOfPackage;
import org.eclipse.jdt.internal.compiler.util.HashtableOfType;

public class PackageBinding
extends Binding
implements TypeConstants {
    public long tagBits = 0L;
    public char[][] compoundName;
    PackageBinding parent;
    public LookupEnvironment environment;
    HashtableOfType knownTypes;
    HashtableOfPackage knownPackages;

    protected PackageBinding() {
    }

    public PackageBinding(char[] topLevelPackageName, LookupEnvironment environment) {
        this(new char[][]{topLevelPackageName}, null, environment);
    }

    public PackageBinding(char[][] compoundName, PackageBinding parent, LookupEnvironment environment) {
        this.compoundName = compoundName;
        this.parent = parent;
        this.environment = environment;
        this.knownTypes = null;
        this.knownPackages = new HashtableOfPackage(3);
    }

    public PackageBinding(LookupEnvironment environment) {
        this(CharOperation.NO_CHAR_CHAR, null, environment);
    }

    private void addNotFoundPackage(char[] simpleName) {
        this.knownPackages.put(simpleName, LookupEnvironment.TheNotFoundPackage);
    }

    private void addNotFoundType(char[] simpleName) {
        if (this.knownTypes == null) {
            this.knownTypes = new HashtableOfType(25);
        }
        this.knownTypes.put(simpleName, LookupEnvironment.TheNotFoundType);
    }

    void addPackage(PackageBinding element) {
        if ((element.tagBits & 0x80L) == 0L) {
            this.clearMissingTagBit();
        }
        this.knownPackages.put(element.compoundName[element.compoundName.length - 1], element);
    }

    void addType(ReferenceBinding element) {
        if ((element.tagBits & 0x80L) == 0L) {
            this.clearMissingTagBit();
        }
        if (this.knownTypes == null) {
            this.knownTypes = new HashtableOfType(25);
        }
        this.knownTypes.put(element.compoundName[element.compoundName.length - 1], element);
    }

    void clearMissingTagBit() {
        PackageBinding current = this;
        do {
            current.tagBits &= 0xFFFFFFFFFFFFFF7FL;
        } while ((current = current.parent) != null);
    }

    public char[] computeUniqueKey(boolean isLeaf) {
        return CharOperation.concatWith(this.compoundName, '/');
    }

    private PackageBinding findPackage(char[] name) {
        if (!this.environment.isPackage(this.compoundName, name)) {
            return null;
        }
        char[][] subPkgCompoundName = CharOperation.arrayConcat(this.compoundName, name);
        PackageBinding subPackageBinding = new PackageBinding(subPkgCompoundName, this, this.environment);
        this.addPackage(subPackageBinding);
        return subPackageBinding;
    }

    PackageBinding getPackage(char[] name) {
        PackageBinding binding = this.getPackage0(name);
        if (binding != null) {
            if (binding == LookupEnvironment.TheNotFoundPackage) {
                return null;
            }
            return binding;
        }
        binding = this.findPackage(name);
        if (binding != null) {
            return binding;
        }
        this.addNotFoundPackage(name);
        return null;
    }

    PackageBinding getPackage0(char[] name) {
        return this.knownPackages.get(name);
    }

    ReferenceBinding getType(char[] name) {
        ReferenceBinding referenceBinding = this.getType0(name);
        if (referenceBinding == null && (referenceBinding = this.environment.askForType(this, name)) == null) {
            this.addNotFoundType(name);
            return null;
        }
        if (referenceBinding == LookupEnvironment.TheNotFoundType) {
            return null;
        }
        if ((referenceBinding = (ReferenceBinding)BinaryTypeBinding.resolveType(referenceBinding, this.environment, false)).isNestedType()) {
            return new ProblemReferenceBinding(new char[][]{name}, referenceBinding, 4);
        }
        return referenceBinding;
    }

    ReferenceBinding getType0(char[] name) {
        if (this.knownTypes == null) {
            return null;
        }
        return this.knownTypes.get(name);
    }

    public Binding getTypeOrPackage(char[] name) {
        PackageBinding packageBinding;
        ReferenceBinding referenceBinding = this.getType0(name);
        if (referenceBinding != null && referenceBinding != LookupEnvironment.TheNotFoundType) {
            if ((referenceBinding = (ReferenceBinding)BinaryTypeBinding.resolveType(referenceBinding, this.environment, false)).isNestedType()) {
                return new ProblemReferenceBinding(new char[][]{name}, referenceBinding, 4);
            }
            if ((referenceBinding.tagBits & 0x80L) == 0L) {
                return referenceBinding;
            }
        }
        if ((packageBinding = this.getPackage0(name)) != null && packageBinding != LookupEnvironment.TheNotFoundPackage) {
            return packageBinding;
        }
        if (referenceBinding == null) {
            referenceBinding = this.environment.askForType(this, name);
            if (referenceBinding != null) {
                if (referenceBinding.isNestedType()) {
                    return new ProblemReferenceBinding(new char[][]{name}, referenceBinding, 4);
                }
                return referenceBinding;
            }
            this.addNotFoundType(name);
        }
        if (packageBinding == null) {
            packageBinding = this.findPackage(name);
            if (packageBinding != null) {
                return packageBinding;
            }
            if (referenceBinding != null && referenceBinding != LookupEnvironment.TheNotFoundType) {
                return referenceBinding;
            }
            this.addNotFoundPackage(name);
        }
        return null;
    }

    public final boolean isViewedAsDeprecated() {
        if ((this.tagBits & 0x400000000L) == 0L) {
            ReferenceBinding packageInfo;
            this.tagBits |= 0x400000000L;
            if (this.compoundName != CharOperation.NO_CHAR_CHAR && (packageInfo = this.getType(TypeConstants.PACKAGE_INFO_NAME)) != null) {
                packageInfo.initializeDeprecatedAnnotationTagBits();
                this.tagBits |= packageInfo.tagBits & 0x1FFFF800000000L;
            }
        }
        return (this.tagBits & 0x400000000000L) != 0L;
    }

    public final int kind() {
        return 16;
    }

    public int problemId() {
        if ((this.tagBits & 0x80L) != 0L) {
            return 1;
        }
        return 0;
    }

    public char[] readableName() {
        return CharOperation.concatWith(this.compoundName, '.');
    }

    public String toString() {
        String str = this.compoundName == CharOperation.NO_CHAR_CHAR ? "The Default Package" : "package " + (this.compoundName != null ? CharOperation.toString(this.compoundName) : "UNNAMED");
        if ((this.tagBits & 0x80L) != 0L) {
            str = String.valueOf(str) + "[MISSING]";
        }
        return str;
    }
}

