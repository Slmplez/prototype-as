/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.registry;

import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.util.HashMap;
import org.eclipse.core.internal.registry.BufferedRandomInputStream;
import org.eclipse.core.internal.registry.ConfigurationElement;
import org.eclipse.core.internal.registry.ConfigurationElementMulti;
import org.eclipse.core.internal.registry.DirectMap;
import org.eclipse.core.internal.registry.Extension;
import org.eclipse.core.internal.registry.ExtensionPoint;
import org.eclipse.core.internal.registry.ExtensionRegistry;
import org.eclipse.core.internal.registry.HashtableOfStringAndInt;
import org.eclipse.core.internal.registry.KeyedHashSet;
import org.eclipse.core.internal.registry.OffsetTable;
import org.eclipse.core.internal.registry.RegistryMessages;
import org.eclipse.core.internal.registry.RegistryObjectFactory;
import org.eclipse.core.internal.registry.RegistryObjectManager;
import org.eclipse.core.internal.registry.RegistryProperties;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.spi.RegistryContributor;
import org.eclipse.osgi.util.NLS;

public class TableReader {
    static final int NULL = 0;
    static final int OBJECT = 1;
    static final int CACHE_VERSION = 7;
    static final String MAIN = ".mainData";
    BufferedRandomInputStream mainDataFile = null;
    DataInputStream mainInput = null;
    static final String EXTRA = ".extraData";
    BufferedRandomInputStream extraDataFile = null;
    DataInputStream extraInput = null;
    static final String TABLE = ".table";
    File tableFile;
    static final String CONTRIBUTIONS = ".contributions";
    File contributionsFile;
    static final String CONTRIBUTORS = ".contributors";
    File contributorsFile;
    static final String NAMESPACES = ".namespaces";
    File namespacesFile;
    static final String ORPHANS = ".orphans";
    File orphansFile;
    private static final byte fileError = 0;
    private static final boolean DEBUG = false;
    private boolean holdObjects = false;
    private ExtensionRegistry registry;
    static final float contributorsLoadFactor = 1.2f;

    void setMainDataFile(File main) throws IOException {
        this.mainDataFile = new BufferedRandomInputStream(main);
        this.mainInput = new DataInputStream(this.mainDataFile);
    }

    void setExtraDataFile(File extra) throws IOException {
        this.extraDataFile = new BufferedRandomInputStream(extra);
        this.extraInput = new DataInputStream(this.extraDataFile);
    }

    void setTableFile(File table) {
        this.tableFile = table;
    }

    void setContributionsFile(File namespace) {
        this.contributionsFile = namespace;
    }

    void setContributorsFile(File file) {
        this.contributorsFile = file;
    }

    void setNamespacesFile(File file) {
        this.namespacesFile = file;
    }

    void setOrphansFile(File orphan) {
        this.orphansFile = orphan;
    }

    public TableReader(ExtensionRegistry registry) {
        this.registry = registry;
    }

    /*
     * Loose catch block
     */
    public Object[] loadTables(long expectedTimestamp) {
        Object[] objectArray;
        FilterInputStream tableInput;
        block16: {
            block14: {
                block15: {
                    tableInput = null;
                    tableInput = new DataInputStream(new BufferedInputStream(new FileInputStream(this.tableFile)));
                    if (this.checkCacheValidity((DataInputStream)tableInput, expectedTimestamp)) break block14;
                    if (tableInput == null) break block15;
                    try {
                        tableInput.close();
                    }
                    catch (IOException iOException) {}
                }
                return null;
            }
            Integer nextId = new Integer(((DataInputStream)tableInput).readInt());
            OffsetTable offsets = OffsetTable.load((DataInputStream)tableInput);
            HashtableOfStringAndInt extensionPoints = new HashtableOfStringAndInt();
            extensionPoints.load((DataInputStream)tableInput);
            objectArray = new Object[]{offsets, extensionPoints, nextId};
            if (tableInput == null) break block16;
            try {
                tableInput.close();
            }
            catch (IOException iOException) {}
        }
        return objectArray;
        catch (IOException e) {
            block17: {
                try {
                    this.log(new Status(4, "org.eclipse.equinox.registry", 0, RegistryMessages.meta_registryCacheReadProblems, (Throwable)e));
                    if (tableInput == null) break block17;
                }
                catch (Throwable throwable) {
                    if (tableInput != null) {
                        try {
                            tableInput.close();
                        }
                        catch (IOException iOException) {}
                    }
                    throw throwable;
                }
                try {
                    tableInput.close();
                }
                catch (IOException iOException) {}
            }
            return null;
        }
    }

