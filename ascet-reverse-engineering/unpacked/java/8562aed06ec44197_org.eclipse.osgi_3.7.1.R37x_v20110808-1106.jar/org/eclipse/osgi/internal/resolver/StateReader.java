/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FilterInputStream;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.security.AccessController;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Dictionary;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.osgi.framework.util.ObjectPool;
import org.eclipse.osgi.framework.util.SecureAction;
import org.eclipse.osgi.internal.resolver.BaseDescriptionImpl;
import org.eclipse.osgi.internal.resolver.BundleDescriptionImpl;
import org.eclipse.osgi.internal.resolver.BundleSpecificationImpl;
import org.eclipse.osgi.internal.resolver.ExportPackageDescriptionImpl;
import org.eclipse.osgi.internal.resolver.GenericDescriptionImpl;
import org.eclipse.osgi.internal.resolver.GenericSpecificationImpl;
import org.eclipse.osgi.internal.resolver.HostSpecificationImpl;
import org.eclipse.osgi.internal.resolver.ImportPackageSpecificationImpl;
import org.eclipse.osgi.internal.resolver.NativeCodeDescriptionImpl;
import org.eclipse.osgi.internal.resolver.NativeCodeSpecificationImpl;
import org.eclipse.osgi.internal.resolver.StateImpl;
import org.eclipse.osgi.internal.resolver.VersionConstraintImpl;
import org.eclipse.osgi.service.resolver.BaseDescription;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.DisabledInfo;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.GenericDescription;
import org.eclipse.osgi.service.resolver.GenericSpecification;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.NativeCodeDescription;
import org.eclipse.osgi.service.resolver.NativeCodeSpecification;
import org.eclipse.osgi.service.resolver.StateWire;
import org.eclipse.osgi.service.resolver.VersionConstraint;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.Version;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
final class StateReader {
    public static final String STATE_FILE = ".state";
    public static final String LAZY_FILE = ".lazy";
    private static final int BUFFER_SIZE_LAZY = 4096;
    private static final int BUFFER_SIZE_FULLYREAD = 16384;
    private static final SecureAction secureAction = AccessController.doPrivileged(SecureAction.createSecureAction());
    final Map<Integer, Object> objectTable = Collections.synchronizedMap(new HashMap());
    private volatile File stateFile;
    private volatile File lazyFile;
    private volatile boolean lazyLoad = true;
    private volatile int numBundles;
    private volatile boolean accessedFlag = false;
    public static final byte STATE_CACHE_VERSION = 36;
    public static final byte NULL = 0;
    public static final byte OBJECT = 1;
    public static final byte INDEX = 2;
    static /* synthetic */ Class class$0;

    public StateReader() {
        this.lazyLoad = false;
    }

    public StateReader(File stateDirectory) {
        if (!stateDirectory.exists()) {
            stateDirectory.mkdirs();
        }
        this.stateFile = new File(stateDirectory, STATE_FILE);
        this.lazyFile = new File(stateDirectory, LAZY_FILE);
        this.lazyLoad = false;
    }

    public StateReader(File stateFile, File lazyFile, boolean lazyLoad) {
        this.stateFile = stateFile;
        this.lazyFile = lazyFile;
        this.lazyLoad = lazyLoad;
    }

    private void addToObjectTable(Object object, int index) {
        this.objectTable.put(new Integer(index), object);
    }

    private Object getFromObjectTable(int index) {
        Object result = this.objectTable.get(new Integer(index));
        if (result == null) {
            throw new IllegalStateException(new StringBuffer("Expected to find an object at table index: ").append(index).toString());
        }
        return result;
    }

