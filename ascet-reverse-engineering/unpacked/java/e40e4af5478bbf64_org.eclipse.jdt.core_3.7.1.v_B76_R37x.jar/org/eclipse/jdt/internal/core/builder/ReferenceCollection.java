/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.builder;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.core.builder.JavaBuilder;
import org.eclipse.jdt.internal.core.builder.NameSet;
import org.eclipse.jdt.internal.core.builder.QualifiedNameSet;
import org.eclipse.jdt.internal.core.builder.StringSet;

public class ReferenceCollection {
    char[][][] qualifiedNameReferences;
    char[][] simpleNameReferences;
    char[][] rootReferences;
    static final char[][][] WellKnownQualifiedNames = new char[][][]{TypeConstants.JAVA_LANG_RUNTIMEEXCEPTION, TypeConstants.JAVA_LANG_THROWABLE, TypeConstants.JAVA_LANG_OBJECT, TypeConstants.JAVA_LANG, new char[][]{TypeConstants.JAVA}, new char[][]{{'o', 'r', 'g'}}, new char[][]{{'c', 'o', 'm'}}, CharOperation.NO_CHAR_CHAR};
    static final char[][] WellKnownSimpleNames = new char[][]{TypeConstants.JAVA_LANG_RUNTIMEEXCEPTION[2], TypeConstants.JAVA_LANG_THROWABLE[2], TypeConstants.JAVA_LANG_OBJECT[2], TypeConstants.JAVA, TypeConstants.LANG, {'o', 'r', 'g'}, {'c', 'o', 'm'}};
    static final char[][][] EmptyQualifiedNames = new char[0][][];
    static final char[][] EmptySimpleNames = CharOperation.NO_CHAR_CHAR;
    static final int MaxQualifiedNames = 7;
    static QualifiedNameSet[] InternedQualifiedNames = new QualifiedNameSet[7];
    static final int MaxSimpleNames = 30;
    static NameSet[] InternedSimpleNames = new NameSet[30];

    static {
        int i = 0;
        while (i < 7) {
            ReferenceCollection.InternedQualifiedNames[i] = new QualifiedNameSet(37);
            ++i;
        }
        i = 0;
        while (i < 30) {
            ReferenceCollection.InternedSimpleNames[i] = new NameSet(37);
            ++i;
        }
    }

    protected ReferenceCollection(char[][][] qualifiedNameReferences, char[][] simpleNameReferences, char[][] rootReferences) {
        this.qualifiedNameReferences = ReferenceCollection.internQualifiedNames(qualifiedNameReferences, false);
        this.simpleNameReferences = ReferenceCollection.internSimpleNames(simpleNameReferences, true);
        this.rootReferences = ReferenceCollection.internSimpleNames(rootReferences, false);
    }

    public void addDependencies(String[] typeNameDependencies) {
        Object qNames = new char[typeNameDependencies.length][][];
        int i = typeNameDependencies.length;
        while (--i >= 0) {
            qNames[i] = CharOperation.splitOn('.', typeNameDependencies[i].toCharArray());
        }
        qNames = ReferenceCollection.internQualifiedNames(qNames, false);
        i = ((char[][][])qNames).length;
        block1: while (--i >= 0) {
            char[][] qualifiedTypeName = qNames[i];
            while (!this.includes(qualifiedTypeName)) {
                int length;
                if (!this.includes(qualifiedTypeName[qualifiedTypeName.length - 1])) {
                    length = this.simpleNameReferences.length;
                    char[][] cArrayArray = new char[length + 1][];
                    this.simpleNameReferences = cArrayArray;
                    System.arraycopy(this.simpleNameReferences, 0, cArrayArray, 0, length);
                    this.simpleNameReferences[length] = qualifiedTypeName[qualifiedTypeName.length - 1];
                }
                if (!this.insideRoot(qualifiedTypeName[0])) {
                    length = this.rootReferences.length;
                    char[][] cArrayArray = new char[length + 1][];
                    this.rootReferences = cArrayArray;
                    System.arraycopy(this.rootReferences, 0, cArrayArray, 0, length);
                    this.rootReferences[length] = qualifiedTypeName[0];
                }
                length = this.qualifiedNameReferences.length;
                char[][][] cArrayArray = new char[length + 1][][];
                this.qualifiedNameReferences = cArrayArray;
                System.arraycopy(this.qualifiedNameReferences, 0, cArrayArray, 0, length);
                this.qualifiedNameReferences[length] = qualifiedTypeName;
                qualifiedTypeName = CharOperation.subarray(qualifiedTypeName, 0, qualifiedTypeName.length - 1);
                char[][][] temp = ReferenceCollection.internQualifiedNames(new char[][][]{qualifiedTypeName}, false);
                if (temp == EmptyQualifiedNames) continue block1;
                qualifiedTypeName = temp[0];
            }
        }
    }