    private boolean checkCacheValidity(DataInputStream in, long expectedTimestamp) {
        boolean validOrphan;
        long orphansFileSize;
        long namespacesFileSize;
        long contributorsFileSize;
        long contributionsFileSize;
        long extraDataFileSize;
        long mainDataFileSize;
        block5: {
            boolean validMultiLang;
            block4: {
                try {
                    int version = in.readInt();
                    if (version == 7) break block4;
                    return false;
                }
                catch (IOException e) {
                    this.log(new Status(4, "org.eclipse.equinox.registry", 0, RegistryMessages.meta_registryCacheInconsistent, (Throwable)e));
                    return false;
                }
            }
            long installStamp = in.readLong();
            long registryStamp = in.readLong();
            mainDataFileSize = in.readLong();
            extraDataFileSize = in.readLong();
            contributionsFileSize = in.readLong();
            contributorsFileSize = in.readLong();
            namespacesFileSize = in.readLong();
            orphansFileSize = in.readLong();
            String osStamp = in.readUTF();
            String windowsStamp = in.readUTF();
            String localeStamp = in.readUTF();
            boolean multiLanguage = in.readBoolean();
            boolean validTime = expectedTimestamp == 0L || expectedTimestamp == registryStamp;
            boolean validInstall = installStamp == this.registry.computeState();
            boolean validOS = osStamp.equals(RegistryProperties.getProperty("osgi.os", ""));
            boolean validWS = windowsStamp.equals(RegistryProperties.getProperty("osgi.ws", ""));
            boolean validNL = localeStamp.equals(RegistryProperties.getProperty("osgi.nl", ""));
            boolean bl = validMultiLang = this.registry.isMultiLanguage() == multiLanguage;
            if (validTime && validInstall && validOS && validWS && validNL && validMultiLang) break block5;
            return false;
        }
        boolean validMain = mainDataFileSize == this.mainDataFile.length();
        boolean validExtra = extraDataFileSize == this.extraDataFile.length();
        boolean validContrib = contributionsFileSize == this.contributionsFile.length();
        boolean validContributors = contributorsFileSize == this.contributorsFile.length();
        boolean validNamespace = namespacesFileSize == this.namespacesFile.length();
        boolean bl = validOrphan = orphansFileSize == this.orphansFile.length();
        return validMain && validExtra && validContrib && validContributors && validNamespace && validOrphan;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Object loadConfigurationElement(int offset) {
        try {
            BufferedRandomInputStream bufferedRandomInputStream = this.mainDataFile;
            synchronized (bufferedRandomInputStream) {
                this.goToInputFile(offset);
                return this.basicLoadConfigurationElement(this.mainInput, null);
            }
        }
        catch (IOException e) {
            String message = NLS.bind((String)RegistryMessages.meta_regCacheIOExceptionReading, (Object)this.mainDataFile);
            this.log(new Status(4, "org.eclipse.equinox.registry", 0, message, (Throwable)e));
            return null;
        }
    }

    private ConfigurationElement basicLoadConfigurationElement(DataInputStream is, String actualContributorId) throws IOException {
        int self = is.readInt();
        String contributorId = this.readStringOrNull(is);
        String name = this.readStringOrNull(is);
        int parentId = is.readInt();
        byte parentType = is.readByte();
        int misc = is.readInt();
        String[] propertiesAndValue = this.readPropertiesAndValue(is);
        int[] children = this.readArray(is);
        if (actualContributorId == null) {
            actualContributorId = contributorId;
        }
        ConfigurationElement result = this.getObjectFactory().createConfigurationElement(self, actualContributorId, name, propertiesAndValue, children, misc, parentId, parentType, true);
        if (this.registry.isMultiLanguage()) {
            int numberOfLocales = is.readInt();
            DirectMap translated = null;
            if (numberOfLocales != 0) {
                translated = new DirectMap(numberOfLocales, 0.5f);
                String[] NLs = this.readStringArray(is);
                int i = 0;
                while (i < numberOfLocales) {
                    String[] translatedProperties = this.readStringArray(is);
                    translated.put(NLs[i], translatedProperties);
                    ++i;
                }
            }
            ConfigurationElementMulti multiCE = (ConfigurationElementMulti)result;
            if (translated != null) {
                multiCE.setTranslatedProperties(translated);
            }
        }
        return result;
    }

    private String[] readStringArray(DataInputStream is) throws IOException {
        int size = is.readInt();
        if (size == 0) {
            return null;
        }
        String[] result = new String[size];
        int i = 0;
        while (i < size) {
            result[i] = this.readStringOrNull(is);
            ++i;
        }
        return result;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Object loadThirdLevelConfigurationElements(int offset, RegistryObjectManager objectManager) {
        try {
            BufferedRandomInputStream bufferedRandomInputStream = this.extraDataFile;
            synchronized (bufferedRandomInputStream) {
                this.goToExtraFile(offset);
                return this.loadConfigurationElementAndChildren(null, this.extraInput, 3, Integer.MAX_VALUE, objectManager, null);
            }
        }
        catch (IOException e) {
            String message = NLS.bind((String)RegistryMessages.meta_regCacheIOExceptionReading, (Object)this.extraDataFile);
            this.log(new Status(4, "org.eclipse.equinox.registry", 0, message, (Throwable)e));
            return null;
        }
    }

    private ConfigurationElement loadConfigurationElementAndChildren(DataInputStream is, DataInputStream extraIs, int depth, int maxDepth, RegistryObjectManager objectManager, String namespaceOwnerId) throws IOException {
        DataInputStream currentStream = is;
        if (depth > 2) {
            currentStream = extraIs;
        }
        ConfigurationElement ce = this.basicLoadConfigurationElement(currentStream, namespaceOwnerId);
        if (namespaceOwnerId == null) {
            namespaceOwnerId = ce.getContributorId();
        }
        int[] children = ce.getRawChildren();
        if (depth + 1 > maxDepth) {
            return ce;
        }
        int i = 0;
        while (i < children.length) {
            ConfigurationElement tmp = this.loadConfigurationElementAndChildren(currentStream, extraIs, depth + 1, maxDepth, objectManager, namespaceOwnerId);
            objectManager.add(tmp, this.holdObjects);
            ++i;
        }
        return ce;
    }

    private String[] readPropertiesAndValue(DataInputStream inputStream) throws IOException {
        int numberOfProperties = inputStream.readInt();
        if (numberOfProperties == 0) {
            return RegistryObjectManager.EMPTY_STRING_ARRAY;
        }
        String[] properties = new String[numberOfProperties];
        int i = 0;
        while (i < numberOfProperties) {
            properties[i] = this.readStringOrNull(inputStream);
            ++i;
        }
        return properties;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Object loadExtension(int offset) {
        try {
            BufferedRandomInputStream bufferedRandomInputStream = this.mainDataFile;
            synchronized (bufferedRandomInputStream) {
                this.goToInputFile(offset);
                return this.basicLoadExtension(this.mainInput);
            }
        }
        catch (IOException e) {
            String message = NLS.bind((String)RegistryMessages.meta_regCacheIOExceptionReading, (Object)this.mainDataFile);
            this.log(new Status(4, "org.eclipse.equinox.registry", 0, message, (Throwable)e));
            return null;
        }
    }

    private Extension basicLoadExtension(DataInputStream inputStream) throws IOException {
        int self = inputStream.readInt();
        String simpleId = this.readStringOrNull(this.mainInput);
        String namespace = this.readStringOrNull(this.mainInput);
        int[] children = this.readArray(this.mainInput);
        int extraData = this.mainInput.readInt();
        return this.getObjectFactory().createExtension(self, simpleId, namespace, children, extraData, true);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public ExtensionPoint loadExtensionPointTree(int offset, RegistryObjectManager objects) {
        try {
            BufferedRandomInputStream bufferedRandomInputStream = this.mainDataFile;
            synchronized (bufferedRandomInputStream) {
                ExtensionPoint xpt = (ExtensionPoint)this.loadExtensionPoint(offset);
                int[] children = xpt.getRawChildren();
                int nbrOfExtension = children.length;
                int i = 0;
                while (i < nbrOfExtension) {
                    Extension loaded = this.basicLoadExtension(this.mainInput);
                    objects.add(loaded, this.holdObjects);
                    ++i;
                }
                i = 0;
                while (i < nbrOfExtension) {
                    int nbrOfCe = this.mainInput.readInt();
                    int j = 0;
                    while (j < nbrOfCe) {
                        objects.add(this.loadConfigurationElementAndChildren(this.mainInput, null, 1, 2, objects, null), this.holdObjects);
                        ++j;
                    }
                    ++i;
                }
                return xpt;
            }
        }
        catch (IOException e) {
            String message = NLS.bind((String)RegistryMessages.meta_regCacheIOExceptionReading, (Object)this.mainDataFile);
            this.log(new Status(4, "org.eclipse.equinox.registry", 0, message, (Throwable)e));
            return null;
        }
    }

    private Object loadExtensionPoint(int offset) {
        try {
            this.goToInputFile(offset);
            return this.basicLoadExtensionPoint();
        }
        catch (IOException e) {
            String message = NLS.bind((String)RegistryMessages.meta_regCacheIOExceptionReading, (Object)this.mainDataFile);
            this.log(new Status(4, "org.eclipse.equinox.registry", 0, message, (Throwable)e));
            return null;
        }
    }

    private ExtensionPoint basicLoadExtensionPoint() throws IOException {
        int self = this.mainInput.readInt();
        int[] children = this.readArray(this.mainInput);
        int extraData = this.mainInput.readInt();
        return this.getObjectFactory().createExtensionPoint(self, children, extraData, true);
    }

    private int[] readArray(DataInputStream in) throws IOException {
        int arraySize = in.readInt();
        if (arraySize == 0) {
            return RegistryObjectManager.EMPTY_INT_ARRAY;
        }
        int[] result = new int[arraySize];
        int i = 0;
        while (i < arraySize) {
            result[i] = in.readInt();
            ++i;
        }
        return result;
    }

    private void goToInputFile(int offset) throws IOException {
        this.mainDataFile.seek(offset);
    }

    private void goToExtraFile(int offset) throws IOException {
        this.extraDataFile.seek(offset);
    }

    private String readStringOrNull(DataInputStream in) throws IOException {
        byte type = in.readByte();
        if (type == 0) {
            return null;
        }
        return in.readUTF();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String[] loadExtensionExtraData(int dataPosition) {
        try {
            BufferedRandomInputStream bufferedRandomInputStream = this.extraDataFile;
            synchronized (bufferedRandomInputStream) {
                this.goToExtraFile(dataPosition);
                return this.basicLoadExtensionExtraData();
            }
        }
        catch (IOException e) {
            String message = NLS.bind((String)RegistryMessages.meta_regCacheIOExceptionReading, (Object)this.extraDataFile);
            this.log(new Status(4, "org.eclipse.equinox.registry", 0, message, (Throwable)e));
            return null;
        }
    }

    private String[] basicLoadExtensionExtraData() throws IOException {
        return new String[]{this.readStringOrNull(this.extraInput), this.readStringOrNull(this.extraInput), this.readStringOrNull(this.extraInput)};
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String[] loadExtensionPointExtraData(int offset) {
        try {
            BufferedRandomInputStream bufferedRandomInputStream = this.extraDataFile;
            synchronized (bufferedRandomInputStream) {
                this.goToExtraFile(offset);
                return this.basicLoadExtensionPointExtraData();
            }
        }
        catch (IOException e) {
            String message = NLS.bind((String)RegistryMessages.meta_regCacheIOExceptionReading, (Object)this.extraDataFile);
            this.log(new Status(4, "org.eclipse.equinox.registry", 0, message, (Throwable)e));
            return null;
        }
    }

    private String[] basicLoadExtensionPointExtraData() throws IOException {
        String[] result = new String[]{this.readStringOrNull(this.extraInput), this.readStringOrNull(this.extraInput), this.readStringOrNull(this.extraInput), this.readStringOrNull(this.extraInput), this.readStringOrNull(this.extraInput)};
        return result;
    }

    /*
     * Exception decompiling
     */
    public KeyedHashSet loadContributions() {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Started 2 blocks at once
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.getStartingBlocks(Op04StructuredStatement.java:412)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:487)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Loose catch block
     */
    public HashMap loadContributors() {
        HashMap<String, RegistryContributor> hashMap;
        FilterInputStream contributorsInput;
        block15: {
            HashMap<String, RegistryContributor> result = null;
            contributorsInput = null;
            File file = this.contributorsFile;
            synchronized (file) {
                contributorsInput = new DataInputStream(new BufferedInputStream(new FileInputStream(this.contributorsFile)));
                int size = ((DataInputStream)contributorsInput).readInt();
                result = new HashMap<String, RegistryContributor>((int)((float)size * 1.2f));
                int i = 0;
                while (i < size) {
                    String id = this.readStringOrNull((DataInputStream)contributorsInput);
                    String name = this.readStringOrNull((DataInputStream)contributorsInput);
                    String hostId = this.readStringOrNull((DataInputStream)contributorsInput);
                    String hostName = this.readStringOrNull((DataInputStream)contributorsInput);
                    result.put(id, new RegistryContributor(id, name, hostId, hostName));
                    ++i;
                }
            }
            hashMap = result;
            if (contributorsInput == null) break block15;
            try {
                contributorsInput.close();
            }
            catch (IOException iOException) {}
        }
        return hashMap;
        catch (IOException e) {
            block16: {
                try {
                    String message = NLS.bind((String)RegistryMessages.meta_regCacheIOExceptionReading, (Object)this.contributorsFile);
                    this.log(new Status(4, "org.eclipse.equinox.registry", 0, message, (Throwable)e));
                    if (contributorsInput == null) break block16;
                }
                catch (Throwable throwable) {
                    if (contributorsInput != null) {
                        try {
                            contributorsInput.close();
                        }
                        catch (IOException iOException) {}
                    }
                    throw throwable;
                }
                try {
                    contributorsInput.close();
                }
                catch (IOException iOException) {}
            }
            return null;
        }
    }

    /*
     * Exception decompiling
     */
    public KeyedHashSet loadNamespaces() {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Started 2 blocks at once
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.getStartingBlocks(Op04StructuredStatement.java:412)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:487)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    private void loadAllOrphans(RegistryObjectManager objectManager) throws IOException {
        int orphans = objectManager.getOrphanExtensions().size();
        int k = 0;
        while (k < orphans) {
            int numberOfOrphanExtensions = this.mainInput.readInt();
            int i = 0;
            while (i < numberOfOrphanExtensions) {
                this.loadFullExtension(objectManager);
                ++i;
            }
            i = 0;
            while (i < numberOfOrphanExtensions) {
                int nbrOfCe = this.mainInput.readInt();
                int j = 0;
                while (j < nbrOfCe) {
                    objectManager.add(this.loadConfigurationElementAndChildren(this.mainInput, this.extraInput, 1, Integer.MAX_VALUE, objectManager, null), true);
                    ++j;
                }
                ++i;
            }
            ++k;
        }
    }

    public boolean readAllCache(RegistryObjectManager objectManager) {
        try {
            int size = objectManager.getExtensionPoints().size();
            int i = 0;
            while (i < size) {
                objectManager.add(this.readAllExtensionPointTree(objectManager), this.holdObjects);
                ++i;
            }
            this.loadAllOrphans(objectManager);
        }
        catch (IOException e) {
            String message = NLS.bind((String)RegistryMessages.meta_regCacheIOExceptionReading, (Object)this.mainDataFile);
            this.log(new Status(4, "org.eclipse.equinox.registry", 0, message, (Throwable)e));
            return false;
        }
        return true;
    }

    private ExtensionPoint readAllExtensionPointTree(RegistryObjectManager objectManager) throws IOException {
        ExtensionPoint xpt = this.loadFullExtensionPoint();
        int[] children = xpt.getRawChildren();
        int nbrOfExtension = children.length;
        int i = 0;
        while (i < nbrOfExtension) {
            this.loadFullExtension(objectManager);
            ++i;
        }
        i = 0;
        while (i < nbrOfExtension) {
            int nbrOfCe = this.mainInput.readInt();
            int j = 0;
            while (j < nbrOfCe) {
                objectManager.add(this.loadConfigurationElementAndChildren(this.mainInput, this.extraInput, 1, Integer.MAX_VALUE, objectManager, null), true);
                ++j;
            }
            ++i;
        }
        return xpt;
    }

    private ExtensionPoint loadFullExtensionPoint() throws IOException {
        ExtensionPoint xpt = this.basicLoadExtensionPoint();
        String[] tmp = this.basicLoadExtensionPointExtraData();
        xpt.setLabel(tmp[0]);
        xpt.setSchema(tmp[1]);
        xpt.setUniqueIdentifier(tmp[2]);
        xpt.setNamespace(tmp[3]);
        xpt.setContributorId(tmp[4]);
        return xpt;
    }

    private Extension loadFullExtension(RegistryObjectManager objectManager) throws IOException {
        Extension loaded = this.basicLoadExtension(this.mainInput);
        String[] tmp = this.basicLoadExtensionExtraData();
        loaded.setLabel(tmp[0]);
        loaded.setExtensionPointIdentifier(tmp[1]);
        loaded.setContributorId(tmp[2]);
        objectManager.add(loaded, this.holdObjects);
        return loaded;
    }

    /*
     * Exception decompiling
     */
    public HashMap loadOrphans() {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Started 2 blocks at once
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.getStartingBlocks(Op04StructuredStatement.java:412)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:487)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    public void setHoldObjects(boolean holdObjects) {
        this.holdObjects = holdObjects;
    }

    private void log(Status status) {
        this.registry.log((IStatus)status);
    }

    private RegistryObjectFactory getObjectFactory() {
        return this.registry.getElementFactory();
    }

    public static String getTestFileName() {
        return TABLE;
    }

    public void close() {
        try {
            if (this.mainInput != null) {
                this.mainInput.close();
            }
            if (this.extraInput != null) {
                this.extraInput.close();
            }
        }
        catch (IOException e) {
            this.log(new Status(4, "org.eclipse.equinox.registry", 0, RegistryMessages.meta_registryCacheReadProblems, (Throwable)e));
        }
    }
}