    private boolean readState(StateImpl state, long expectedTimestamp) throws IOException {
        int i;
        FilterInputStream lazyIn;
        DataInputStream in;
        block34: {
            long timestampRead;
            int index;
            block33: {
                block32: {
                    block31: {
                        in = new DataInputStream(new BufferedInputStream(secureAction.getFileInputStream(this.stateFile), 16384));
                        lazyIn = null;
                        if (in.readByte() == 36) break block31;
                        in.close();
                        if (lazyIn != null) {
                            try {
                                lazyIn.close();
                            }
                            catch (IOException iOException) {}
                        }
                        return false;
                    }
                    byte tag = this.readTag(in);
                    if (tag == 1) break block32;
                    in.close();
                    if (lazyIn != null) {
                        try {
                            lazyIn.close();
                        }
                        catch (IOException iOException) {}
                    }
                    return false;
                }
                index = in.readInt();
                timestampRead = in.readLong();
                if (expectedTimestamp < 0L || timestampRead == expectedTimestamp) break block33;
                in.close();
                if (lazyIn != null) {
                    try {
                        lazyIn.close();
                    }
                    catch (IOException iOException) {}
                }
                return false;
            }
            this.addToObjectTable(state, index);
            String[] platformPropKeys = (String[])this.readPlatformProp(in);
            state.addPlatformPropertyKeys(platformPropKeys);
            int numSets = in.readInt();
            Dictionary[] platformProps = new Dictionary[numSets];
            int i2 = 0;
            while (i2 < numSets) {
                Hashtable<String, Object> props = new Hashtable<String, Object>(platformPropKeys.length);
                int numProps = in.readInt();
                int j = 0;
                while (j < numProps) {
                    Object value = this.readPlatformProp(in);
                    if (value != null && j < platformPropKeys.length) {
                        props.put(platformPropKeys[j], value);
                    }
                    ++j;
                }
                platformProps[i2] = props;
                ++i2;
            }
            state.setPlatformProperties(platformProps, false);
            this.numBundles = in.readInt();
            i2 = 0;
            while (i2 < this.numBundles) {
                BundleDescriptionImpl bundle = this.readBundleDescription(in);
                state.basicAddBundle(bundle);
                if (bundle.isResolved()) {
                    state.addResolvedBundle(bundle);
                }
                ++i2;
            }
            int numDisableInfos = in.readInt();
            i = 0;
            while (i < numDisableInfos) {
                DisabledInfo info = this.readDisabledInfo(in);
                state.addDisabledInfo(info);
                ++i;
            }
            state.setTimeStamp(timestampRead);
            state.setResolved(in.readBoolean());
            if (!this.lazyLoad) break block34;
            in.close();
            if (lazyIn != null) {
                try {
                    lazyIn.close();
                }
                catch (IOException iOException) {}
            }
            return true;
        }
        try {
            lazyIn = new DataInputStream(new BufferedInputStream(secureAction.getFileInputStream(this.lazyFile), 16384));
            i = 0;
            while (i < this.numBundles) {
                this.readBundleDescriptionLazyData((DataInputStream)lazyIn, 0);
                ++i;
            }
        }
        catch (Throwable throwable) {
            in.close();
            if (lazyIn != null) {
                try {
                    lazyIn.close();
                }
                catch (IOException iOException) {}
            }
            throw throwable;
        }
        in.close();
        if (lazyIn != null) {
            try {
                lazyIn.close();
            }
            catch (IOException iOException) {}
        }
        return true;
    }

    private boolean readStateDeprecated(StateImpl state, DataInputStream in, long expectedTimestamp) throws IOException {
        if (in.readByte() != 36) {
            return false;
        }
        byte tag = this.readTag(in);
        if (tag != 1) {
            return false;
        }
        int index = in.readInt();
        long timestampRead = in.readLong();
        if (expectedTimestamp >= 0L && timestampRead != expectedTimestamp) {
            return false;
        }
        this.addToObjectTable(state, index);
        String[] platformPropKeys = (String[])this.readPlatformProp(in);
        state.addPlatformPropertyKeys(platformPropKeys);
        int numSets = in.readInt();
        Dictionary[] platformProps = new Dictionary[numSets];
        int i = 0;
        while (i < numSets) {
            Hashtable<String, Object> props = new Hashtable<String, Object>(platformPropKeys.length);
            int numProps = in.readInt();
            int j = 0;
            while (j < numProps) {
                Object value = this.readPlatformProp(in);
                if (value != null && j < platformPropKeys.length) {
                    props.put(platformPropKeys[j], value);
                }
                ++j;
            }
            platformProps[i] = props;
            ++i;
        }
        state.setPlatformProperties(platformProps);
        this.numBundles = in.readInt();
        if (this.numBundles == 0) {
            return true;
        }
        i = 0;
        while (i < this.numBundles) {
            BundleDescriptionImpl bundle = this.readBundleDescription(in);
            state.basicAddBundle(bundle);
            if (bundle.isResolved()) {
                state.addResolvedBundle(bundle);
            }
            ++i;
        }
        state.setTimeStamp(timestampRead);
        state.setResolved(in.readBoolean());
        in.readInt();
        if (this.lazyLoad) {
            return true;
        }
        i = 0;
        while (i < this.numBundles) {
            this.readBundleDescriptionLazyData(in, 0);
            ++i;
        }
        return true;
    }

