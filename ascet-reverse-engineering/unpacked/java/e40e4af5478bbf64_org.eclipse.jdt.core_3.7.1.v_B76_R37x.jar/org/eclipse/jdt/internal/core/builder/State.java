/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.jdt.internal.core.builder;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.AccessRule;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.core.ClasspathAccessRule;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.builder.AdditionalTypeCollection;
import org.eclipse.jdt.internal.core.builder.ClasspathDirectory;
import org.eclipse.jdt.internal.core.builder.ClasspathJar;
import org.eclipse.jdt.internal.core.builder.ClasspathLocation;
import org.eclipse.jdt.internal.core.builder.ClasspathMultiDirectory;
import org.eclipse.jdt.internal.core.builder.JavaBuilder;
import org.eclipse.jdt.internal.core.builder.ReferenceCollection;
import org.eclipse.jdt.internal.core.builder.StringSet;
import org.eclipse.jdt.internal.core.util.Util;

public class State {
    String javaProjectName;
    ClasspathMultiDirectory[] sourceLocations;
    ClasspathLocation[] binaryLocations;
    SimpleLookupTable references;
    public SimpleLookupTable typeLocators;
    int buildNumber;
    long lastStructuralBuildTime;
    SimpleLookupTable structuralBuildTimes;
    private String[] knownPackageNames;
    private long previousStructuralBuildTime;
    private StringSet structurallyChangedTypes;
    public static int MaxStructurallyChangedTypes = 100;
    public static final byte VERSION = 25;
    static final byte SOURCE_FOLDER = 1;
    static final byte BINARY_FOLDER = 2;
    static final byte EXTERNAL_JAR = 3;
    static final byte INTERNAL_JAR = 4;

    State() {
    }

    protected State(JavaBuilder javaBuilder) {
        this.knownPackageNames = null;
        this.previousStructuralBuildTime = -1L;
        this.structurallyChangedTypes = null;
        this.javaProjectName = javaBuilder.currentProject.getName();
        this.sourceLocations = javaBuilder.nameEnvironment.sourceLocations;
        this.binaryLocations = javaBuilder.nameEnvironment.binaryLocations;
        this.references = new SimpleLookupTable(7);
        this.typeLocators = new SimpleLookupTable(7);
        this.buildNumber = 0;
        this.lastStructuralBuildTime = this.computeStructuralBuildTime(javaBuilder.lastState == null ? 0L : javaBuilder.lastState.lastStructuralBuildTime);
        this.structuralBuildTimes = new SimpleLookupTable(3);
    }

    long computeStructuralBuildTime(long previousTime) {
        long newTime = System.currentTimeMillis();
        if (newTime <= previousTime) {
            newTime = previousTime + 1L;
        }
        return newTime;
    }

    /*
     * Unable to fully structure code
     */
    void copyFrom(State lastState) {
        block6: {
            this.knownPackageNames = null;
            this.previousStructuralBuildTime = lastState.previousStructuralBuildTime;
            this.structurallyChangedTypes = lastState.structurallyChangedTypes;
            this.buildNumber = lastState.buildNumber + 1;
            this.lastStructuralBuildTime = lastState.lastStructuralBuildTime;
            this.structuralBuildTimes = lastState.structuralBuildTimes;
            try {
                this.references = (SimpleLookupTable)lastState.references.clone();
                this.typeLocators = (SimpleLookupTable)lastState.typeLocators.clone();
                break block6;
            }
            catch (CloneNotSupportedException v0) {
                this.references = new SimpleLookupTable(lastState.references.elementSize);
                keyTable = lastState.references.keyTable;
                valueTable = lastState.references.valueTable;
                i = 0;
                l = keyTable.length;
                ** while (i < l)
            }
lbl-1000:
            // 1 sources

            {
                if (keyTable[i] != null) {
                    this.references.put(keyTable[i], valueTable[i]);
                }
                ++i;
                continue;
            }
lbl23:
            // 1 sources

            this.typeLocators = new SimpleLookupTable(lastState.typeLocators.elementSize);
            keyTable = lastState.typeLocators.keyTable;
            valueTable = lastState.typeLocators.valueTable;
            i = 0;
            l = keyTable.length;
            while (i < l) {
                if (keyTable[i] != null) {
                    this.typeLocators.put(keyTable[i], valueTable[i]);
                }
                ++i;
            }
        }
    }