    public boolean includes(char[] simpleName) {
        int i = 0;
        int l = this.simpleNameReferences.length;
        while (i < l) {
            if (simpleName == this.simpleNameReferences[i]) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public boolean includes(char[][] qualifiedName) {
        int i = 0;
        int l = this.qualifiedNameReferences.length;
        while (i < l) {
            if (qualifiedName == this.qualifiedNameReferences[i]) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public boolean includes(char[][][] qualifiedNames, char[][] simpleNames) {
        return this.includes(qualifiedNames, simpleNames, null);
    }

    public boolean includes(char[][][] qualifiedNames, char[][] simpleNames, char[][] rootNames) {
        int i;
        if (rootNames != null) {
            boolean foundRoot = false;
            int i2 = 0;
            int l = rootNames.length;
            while (!foundRoot && i2 < l) {
                foundRoot = this.insideRoot(rootNames[i2]);
                ++i2;
            }
            if (!foundRoot) {
                return false;
            }
        }
        if (simpleNames == null || qualifiedNames == null) {
            int l;
            int i3;
            if (simpleNames == null && qualifiedNames == null) {
                if (JavaBuilder.DEBUG) {
                    System.out.println("Found well known match");
                }
                return true;
            }
            if (qualifiedNames == null) {
                i3 = 0;
                l = simpleNames.length;
                while (i3 < l) {
                    if (this.includes(simpleNames[i3])) {
                        if (JavaBuilder.DEBUG) {
                            System.out.println("Found match in well known package to " + new String(simpleNames[i3]));
                        }
                        return true;
                    }
                    ++i3;
                }
            } else {
                i3 = 0;
                l = qualifiedNames.length;
                while (i3 < l) {
                    char[][] qualifiedName = qualifiedNames[i3];
                    if (qualifiedName.length == 1 ? this.includes(qualifiedName[0]) : this.includes(qualifiedName)) {
                        if (JavaBuilder.DEBUG) {
                            System.out.println("Found well known match in " + CharOperation.toString(qualifiedName));
                        }
                        return true;
                    }
                    ++i3;
                }
            }
            return false;
        }
        int sLength = simpleNames.length;
        int qLength = qualifiedNames.length;
        if (sLength <= qLength) {
            i = 0;
            while (i < sLength) {
                if (this.includes(simpleNames[i])) {
                    int j = 0;
                    while (j < qLength) {
                        char[][] qualifiedName = qualifiedNames[j];
                        if (qualifiedName.length == 1 ? this.includes(qualifiedName[0]) : this.includes(qualifiedName)) {
                            if (JavaBuilder.DEBUG) {
                                System.out.println("Found match in " + CharOperation.toString(qualifiedName) + " to " + new String(simpleNames[i]));
                            }
                            return true;
                        }
                        ++j;
                    }
                    return false;
                }
                ++i;
            }
        } else {
            i = 0;
            while (i < qLength) {
                char[][] qualifiedName = qualifiedNames[i];
                if (qualifiedName.length == 1 ? this.includes(qualifiedName[0]) : this.includes(qualifiedName)) {
                    int j = 0;
                    while (j < sLength) {
                        if (this.includes(simpleNames[j])) {
                            if (JavaBuilder.DEBUG) {
                                System.out.println("Found match in " + CharOperation.toString(qualifiedName) + " to " + new String(simpleNames[j]));
                            }
                            return true;
                        }
                        ++j;
                    }
                    return false;
                }
                ++i;
            }
        }
        return false;
    }

    public boolean insideRoot(char[] rootName) {
        int i = 0;
        int l = this.rootReferences.length;
        while (i < l) {
            if (rootName == this.rootReferences[i]) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public static char[][][] internQualifiedNames(StringSet qualifiedStrings) {
        if (qualifiedStrings == null) {
            return EmptyQualifiedNames;
        }
        int length = qualifiedStrings.elementSize;
        if (length == 0) {
            return EmptyQualifiedNames;
        }
        char[][][] result = new char[length][][];
        String[] strings = qualifiedStrings.values;
        int i = 0;
        int l = strings.length;
        while (i < l) {
            if (strings[i] != null) {
                result[--length] = CharOperation.splitOn('/', strings[i].toCharArray());
            }
            ++i;
        }
        return ReferenceCollection.internQualifiedNames(result, false);
    }

    public static char[][][] internQualifiedNames(char[][][] qualifiedNames) {
        return ReferenceCollection.internQualifiedNames(qualifiedNames, false);
    }

    public static char[][][] internQualifiedNames(char[][][] qualifiedNames, boolean keepWellKnown) {
        if (qualifiedNames == null) {
            return EmptyQualifiedNames;
        }
        int length = qualifiedNames.length;
        if (length == 0) {
            return EmptyQualifiedNames;
        }
        char[][][] keepers = new char[length][][];
        int index = 0;
        int i = 0;
        while (i < length) {
            block8: {
                char[][] qualifiedName = qualifiedNames[i];
                int qLength = qualifiedName.length;
                int j = 0;
                int m = WellKnownQualifiedNames.length;
                while (j < m) {
                    char[][] wellKnownName = WellKnownQualifiedNames[j];
                    if (qLength > wellKnownName.length) break;
                    if (CharOperation.equals(qualifiedName, wellKnownName)) {
                        if (keepWellKnown) {
                            keepers[index++] = wellKnownName;
                        }
                        break block8;
                    }
                    ++j;
                }
                QualifiedNameSet internedNames = InternedQualifiedNames[qLength <= 7 ? qLength - 1 : 0];
                qualifiedName = ReferenceCollection.internSimpleNames(qualifiedName, false);
                keepers[index++] = internedNames.add(qualifiedName);
            }
            ++i;
        }
        if (length > index) {
            if (index == 0) {
                return EmptyQualifiedNames;
            }
            char[][][] cArrayArray = keepers;
            keepers = new char[index][][];
            System.arraycopy(cArrayArray, 0, keepers, 0, index);
        }
        return keepers;
    }

    public static char[][] internSimpleNames(StringSet simpleStrings) {
        return ReferenceCollection.internSimpleNames(simpleStrings, true);
    }

    public static char[][] internSimpleNames(StringSet simpleStrings, boolean removeWellKnown) {
        if (simpleStrings == null) {
            return EmptySimpleNames;
        }
        int length = simpleStrings.elementSize;
        if (length == 0) {
            return EmptySimpleNames;
        }
        char[][] result = new char[length][];
        String[] strings = simpleStrings.values;
        int i = 0;
        int l = strings.length;
        while (i < l) {
            if (strings[i] != null) {
                result[--length] = strings[i].toCharArray();
            }
            ++i;
        }
        return ReferenceCollection.internSimpleNames(result, removeWellKnown);
    }

    public static char[][] internSimpleNames(char[][] simpleNames, boolean removeWellKnown) {
        if (simpleNames == null) {
            return EmptySimpleNames;
        }
        int length = simpleNames.length;
        if (length == 0) {
            return EmptySimpleNames;
        }
        char[][] keepers = new char[length][];
        int index = 0;
        int i = 0;
        while (i < length) {
            block8: {
                char[] name = simpleNames[i];
                int sLength = name.length;
                int j = 0;
                int m = WellKnownSimpleNames.length;
                while (j < m) {
                    char[] wellKnownName = WellKnownSimpleNames[j];
                    if (sLength > wellKnownName.length) break;
                    if (CharOperation.equals(name, wellKnownName)) {
                        if (!removeWellKnown) {
                            keepers[index++] = WellKnownSimpleNames[j];
                        }
                        break block8;
                    }
                    ++j;
                }
                NameSet internedNames = InternedSimpleNames[sLength < 30 ? sLength : 0];
                keepers[index++] = internedNames.add(name);
            }
            ++i;
        }
        if (length > index) {
            if (index == 0) {
                return EmptySimpleNames;
            }
            char[][] cArrayArray = keepers;
            keepers = new char[index][];
            System.arraycopy(cArrayArray, 0, keepers, 0, index);
        }
        return keepers;
    }
}