    private Object readPlatformProp(DataInputStream in) throws IOException {
        byte type = in.readByte();
        if (type == 0) {
            return null;
        }
        int num = in.readInt();
        if (num == 1) {
            return this.readString(in, false);
        }
        String[] result = new String[num];
        int i = 0;
        while (i < result.length) {
            result[i] = this.readString(in, false);
            ++i;
        }
        return result;
    }

    private BundleDescriptionImpl readBundleDescription(DataInputStream in) throws IOException {
        BundleDescription[] hosts;
        HostSpecificationImpl hostSpec;
        byte tag = this.readTag(in);
        if (tag == 0) {
            return null;
        }
        if (tag == 2) {
            return (BundleDescriptionImpl)this.getFromObjectTable(in.readInt());
        }
        BundleDescriptionImpl result = new BundleDescriptionImpl();
        this.addToObjectTable(result, in.readInt());
        result.setBundleId(in.readLong());
        this.readBaseDescription(result, in);
        result.setLazyDataOffset(in.readInt());
        result.setLazyDataSize(in.readInt());
        result.setStateBit(1, in.readBoolean());
        result.setStateBit(2, in.readBoolean());
        result.setStateBit(32, in.readBoolean());
        result.setStateBit(64, in.readBoolean());
        result.setStateBit(128, in.readBoolean());
        String[] mandatory = this.readList(in);
        if (mandatory != null) {
            result.setDirective("mandatory", mandatory);
        }
        result.setAttributes(this.readMap(in));
        result.setHost(this.readHostSpec(in));
        int numDeps = in.readInt();
        if (numDeps > 0) {
            BaseDescription[] deps = new BundleDescription[numDeps];
            int i = 0;
            while (i < numDeps) {
                deps[i] = this.readBundleDescription(in);
                ++i;
            }
            result.addDependencies(deps, false);
        }
        if ((hostSpec = (HostSpecificationImpl)result.getHost()) != null && (hosts = hostSpec.getHosts()) != null) {
            int i = 0;
            while (i < hosts.length) {
                ((BundleDescriptionImpl)hosts[i]).addDependency(result, false);
                ++i;
            }
        }
        result.setFullyLoaded(false);
        return result;
    }