    public char[][] getDefinedTypeNamesFor(String typeLocator) {
        Object c = this.references.get(typeLocator);
        if (c instanceof AdditionalTypeCollection) {
            return ((AdditionalTypeCollection)c).definedTypeNames;
        }
        return null;
    }

    public SimpleLookupTable getReferences() {
        return this.references;
    }

    StringSet getStructurallyChangedTypes(State prereqState) {
        if (prereqState != null && prereqState.previousStructuralBuildTime > 0L) {
            long previous;
            Object o = this.structuralBuildTimes.get(prereqState.javaProjectName);
            long l = previous = o == null ? 0L : (Long)o;
            if (previous == prereqState.previousStructuralBuildTime) {
                return prereqState.structurallyChangedTypes;
            }
        }
        return null;
    }

    public boolean isDuplicateLocator(String qualifiedTypeName, String typeLocator) {
        String existing = (String)this.typeLocators.get(qualifiedTypeName);
        return existing != null && !existing.equals(typeLocator);
    }

    public boolean isKnownPackage(String qualifiedPackageName) {
        if (this.knownPackageNames == null) {
            ArrayList<String> names = new ArrayList<String>(this.typeLocators.elementSize);
            Object[] keyTable = this.typeLocators.keyTable;
            int i = 0;
            int l = keyTable.length;
            while (i < l) {
                if (keyTable[i] != null) {
                    String packageName = (String)keyTable[i];
                    int last = packageName.lastIndexOf(47);
                    packageName = last == -1 ? null : packageName.substring(0, last);
                    while (packageName != null && !names.contains(packageName)) {
                        names.add(packageName);
                        last = packageName.lastIndexOf(47);
                        String string = packageName = last == -1 ? null : packageName.substring(0, last);
                    }
                }
                ++i;
            }
            this.knownPackageNames = new String[names.size()];
            names.toArray(this.knownPackageNames);
        }
        int i = 0;
        int l = this.knownPackageNames.length;
        while (i < l) {
            if (this.knownPackageNames[i].equals(qualifiedPackageName)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public boolean isKnownType(String qualifiedTypeName) {
        return this.typeLocators.containsKey(qualifiedTypeName);
    }

    boolean isSourceFolderEmpty(IContainer sourceFolder) {
        String sourceFolderName = sourceFolder.getProjectRelativePath().addTrailingSeparator().toString();
        Object[] table = this.typeLocators.valueTable;
        int i = 0;
        int l = table.length;
        while (i < l) {
            if (table[i] != null && ((String)table[i]).startsWith(sourceFolderName)) {
                return false;
            }
            ++i;
        }
        return true;
    }

    void record(String typeLocator, char[][][] qualifiedRefs, char[][] simpleRefs, char[][] rootRefs, char[] mainTypeName, ArrayList typeNames) {
        if (typeNames.size() == 1 && CharOperation.equals(mainTypeName, (char[])typeNames.get(0))) {
            this.references.put(typeLocator, new ReferenceCollection(qualifiedRefs, simpleRefs, rootRefs));
        } else {
            char[][] definedTypeNames = new char[typeNames.size()][];
            typeNames.toArray((T[])definedTypeNames);
            this.references.put(typeLocator, new AdditionalTypeCollection(definedTypeNames, qualifiedRefs, simpleRefs, rootRefs));
        }
    }

    void recordLocatorForType(String qualifiedTypeName, String typeLocator) {
        this.knownPackageNames = null;
        int start = typeLocator.indexOf(qualifiedTypeName, 0);
        if (start > 0) {
            qualifiedTypeName = typeLocator.substring(start, start + qualifiedTypeName.length());
        }
        this.typeLocators.put(qualifiedTypeName, typeLocator);
    }

    void recordStructuralDependency(IProject prereqProject, State prereqState) {
        if (prereqState != null && prereqState.lastStructuralBuildTime > 0L) {
            this.structuralBuildTimes.put(prereqProject.getName(), new Long(prereqState.lastStructuralBuildTime));
        }
    }

    void removeLocator(String typeLocatorToRemove) {
        this.knownPackageNames = null;
        this.references.removeKey(typeLocatorToRemove);
        this.typeLocators.removeValue(typeLocatorToRemove);
    }

    void removePackage(IResourceDelta sourceDelta) {
        IResource resource = sourceDelta.getResource();
        switch (resource.getType()) {
            case 2: {
                IResourceDelta[] children = sourceDelta.getAffectedChildren();
                int i = 0;
                int l = children.length;
                while (i < l) {
                    this.removePackage(children[i]);
                    ++i;
                }
                return;
            }
            case 1: {
                IPath typeLocatorPath = resource.getProjectRelativePath();
                if (!Util.isJavaLikeFileName(typeLocatorPath.lastSegment())) break;
                this.removeLocator(typeLocatorPath.toString());
            }
        }
    }

    void removeQualifiedTypeName(String qualifiedTypeNameToRemove) {
        this.knownPackageNames = null;
        this.typeLocators.removeKey(qualifiedTypeNameToRemove);
    }

    static State read(IProject project, DataInputStream in) throws IOException {
        if (JavaBuilder.DEBUG) {
            System.out.println("About to read state " + project.getName());
        }
        if (25 != in.readByte()) {
            if (JavaBuilder.DEBUG) {
                System.out.println("Found non-compatible state version... answered null for " + project.getName());
            }
            return null;
        }
        State newState = new State();
        newState.javaProjectName = in.readUTF();
        if (!project.getName().equals(newState.javaProjectName)) {
            if (JavaBuilder.DEBUG) {
                System.out.println("Project's name does not match... answered null");
            }
            return null;
        }
        newState.buildNumber = in.readInt();
        newState.lastStructuralBuildTime = in.readLong();
        int length = in.readInt();
        newState.sourceLocations = new ClasspathMultiDirectory[length];
        int i = 0;
        while (i < length) {
            IProject sourceFolder = project;
            IProject outputFolder = project;
            String folderName = in.readUTF();
            if (folderName.length() > 0) {
                sourceFolder = project.getFolder(folderName);
            }
            if ((folderName = in.readUTF()).length() > 0) {
                outputFolder = project.getFolder(folderName);
            }
            ClasspathMultiDirectory md = (ClasspathMultiDirectory)ClasspathLocation.forSourceFolder((IContainer)sourceFolder, (IContainer)outputFolder, State.readNames(in), State.readNames(in));
            if (in.readBoolean()) {
                md.hasIndependentOutputFolder = true;
            }
            newState.sourceLocations[i] = md;
            ++i;
        }
        length = in.readInt();
        newState.binaryLocations = new ClasspathLocation[length];
        IWorkspaceRoot root = project.getWorkspace().getRoot();
        int i2 = 0;
        while (i2 < length) {
            switch (in.readByte()) {
                case 1: {
                    newState.binaryLocations[i2] = newState.sourceLocations[in.readInt()];
                    break;
                }
                case 2: {
                    Path path = new Path(in.readUTF());
                    IFolder outputFolder = path.segmentCount() == 1 ? root.getProject(path.toString()) : root.getFolder((IPath)path);
                    newState.binaryLocations[i2] = ClasspathLocation.forBinaryFolder((IContainer)outputFolder, in.readBoolean(), State.readRestriction(in));
                    break;
                }
                case 3: {
                    newState.binaryLocations[i2] = ClasspathLocation.forLibrary(in.readUTF(), in.readLong(), State.readRestriction(in));
                    break;
                }
                case 4: {
                    newState.binaryLocations[i2] = ClasspathLocation.forLibrary(root.getFile((IPath)new Path(in.readUTF())), State.readRestriction(in));
                }
            }
            ++i2;
        }
        length = in.readInt();
        newState.structuralBuildTimes = new SimpleLookupTable(length);
        i2 = 0;
        while (i2 < length) {
            newState.structuralBuildTimes.put(in.readUTF(), new Long(in.readLong()));
            ++i2;
        }
        length = in.readInt();
        String[] internedTypeLocators = new String[length];
        int i3 = 0;
        while (i3 < length) {
            internedTypeLocators[i3] = in.readUTF();
            ++i3;
        }
        length = in.readInt();
        newState.typeLocators = new SimpleLookupTable(length);
        i3 = 0;
        while (i3 < length) {
            newState.recordLocatorForType(in.readUTF(), internedTypeLocators[in.readInt()]);
            ++i3;
        }
        char[][] internedRootNames = ReferenceCollection.internSimpleNames(State.readNames(in), false);
        char[][] internedSimpleNames = ReferenceCollection.internSimpleNames(State.readNames(in), false);
        length = in.readInt();
        Object internedQualifiedNames = new char[length][][];
        int i4 = 0;
        while (i4 < length) {
            int qLength = in.readInt();
            char[][] qName = new char[qLength][];
            int j = 0;
            while (j < qLength) {
                qName[j] = internedSimpleNames[in.readInt()];
                ++j;
            }
            internedQualifiedNames[i4] = qName;
            ++i4;
        }
        internedQualifiedNames = ReferenceCollection.internQualifiedNames(internedQualifiedNames, false);
        length = in.readInt();
        newState.references = new SimpleLookupTable(length);
        i4 = 0;
        while (i4 < length) {
            String typeLocator = internedTypeLocators[in.readInt()];
            ReferenceCollection collection = null;
            switch (in.readByte()) {
                case 1: {
                    char[][] additionalTypeNames = State.readNames(in);
                    char[][][] qualifiedNames = new char[in.readInt()][][];
                    int j = 0;
                    int m = qualifiedNames.length;
                    while (j < m) {
                        qualifiedNames[j] = internedQualifiedNames[in.readInt()];
                        ++j;
                    }
                    char[][] simpleNames = new char[in.readInt()][];
                    int j2 = 0;
                    int m2 = simpleNames.length;
                    while (j2 < m2) {
                        simpleNames[j2] = internedSimpleNames[in.readInt()];
                        ++j2;
                    }
                    char[][] rootNames = new char[in.readInt()][];
                    int j3 = 0;
                    int m3 = rootNames.length;
                    while (j3 < m3) {
                        rootNames[j3] = internedRootNames[in.readInt()];
                        ++j3;
                    }
                    collection = new AdditionalTypeCollection(additionalTypeNames, qualifiedNames, simpleNames, rootNames);
                    break;
                }
                case 2: {
                    char[][][] qNames = new char[in.readInt()][][];
                    int j = 0;
                    int m = qNames.length;
                    while (j < m) {
                        qNames[j] = internedQualifiedNames[in.readInt()];
                        ++j;
                    }
                    char[][] sNames = new char[in.readInt()][];
                    int j4 = 0;
                    int m4 = sNames.length;
                    while (j4 < m4) {
                        sNames[j4] = internedSimpleNames[in.readInt()];
                        ++j4;
                    }
                    char[][] rNames = new char[in.readInt()][];
                    int j5 = 0;
                    int m5 = rNames.length;
                    while (j5 < m5) {
                        rNames[j5] = internedRootNames[in.readInt()];
                        ++j5;
                    }
                    collection = new ReferenceCollection(qNames, sNames, rNames);
                }
            }
            newState.references.put(typeLocator, collection);
            ++i4;
        }
        if (JavaBuilder.DEBUG) {
            System.out.println("Successfully read state for " + newState.javaProjectName);
        }
        return newState;
    }

    private static char[] readName(DataInputStream in) throws IOException {
        int nLength = in.readInt();
        char[] name = new char[nLength];
        int j = 0;
        while (j < nLength) {
            name[j] = in.readChar();
            ++j;
        }
        return name;
    }

    private static char[][] readNames(DataInputStream in) throws IOException {
        int length = in.readInt();
        char[][] names = new char[length][];
        int i = 0;
        while (i < length) {
            names[i] = State.readName(in);
            ++i;
        }
        return names;
    }

    private static AccessRuleSet readRestriction(DataInputStream in) throws IOException {
        int length = in.readInt();
        if (length == 0) {
            return null;
        }
        AccessRule[] accessRules = new AccessRule[length];
        int i = 0;
        while (i < length) {
            char[] pattern = State.readName(in);
            int problemId = in.readInt();
            accessRules[i] = new ClasspathAccessRule(pattern, problemId);
            ++i;
        }
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        return new AccessRuleSet(accessRules, in.readByte(), manager.intern(in.readUTF()));
    }

    void tagAsNoopBuild() {
        this.buildNumber = -1;
    }

    boolean wasNoopBuild() {
        return this.buildNumber == -1;
    }

    void tagAsStructurallyChanged() {
        this.previousStructuralBuildTime = this.lastStructuralBuildTime;
        this.structurallyChangedTypes = new StringSet(7);
        this.lastStructuralBuildTime = this.computeStructuralBuildTime(this.previousStructuralBuildTime);
    }

    boolean wasStructurallyChanged(IProject prereqProject, State prereqState) {
        if (prereqState != null) {
            long previous;
            Object o = this.structuralBuildTimes.get(prereqProject.getName());
            long l = previous = o == null ? 0L : (Long)o;
            if (previous == prereqState.lastStructuralBuildTime) {
                return false;
            }
        }
        return true;
    }

    void wasStructurallyChanged(String typeName) {
        if (this.structurallyChangedTypes != null) {
            if (this.structurallyChangedTypes.elementSize > MaxStructurallyChangedTypes) {
                this.structurallyChangedTypes = null;
            } else {
                this.structurallyChangedTypes.add(typeName);
            }
        }
    }

    void write(DataOutputStream out) throws IOException {
        Object[] valueTable;
        Object[] keyTable;
        out.writeByte(25);
        out.writeUTF(this.javaProjectName);
        out.writeInt(this.buildNumber);
        out.writeLong(this.lastStructuralBuildTime);
        int length = this.sourceLocations.length;
        out.writeInt(length);
        int i = 0;
        while (i < length) {
            ClasspathMultiDirectory md = this.sourceLocations[i];
            out.writeUTF(md.sourceFolder.getProjectRelativePath().toString());
            out.writeUTF(md.binaryFolder.getProjectRelativePath().toString());
            this.writeNames(md.inclusionPatterns, out);
            this.writeNames(md.exclusionPatterns, out);
            out.writeBoolean(md.hasIndependentOutputFolder);
            ++i;
        }
        length = this.binaryLocations.length;
        out.writeInt(length);
        i = 0;
        while (i < length) {
            ClasspathLocation c = this.binaryLocations[i];
            if (c instanceof ClasspathMultiDirectory) {
                out.writeByte(1);
                int j = 0;
                int m = this.sourceLocations.length;
                while (j < m) {
                    if (this.sourceLocations[j] == c) {
                        out.writeInt(j);
                        break;
                    }
                    ++j;
                }
            } else if (c instanceof ClasspathDirectory) {
                out.writeByte(2);
                ClasspathDirectory cd = (ClasspathDirectory)c;
                out.writeUTF(cd.binaryFolder.getFullPath().toString());
                out.writeBoolean(cd.isOutputFolder);
                this.writeRestriction(cd.accessRuleSet, out);
            } else {
                ClasspathJar jar = (ClasspathJar)c;
                if (jar.resource == null) {
                    out.writeByte(3);
                    out.writeUTF(jar.zipFilename);
                    out.writeLong(jar.lastModified());
                } else {
                    out.writeByte(4);
                    out.writeUTF(jar.resource.getFullPath().toString());
                }
                this.writeRestriction(jar.accessRuleSet, out);
            }
            ++i;
        }
        length = this.structuralBuildTimes.elementSize;
        out.writeInt(length);
        if (length > 0) {
            keyTable = this.structuralBuildTimes.keyTable;
            valueTable = this.structuralBuildTimes.valueTable;
            i = 0;
            int l = keyTable.length;
            while (i < l) {
                if (keyTable[i] != null) {
                    --length;
                    out.writeUTF((String)keyTable[i]);
                    out.writeLong((Long)valueTable[i]);
                }
                ++i;
            }
            if (JavaBuilder.DEBUG && length != 0) {
                System.out.println("structuralBuildNumbers table is inconsistent");
            }
        }
        length = this.references.elementSize;
        out.writeInt(length);
        SimpleLookupTable internedTypeLocators = new SimpleLookupTable(length);
        if (length > 0) {
            keyTable = this.references.keyTable;
            int i2 = 0;
            int l = keyTable.length;
            while (i2 < l) {
                if (keyTable[i2] != null) {
                    --length;
                    String key = (String)keyTable[i2];
                    out.writeUTF(key);
                    internedTypeLocators.put(key, new Integer(internedTypeLocators.elementSize));
                }
                ++i2;
            }
            if (JavaBuilder.DEBUG && length != 0) {
                System.out.println("references table is inconsistent");
            }
        }
        length = this.typeLocators.elementSize;
        out.writeInt(length);
        if (length > 0) {
            keyTable = this.typeLocators.keyTable;
            valueTable = this.typeLocators.valueTable;
            int i3 = 0;
            int l = keyTable.length;
            while (i3 < l) {
                if (keyTable[i3] != null) {
                    --length;
                    out.writeUTF((String)keyTable[i3]);
                    Integer index = (Integer)internedTypeLocators.get(valueTable[i3]);
                    out.writeInt(index);
                }
                ++i3;
            }
            if (JavaBuilder.DEBUG && length != 0) {
                System.out.println("typeLocators table is inconsistent");
            }
        }
        SimpleLookupTable internedRootNames = new SimpleLookupTable(3);
        SimpleLookupTable internedQualifiedNames = new SimpleLookupTable(31);
        SimpleLookupTable internedSimpleNames = new SimpleLookupTable(31);
        valueTable = this.references.valueTable;
        int i4 = 0;
        int l = valueTable.length;
        while (i4 < l) {
            if (valueTable[i4] != null) {
                ReferenceCollection collection = (ReferenceCollection)valueTable[i4];
                char[][] rNames = collection.rootReferences;
                int j = 0;
                int m = rNames.length;
                while (j < m) {
                    char[] rName = rNames[j];
                    if (!internedRootNames.containsKey(rName)) {
                        internedRootNames.put(rName, new Integer(internedRootNames.elementSize));
                    }
                    ++j;
                }
                char[][][] qNames = collection.qualifiedNameReferences;
                int j2 = 0;
                int m2 = qNames.length;
                while (j2 < m2) {
                    char[][] qName = qNames[j2];
                    if (!internedQualifiedNames.containsKey(qName)) {
                        internedQualifiedNames.put(qName, new Integer(internedQualifiedNames.elementSize));
                        int k = 0;
                        int n = qName.length;
                        while (k < n) {
                            char[] sName = qName[k];
                            if (!internedSimpleNames.containsKey(sName)) {
                                internedSimpleNames.put(sName, new Integer(internedSimpleNames.elementSize));
                            }
                            ++k;
                        }
                    }
                    ++j2;
                }
                char[][] sNames = collection.simpleNameReferences;
                int j3 = 0;
                int m3 = sNames.length;
                while (j3 < m3) {
                    char[] sName = sNames[j3];
                    if (!internedSimpleNames.containsKey(sName)) {
                        internedSimpleNames.put(sName, new Integer(internedSimpleNames.elementSize));
                    }
                    ++j3;
                }
            }
            ++i4;
        }
        char[][] internedArray = new char[internedRootNames.elementSize][];
        Object[] rootNames = internedRootNames.keyTable;
        Object[] positions = internedRootNames.valueTable;
        int i5 = positions.length;
        while (--i5 >= 0) {
            if (positions[i5] == null) continue;
            int index = (Integer)positions[i5];
            internedArray[index] = (char[])rootNames[i5];
        }
        this.writeNames(internedArray, out);
        internedArray = new char[internedSimpleNames.elementSize][];
        Object[] simpleNames = internedSimpleNames.keyTable;
        positions = internedSimpleNames.valueTable;
        int i6 = positions.length;
        while (--i6 >= 0) {
            if (positions[i6] == null) continue;
            int index = (Integer)positions[i6];
            internedArray[index] = (char[])simpleNames[i6];
        }
        this.writeNames(internedArray, out);
        char[][][] internedQArray = new char[internedQualifiedNames.elementSize][][];
        Object[] qualifiedNames = internedQualifiedNames.keyTable;
        positions = internedQualifiedNames.valueTable;
        int i7 = positions.length;
        while (--i7 >= 0) {
            if (positions[i7] == null) continue;
            int index = (Integer)positions[i7];
            internedQArray[index] = (char[][])qualifiedNames[i7];
        }
        length = internedQArray.length;
        out.writeInt(length);
        i7 = 0;
        while (i7 < length) {
            char[][] qName = internedQArray[i7];
            int qLength = qName.length;
            out.writeInt(qLength);
            int j = 0;
            while (j < qLength) {
                Integer index = (Integer)internedSimpleNames.get(qName[j]);
                out.writeInt(index);
                ++j;
            }
            ++i7;
        }
        length = this.references.elementSize;
        out.writeInt(length);
        if (length > 0) {
            keyTable = this.references.keyTable;
            i7 = 0;
            int l2 = keyTable.length;
            while (i7 < l2) {
                if (keyTable[i7] != null) {
                    --length;
                    Integer index = (Integer)internedTypeLocators.get(keyTable[i7]);
                    out.writeInt(index);
                    ReferenceCollection collection = (ReferenceCollection)valueTable[i7];
                    if (collection instanceof AdditionalTypeCollection) {
                        out.writeByte(1);
                        AdditionalTypeCollection atc = (AdditionalTypeCollection)collection;
                        this.writeNames(atc.definedTypeNames, out);
                    } else {
                        out.writeByte(2);
                    }
                    char[][][] qNames = collection.qualifiedNameReferences;
                    int qLength = qNames.length;
                    out.writeInt(qLength);
                    int j = 0;
                    while (j < qLength) {
                        index = (Integer)internedQualifiedNames.get(qNames[j]);
                        out.writeInt(index);
                        ++j;
                    }
                    char[][] sNames = collection.simpleNameReferences;
                    int sLength = sNames.length;
                    out.writeInt(sLength);
                    int j4 = 0;
                    while (j4 < sLength) {
                        index = (Integer)internedSimpleNames.get(sNames[j4]);
                        out.writeInt(index);
                        ++j4;
                    }
                    char[][] rNames = collection.rootReferences;
                    int rLength = rNames.length;
                    out.writeInt(rLength);
                    int j5 = 0;
                    while (j5 < rLength) {
                        index = (Integer)internedRootNames.get(rNames[j5]);
                        out.writeInt(index);
                        ++j5;
                    }
                }
                ++i7;
            }
            if (JavaBuilder.DEBUG && length != 0) {
                System.out.println("references table is inconsistent");
            }
        }
    }

    private void writeName(char[] name, DataOutputStream out) throws IOException {
        int nLength = name.length;
        out.writeInt(nLength);
        int j = 0;
        while (j < nLength) {
            out.writeChar(name[j]);
            ++j;
        }
    }

    private void writeNames(char[][] names, DataOutputStream out) throws IOException {
        int length = names == null ? 0 : names.length;
        out.writeInt(length);
        int i = 0;
        while (i < length) {
            this.writeName(names[i], out);
            ++i;
        }
    }

    private void writeRestriction(AccessRuleSet accessRuleSet, DataOutputStream out) throws IOException {
        if (accessRuleSet == null) {
            out.writeInt(0);
        } else {
            AccessRule[] accessRules = accessRuleSet.getAccessRules();
            int length = accessRules.length;
            out.writeInt(length);
            if (length != 0) {
                int i = 0;
                while (i < length) {
                    AccessRule accessRule = accessRules[i];
                    this.writeName(accessRule.pattern, out);
                    out.writeInt(accessRule.problemId);
                    ++i;
                }
                out.writeByte(accessRuleSet.classpathEntryType);
                out.writeUTF(accessRuleSet.classpathEntryName);
            }
        }
    }

    public String toString() {
        return "State for " + this.javaProjectName + " (#" + this.buildNumber + " @ " + new Date(this.lastStructuralBuildTime) + ")";
    }
}