    private BundleDescriptionImpl readBundleDescriptionLazyData(DataInputStream in, int skip) throws IOException {
        int resolvedGenCapCnt;
        int selectedGenCapCnt;
        int genericReqCnt;
        int genericCapCnt;
        int dynamicPkgCnt;
        int eeCount;
        int resolvedRequiredCount;
        int resolvedCount;
        int substitutedCount;
        int selectedCount;
        int requiredBundleCount;
        int importCount;
        int index;
        BundleDescriptionImpl result;
        if (skip > 0) {
            in.skipBytes(skip);
        }
        if ((result = (BundleDescriptionImpl)this.getFromObjectTable(index = in.readInt())).isFullyLoaded()) {
            in.skipBytes(result.getLazyDataSize() - 4);
            return result;
        }
        result.setLocation(this.readString(in, false));
        result.setPlatformFilter(this.readString(in, false));
        int exportCount = in.readInt();
        if (exportCount > 0) {
            ExportPackageDescription[] exports = new ExportPackageDescription[exportCount];
            int i = 0;
            while (i < exports.length) {
                exports[i] = this.readExportPackageDesc(in);
                ++i;
            }
            result.setExportPackages(exports);
        }
        if ((importCount = in.readInt()) > 0) {
            ImportPackageSpecification[] imports = new ImportPackageSpecification[importCount];
            int i = 0;
            while (i < imports.length) {
                imports[i] = this.readImportPackageSpec(in);
                ++i;
            }
            result.setImportPackages(imports);
        }
        if ((requiredBundleCount = in.readInt()) > 0) {
            BundleSpecification[] requiredBundles = new BundleSpecification[requiredBundleCount];
            int i = 0;
            while (i < requiredBundles.length) {
                requiredBundles[i] = this.readBundleSpec(in);
                ++i;
            }
            result.setRequiredBundles(requiredBundles);
        }
        if ((selectedCount = in.readInt()) > 0) {
            ExportPackageDescription[] selected = new ExportPackageDescription[selectedCount];
            int i = 0;
            while (i < selected.length) {
                selected[i] = this.readExportPackageDesc(in);
                ++i;
            }
            result.setSelectedExports(selected);
        }
        if ((substitutedCount = in.readInt()) > 0) {
            ExportPackageDescription[] selected = new ExportPackageDescription[substitutedCount];
            int i = 0;
            while (i < selected.length) {
                selected[i] = this.readExportPackageDesc(in);
                ++i;
            }
            result.setSubstitutedExports(selected);
        }
        if ((resolvedCount = in.readInt()) > 0) {
            ExportPackageDescription[] resolved = new ExportPackageDescription[resolvedCount];
            int i = 0;
            while (i < resolved.length) {
                resolved[i] = this.readExportPackageDesc(in);
                ++i;
            }
            result.setResolvedImports(resolved);
        }
        if ((resolvedRequiredCount = in.readInt()) > 0) {
            BundleDescription[] resolved = new BundleDescription[resolvedRequiredCount];
            int i = 0;
            while (i < resolved.length) {
                resolved[i] = this.readBundleDescription(in);
                ++i;
            }
            result.setResolvedRequires(resolved);
        }
        if ((eeCount = in.readInt()) > 0) {
            String[] ee = new String[eeCount];
            int i = 0;
            while (i < ee.length) {
                ee[i] = this.readString(in, false);
                ++i;
            }
            result.setExecutionEnvironments(ee);
        }
        if ((dynamicPkgCnt = in.readInt()) > 0) {
            HashMap<String, Long> dynamicStamps = new HashMap<String, Long>(dynamicPkgCnt);
            int i = 0;
            while (i < dynamicPkgCnt) {
                String pkg = this.readString(in, false);
                Long stamp = new Long(in.readLong());
                dynamicStamps.put(pkg, stamp);
                ++i;
            }
            result.setDynamicStamps(dynamicStamps);
        }
        if ((genericCapCnt = in.readInt()) > 0) {
            GenericDescription[] capabilities = new GenericDescription[genericCapCnt];
            int i = 0;
            while (i < capabilities.length) {
                capabilities[i] = this.readGenericDescription(in);
                ++i;
            }
            result.setGenericCapabilities(capabilities);
        }
        if ((genericReqCnt = in.readInt()) > 0) {
            GenericSpecification[] reqs = new GenericSpecification[genericReqCnt];
            int i = 0;
            while (i < reqs.length) {
                reqs[i] = this.readGenericSpecification(in);
                ++i;
            }
            result.setGenericRequires(reqs);
        }
        if ((selectedGenCapCnt = in.readInt()) > 0) {
            GenericDescription[] capabilities = new GenericDescription[selectedGenCapCnt];
            int i = 0;
            while (i < capabilities.length) {
                capabilities[i] = this.readGenericDescription(in);
                ++i;
            }
            result.setSelectedCapabilities(capabilities);
        }
        if ((resolvedGenCapCnt = in.readInt()) > 0) {
            GenericDescription[] capabilities = new GenericDescription[resolvedGenCapCnt];
            int i = 0;
            while (i < capabilities.length) {
                capabilities[i] = this.readGenericDescription(in);
                ++i;
            }
            result.setResolvedCapabilities(capabilities);
        }
        result.setNativeCodeSpecification(this.readNativeCode(in));
        Map<String, Object> raw = this.readMap(in);
        result.setStateWires(raw);
        result.setFullyLoaded(true);
        return result;
    }

    private BundleSpecificationImpl readBundleSpec(DataInputStream in) throws IOException {
        byte tag = this.readTag(in);
        if (tag == 0) {
            return null;
        }
        if (tag == 2) {
            return (BundleSpecificationImpl)this.getFromObjectTable(in.readInt());
        }
        BundleSpecificationImpl result = new BundleSpecificationImpl();
        int tableIndex = in.readInt();
        this.addToObjectTable(result, tableIndex);
        this.readVersionConstraint(result, in);
        result.setSupplier(this.readBundleDescription(in));
        result.setExported(in.readBoolean());
        result.setOptional(in.readBoolean());
        result.setAttributes(this.readMap(in));
        return result;
    }

    private ExportPackageDescriptionImpl readExportPackageDesc(DataInputStream in) throws IOException {
        byte tag = this.readTag(in);
        if (tag == 0) {
            return null;
        }
        if (tag == 2) {
            return (ExportPackageDescriptionImpl)this.getFromObjectTable(in.readInt());
        }
        ExportPackageDescriptionImpl exportPackageDesc = new ExportPackageDescriptionImpl();
        int tableIndex = in.readInt();
        this.addToObjectTable(exportPackageDesc, tableIndex);
        this.readBaseDescription(exportPackageDesc, in);
        exportPackageDesc.setExporter(this.readBundleDescription(in));
        exportPackageDesc.setAttributes(this.readMap(in));
        exportPackageDesc.setDirectives(this.readMap(in));
        exportPackageDesc.setFragmentDeclaration(this.readExportPackageDesc(in));
        return exportPackageDesc;
    }

    private DisabledInfo readDisabledInfo(DataInputStream in) throws IOException {
        return new DisabledInfo(this.readString(in, false), this.readString(in, false), this.readBundleDescription(in));
    }

    private Map<String, Object> readMap(DataInputStream in) throws IOException {
        int count = in.readInt();
        if (count == 0) {
            return null;
        }
        HashMap<String, Object> result = new HashMap<String, Object>(count);
        int i = 0;
        while (i < count) {
            String key = this.readString(in, false);
            Object value = null;
            byte type = in.readByte();
            if (type == 0) {
                value = this.readString(in, false);
            } else if (type == 1) {
                value = this.readList(in);
            } else if (type == 2) {
                value = in.readBoolean() ? Boolean.TRUE : Boolean.FALSE;
            } else if (type == 3) {
                value = new Integer(in.readInt());
            } else if (type == 4) {
                value = new Long(in.readLong());
            } else if (type == 5) {
                value = new Double(in.readDouble());
            } else if (type == 6) {
                value = this.readVersion(in);
            } else if (type == 7) {
                value = this.readString(in, false);
                try {
                    Class<?> uriClazz = Class.forName("java.net.URI");
                    Class[] classArray = new Class[1];
                    Class<?> clazz = class$0;
                    if (clazz == null) {
                        try {
                            clazz = Class.forName("java.lang.String");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    classArray[0] = clazz;
                    Constructor<?> constructor = uriClazz.getConstructor(classArray);
                    value = constructor.newInstance(value);
                }
                catch (ClassNotFoundException classNotFoundException) {
                }
                catch (RuntimeException e) {
                    throw e;
                }
                catch (Exception e) {
                    throw new RuntimeException(e.getMessage(), e);
                }
            } else if (type == 8) {
                byte listType = in.readByte();
                int size = in.readInt();
                ArrayList<Object> list = new ArrayList<Object>(size);
                int j = 0;
                while (j < size) {
                    switch (listType) {
                        case 0: {
                            list.add(this.readString(in, false));
                            break;
                        }
                        case 3: {
                            list.add(new Integer(in.readInt()));
                            break;
                        }
                        case 4: {
                            list.add(new Long(in.readLong()));
                            break;
                        }
                        case 5: {
                            list.add(new Double(in.readDouble()));
                            break;
                        }
                        case 6: {
                            list.add(this.readVersion(in));
                            break;
                        }
                        case 7: {
                            list.add(this.readStateWire(in));
                            break;
                        }
                        default: {
                            throw new IOException(new StringBuffer("Invalid type: ").append(listType).toString());
                        }
                    }
                    ++j;
                }
                value = list;
            }
            result.put(key, value);
            ++i;
        }
        return result;
    }

    private Object readStateWire(DataInputStream in) throws IOException {
        BaseDescription capability;
        VersionConstraint requirement;
        byte wireType = in.readByte();
        switch (wireType) {
            case 0: {
                requirement = this.readImportPackageSpec(in);
                capability = this.readExportPackageDesc(in);
                break;
            }
            case 1: {
                requirement = this.readBundleSpec(in);
                capability = this.readBundleDescription(in);
                break;
            }
            case 2: {
                requirement = this.readHostSpec(in);
                capability = this.readBundleDescription(in);
                break;
            }
            case 3: {
                requirement = this.readGenericSpecification(in);
                capability = this.readGenericDescription(in);
                break;
            }
            default: {
                throw new IOException(new StringBuffer("Invalid wire type: ").append(wireType).toString());
            }
        }
        BundleDescriptionImpl requirementHost = this.readBundleDescription(in);
        BundleDescriptionImpl capabilityHost = this.readBundleDescription(in);
        return new StateWire(requirementHost, requirement, capabilityHost, capability);
    }

    private String[] readList(DataInputStream in) throws IOException {
        int count = in.readInt();
        if (count == 0) {
            return null;
        }
        String[] result = new String[count];
        int i = 0;
        while (i < count) {
            result[i] = this.readString(in, false);
            ++i;
        }
        return result;
    }

    private void readBaseDescription(BaseDescriptionImpl root, DataInputStream in) throws IOException {
        root.setName(this.readString(in, false));
        root.setVersion(this.readVersion(in));
    }

    private ImportPackageSpecificationImpl readImportPackageSpec(DataInputStream in) throws IOException {
        byte tag = this.readTag(in);
        if (tag == 0) {
            return null;
        }
        if (tag == 2) {
            return (ImportPackageSpecificationImpl)this.getFromObjectTable(in.readInt());
        }
        ImportPackageSpecificationImpl result = new ImportPackageSpecificationImpl();
        int tableIndex = in.readInt();
        this.addToObjectTable(result, tableIndex);
        this.readVersionConstraint(result, in);
        result.setSupplier(this.readExportPackageDesc(in));
        result.setBundleSymbolicName(this.readString(in, false));
        result.setBundleVersionRange(this.readVersionRange(in));
        result.setAttributes(this.readMap(in));
        result.setDirectives(this.readMap(in));
        return result;
    }

    private HostSpecificationImpl readHostSpec(DataInputStream in) throws IOException {
        byte tag = this.readTag(in);
        if (tag == 0) {
            return null;
        }
        if (tag == 2) {
            return (HostSpecificationImpl)this.getFromObjectTable(in.readInt());
        }
        HostSpecificationImpl result = new HostSpecificationImpl();
        int tableIndex = in.readInt();
        this.addToObjectTable(result, tableIndex);
        this.readVersionConstraint(result, in);
        int hostCount = in.readInt();
        if (hostCount > 0) {
            BundleDescription[] hosts = new BundleDescription[hostCount];
            int i = 0;
            while (i < hosts.length) {
                hosts[i] = this.readBundleDescription(in);
                ++i;
            }
            result.setHosts(hosts);
        }
        result.setAttributes(this.readMap(in));
        return result;
    }

    private GenericDescription readGenericDescription(DataInputStream in) throws IOException {
        byte tag = this.readTag(in);
        if (tag == 0) {
            return null;
        }
        if (tag == 2) {
            return (GenericDescription)this.getFromObjectTable(in.readInt());
        }
        int tableIndex = in.readInt();
        GenericDescriptionImpl result = new GenericDescriptionImpl();
        this.addToObjectTable(result, tableIndex);
        this.readBaseDescription(result, in);
        result.setSupplier(this.readBundleDescription(in));
        result.setType(this.readString(in, false));
        Map<String, Object> mapAttrs = this.readMap(in);
        Hashtable<String, Object> attrs = new Hashtable<String, Object>();
        if (mapAttrs != null) {
            for (String key : mapAttrs.keySet()) {
                ((Dictionary)attrs).put(key, mapAttrs.get(key));
            }
        }
        result.setAttributes(attrs);
        Map<String, Object> directives = this.readMap(in);
        if (directives != null) {
            result.setDirectives(directives);
        }
        result.setFragmentDeclaration(this.readGenericDescription(in));
        return result;
    }

    private GenericSpecification readGenericSpecification(DataInputStream in) throws IOException {
        byte tag = this.readTag(in);
        if (tag == 0) {
            return null;
        }
        if (tag == 2) {
            return (GenericSpecification)this.getFromObjectTable(in.readInt());
        }
        GenericSpecificationImpl result = new GenericSpecificationImpl();
        int tableIndex = in.readInt();
        this.addToObjectTable(result, tableIndex);
        this.readVersionConstraint(result, in);
        result.setType(this.readString(in, false));
        int num = in.readInt();
        GenericDescription[] suppliers = num == 0 ? null : new GenericDescription[num];
        int i = 0;
        while (i < num) {
            suppliers[i] = this.readGenericDescription(in);
            ++i;
        }
        result.setSupplers(suppliers);
        result.setResolution(in.readInt());
        try {
            result.setMatchingFilter(this.readString(in, false), false);
        }
        catch (InvalidSyntaxException invalidSyntaxException) {}
        return result;
    }

    private NativeCodeSpecification readNativeCode(DataInputStream in) throws IOException {
        if (!in.readBoolean()) {
            return null;
        }
        NativeCodeSpecificationImpl result = new NativeCodeSpecificationImpl();
        result.setOptional(in.readBoolean());
        int numNativeDesc = in.readInt();
        NativeCodeDescription[] nativeDescs = new NativeCodeDescriptionImpl[numNativeDesc];
        int i = 0;
        while (i < numNativeDesc) {
            nativeDescs[i] = this.readNativeCodeDescription(in);
            ++i;
        }
        result.setPossibleSuppliers(nativeDescs);
        int supplierIndex = in.readInt();
        if (supplierIndex >= 0) {
            result.setSupplier(nativeDescs[supplierIndex]);
        }
        return result;
    }

    private NativeCodeDescriptionImpl readNativeCodeDescription(DataInputStream in) throws IOException {
        NativeCodeDescriptionImpl result = new NativeCodeDescriptionImpl();
        this.readBaseDescription(result, in);
        result.setSupplier(this.readBundleDescription(in));
        try {
            result.setFilter(this.readString(in, false));
        }
        catch (InvalidSyntaxException invalidSyntaxException) {}
        result.setLanguages(this.readStringArray(in));
        result.setNativePaths(this.readStringArray(in));
        result.setOSNames(this.readStringArray(in));
        result.setOSVersions(this.readVersionRanges(in));
        result.setProcessors(this.readStringArray(in));
        result.setInvalidNativePaths(in.readBoolean());
        return result;
    }

    private VersionRange[] readVersionRanges(DataInputStream in) throws IOException {
        int num = in.readInt();
        if (num == 0) {
            return null;
        }
        VersionRange[] result = new VersionRange[num];
        int i = 0;
        while (i < num) {
            result[i] = this.readVersionRange(in);
            ++i;
        }
        return result;
    }

    private String[] readStringArray(DataInputStream in) throws IOException {
        int num = in.readInt();
        if (num == 0) {
            return null;
        }
        String[] result = new String[num];
        int i = 0;
        while (i < num) {
            result[i] = this.readString(in, false);
            ++i;
        }
        return result;
    }

    private void readVersionConstraint(VersionConstraintImpl version, DataInputStream in) throws IOException {
        version.setName(this.readString(in, false));
        version.setVersionRange(this.readVersionRange(in));
    }

    private Version readVersion(DataInputStream in) throws IOException {
        byte tag = this.readTag(in);
        if (tag == 0) {
            return Version.emptyVersion;
        }
        int majorComponent = in.readInt();
        int minorComponent = in.readInt();
        int serviceComponent = in.readInt();
        String qualifierComponent = this.readString(in, false);
        Version result = (Version)ObjectPool.intern(new Version(majorComponent, minorComponent, serviceComponent, qualifierComponent));
        return result;
    }

    private VersionRange readVersionRange(DataInputStream in) throws IOException {
        byte tag = this.readTag(in);
        if (tag == 0) {
            return null;
        }
        return new VersionRange(this.readVersion(in), in.readBoolean(), this.readVersion(in), in.readBoolean());
    }

    public synchronized boolean loadStateDeprecated(StateImpl state, DataInputStream input, long expectedTimestamp) throws IOException {
        try {
            boolean bl = this.readStateDeprecated(state, input, expectedTimestamp);
            return bl;
        }
        finally {
            input.close();
        }
    }

    public synchronized boolean loadState(StateImpl state, long expectedTimestamp) throws IOException {
        return this.readState(state, expectedTimestamp);
    }

    private String readString(DataInputStream in, boolean intern) throws IOException {
        byte type = in.readByte();
        if (type == 0) {
            return null;
        }
        if (intern) {
            return in.readUTF().intern();
        }
        return (String)ObjectPool.intern(in.readUTF());
    }

    private byte readTag(DataInputStream in) throws IOException {
        return in.readByte();
    }

    private DataInputStream openLazyFile() throws IOException {
        if (this.lazyFile == null) {
            throw new IOException();
        }
        return new DataInputStream(new BufferedInputStream(secureAction.getFileInputStream(this.lazyFile), 4096));
    }

    boolean isLazyLoaded() {
        return this.lazyLoad;
    }

    boolean getAccessedFlag() {
        return this.accessedFlag;
    }

    void setAccessedFlag(boolean accessedFlag) {
        this.accessedFlag = accessedFlag;
    }

    void fullyLoad() {
        this.setAccessedFlag(true);
        DataInputStream in = null;
        try {
            try {
                in = this.openLazyFile();
                int i = 0;
                while (i < this.numBundles) {
                    this.readBundleDescriptionLazyData(in, 0);
                    ++i;
                }
            }
            catch (IOException ioe) {
                throw new RuntimeException(ioe.getMessage(), ioe);
            }
        }
        catch (Throwable throwable) {
            if (in != null) {
                try {
                    in.close();
                }
                catch (IOException iOException) {}
            }
            throw throwable;
        }
        if (in != null) {
            try {
                in.close();
            }
            catch (IOException iOException) {}
        }
    }

    void fullyLoad(BundleDescriptionImpl target) throws IOException {
        this.setAccessedFlag(true);
        DataInputStream in = null;
        try {
            in = this.openLazyFile();
            ArrayList<BundleDescriptionImpl> toLoad = new ArrayList<BundleDescriptionImpl>();
            this.addDependencies(target, toLoad);
            int[] skipBytes = this.getSkipBytes(toLoad);
            int i = 0;
            while (i < skipBytes.length) {
                this.readBundleDescriptionLazyData(in, skipBytes[i]);
                ++i;
            }
        }
        finally {
            if (in != null) {
                in.close();
            }
        }
    }

    private void addDependencies(BundleDescriptionImpl target, List<BundleDescriptionImpl> toLoad) {
        if (toLoad.contains(target) || target.isFullyLoaded()) {
            return;
        }
        Iterator<BundleDescriptionImpl> load = toLoad.iterator();
        int i = 0;
        while (load.hasNext()) {
            BundleDescriptionImpl bundle = load.next();
            if (target.getLazyDataOffset() < bundle.getLazyDataOffset()) break;
            ++i;
        }
        if (i >= toLoad.size()) {
            toLoad.add(target);
        } else {
            toLoad.add(i, target);
        }
        List<BundleDescription> deps = target.getBundleDependencies();
        Iterator<BundleDescription> iter = deps.iterator();
        while (iter.hasNext()) {
            this.addDependencies((BundleDescriptionImpl)iter.next(), toLoad);
        }
    }

    private int[] getSkipBytes(List<BundleDescriptionImpl> toLoad) {
        int[] skipBytes = new int[toLoad.size()];
        int i = 0;
        while (i < skipBytes.length) {
            BundleDescriptionImpl current = toLoad.get(i);
            if (i == 0) {
                skipBytes[i] = current.getLazyDataOffset();
            } else {
                BundleDescriptionImpl previous = toLoad.get(i - 1);
                skipBytes[i] = current.getLazyDataOffset() - previous.getLazyDataOffset() - previous.getLazyDataSize();
            }
            ++i;
        }
        return skipBytes;
    }

    void flushLazyObjectCache() {
        Iterator<Map.Entry<Integer, Object>> entries = this.objectTable.entrySet().iterator();
        while (entries.hasNext()) {
            Map.Entry<Integer, Object> entry = entries.next();
            Object value = entry.getValue();
            if (!(value instanceof ExportPackageDescription) && !(value instanceof GenericDescription) && !(value instanceof ImportPackageSpecification) && !(value instanceof BundleSpecification) && !(value instanceof GenericSpecification)) continue;
            entries.remove();
        }
    }
}

