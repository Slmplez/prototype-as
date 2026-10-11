/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Dictionary;
import java.util.Hashtable;
import java.util.Map;
import org.eclipse.osgi.internal.module.ResolverImpl;
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
import org.eclipse.osgi.internal.resolver.StateBuilder;
import org.eclipse.osgi.internal.resolver.StateImpl;
import org.eclipse.osgi.internal.resolver.StateReader;
import org.eclipse.osgi.internal.resolver.StateWriter;
import org.eclipse.osgi.internal.resolver.SystemState;
import org.eclipse.osgi.internal.resolver.UserState;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.DisabledInfo;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.GenericDescription;
import org.eclipse.osgi.service.resolver.GenericSpecification;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.NativeCodeDescription;
import org.eclipse.osgi.service.resolver.NativeCodeSpecification;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.StateObjectFactory;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.osgi.storagemanager.StorageManager;
import org.eclipse.osgi.util.ManifestElement;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.Version;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class StateObjectFactoryImpl
implements StateObjectFactory {
    @Override
    public BundleDescription createBundleDescription(Dictionary<String, String> manifest, String location, long id) throws BundleException {
        return this.createBundleDescription(null, manifest, location, id);
    }

    @Override
    public BundleDescription createBundleDescription(State state, Dictionary<String, String> manifest, String location, long id) throws BundleException {
        BundleDescriptionImpl result = (BundleDescriptionImpl)StateBuilder.createBundleDescription((StateImpl)state, manifest, location);
        result.setBundleId(id);
        return result;
    }

    @Override
    public BundleDescription createBundleDescription(long id, String symbolicName, Version version, String location, BundleSpecification[] required, HostSpecification host, ImportPackageSpecification[] imports, ExportPackageDescription[] exports, String[] providedPackages, boolean singleton) {
        return this.createBundleDescription(id, symbolicName, version, location, required, host, imports, exports, providedPackages, singleton, true, true, null, null, null, null);
    }

    @Override
    public BundleDescription createBundleDescription(long id, String symbolicName, Version version, String location, BundleSpecification[] required, HostSpecification host, ImportPackageSpecification[] imports, ExportPackageDescription[] exports, String[] providedPackages, boolean singleton, boolean attachFragments, boolean dynamicFragments, String platformFilter, String executionEnvironment, GenericSpecification[] genericRequires, GenericDescription[] genericCapabilities) {
        return this.createBundleDescription(id, symbolicName, version, location, required, host, imports, exports, singleton, attachFragments, dynamicFragments, platformFilter, ManifestElement.getArrayFromList(executionEnvironment), genericRequires, genericCapabilities);
    }

    @Override
    public BundleDescription createBundleDescription(long id, String symbolicName, Version version, String location, BundleSpecification[] required, HostSpecification host, ImportPackageSpecification[] imports, ExportPackageDescription[] exports, boolean singleton, boolean attachFragments, boolean dynamicFragments, String platformFilter, String[] executionEnvironments, GenericSpecification[] genericRequires, GenericDescription[] genericCapabilities) {
        return this.createBundleDescription(id, symbolicName, version, location, required, host, imports, exports, singleton, attachFragments, dynamicFragments, platformFilter, executionEnvironments, genericRequires, genericCapabilities, null);
    }

    @Override
    public BundleDescription createBundleDescription(long id, String symbolicName, Version version, String location, BundleSpecification[] required, HostSpecification host, ImportPackageSpecification[] imports, ExportPackageDescription[] exports, boolean singleton, boolean attachFragments, boolean dynamicFragments, String platformFilter, String[] executionEnvironments, GenericSpecification[] genericRequires, GenericDescription[] genericCapabilities, NativeCodeSpecification nativeCode) {
        BundleDescriptionImpl bundle = new BundleDescriptionImpl();
        bundle.setBundleId(id);
        bundle.setSymbolicName(symbolicName);
        bundle.setVersion(version);
        bundle.setLocation(location);
        bundle.setRequiredBundles(required);
        bundle.setHost(host);
        bundle.setImportPackages(imports);
        bundle.setExportPackages(exports);
        bundle.setStateBit(2, singleton);
        bundle.setStateBit(64, attachFragments);
        bundle.setStateBit(128, dynamicFragments);
        bundle.setPlatformFilter(platformFilter);
        bundle.setExecutionEnvironments(executionEnvironments);
        bundle.setGenericRequires(genericRequires);
        bundle.setGenericCapabilities(genericCapabilities);
        bundle.setNativeCodeSpecification(nativeCode);
        return bundle;
    }

    @Override
    public BundleDescription createBundleDescription(BundleDescription original) {
        BundleDescriptionImpl bundle = new BundleDescriptionImpl();
        bundle.setBundleId(original.getBundleId());
        bundle.setSymbolicName(original.getSymbolicName());
        bundle.setVersion(original.getVersion());
        bundle.setLocation(original.getLocation());
        BundleSpecification[] originalRequired = original.getRequiredBundles();
        BundleSpecification[] newRequired = new BundleSpecification[originalRequired.length];
        int i = 0;
        while (i < newRequired.length) {
            newRequired[i] = this.createBundleSpecification(originalRequired[i]);
            ++i;
        }
        bundle.setRequiredBundles(newRequired);
        ExportPackageDescription[] originalExports = original.getExportPackages();
        ExportPackageDescription[] newExports = new ExportPackageDescription[originalExports.length];
        int i2 = 0;
        while (i2 < newExports.length) {
            newExports[i2] = this.createExportPackageDescription(originalExports[i2]);
            ++i2;
        }
        bundle.setExportPackages(newExports);
        ImportPackageSpecification[] originalImports = original.getImportPackages();
        ImportPackageSpecification[] newImports = new ImportPackageSpecification[originalImports.length];
        int i3 = 0;
        while (i3 < newImports.length) {
            newImports[i3] = this.createImportPackageSpecification(originalImports[i3]);
            ++i3;
        }
        bundle.setImportPackages(newImports);
        if (original.getHost() != null) {
            bundle.setHost(this.createHostSpecification(original.getHost()));
        }
        bundle.setStateBit(2, original.isSingleton());
        bundle.setStateBit(64, original.attachFragments());
        bundle.setStateBit(128, original.dynamicFragments());
        bundle.setStateBit(32, original.hasDynamicImports());
        bundle.setPlatformFilter(original.getPlatformFilter());
        bundle.setExecutionEnvironments(original.getExecutionEnvironments());
        bundle.setGenericCapabilities(this.createGenericCapabilities(original.getGenericCapabilities()));
        bundle.setGenericRequires(this.createGenericRequires(original.getGenericRequires()));
        bundle.setNativeCodeSpecification(this.createNativeCodeSpecification(original.getNativeCodeSpecification()));
        bundle.setAttributes(original.getAttributes());
        if (original instanceof BundleDescriptionImpl) {
            bundle.setDirective("mandatory", ((BundleDescriptionImpl)original).getDirective("mandatory"));
        }
        return bundle;
    }

    private NativeCodeSpecification createNativeCodeSpecification(NativeCodeSpecification original) {
        if (original == null) {
            return null;
        }
        NativeCodeSpecificationImpl result = new NativeCodeSpecificationImpl();
        result.setName(original.getName());
        result.setOptional(original.isOptional());
        NativeCodeDescription[] originalDescriptions = original.getPossibleSuppliers();
        NativeCodeDescription[] newDescriptions = new NativeCodeDescriptionImpl[originalDescriptions.length];
        int i = 0;
        while (i < originalDescriptions.length) {
            newDescriptions[i] = new NativeCodeDescriptionImpl();
            ((BaseDescriptionImpl)((Object)newDescriptions[i])).setName(originalDescriptions[i].getName());
            ((NativeCodeDescriptionImpl)newDescriptions[i]).setNativePaths(originalDescriptions[i].getNativePaths());
            ((NativeCodeDescriptionImpl)newDescriptions[i]).setProcessors(originalDescriptions[i].getProcessors());
            ((NativeCodeDescriptionImpl)newDescriptions[i]).setOSNames(originalDescriptions[i].getOSNames());
            ((NativeCodeDescriptionImpl)newDescriptions[i]).setOSVersions(originalDescriptions[i].getOSVersions());
            ((NativeCodeDescriptionImpl)newDescriptions[i]).setLanguages(originalDescriptions[i].getLanguages());
            try {
                ((NativeCodeDescriptionImpl)newDescriptions[i]).setFilter(originalDescriptions[i].getFilter() == null ? null : originalDescriptions[i].getFilter().toString());
            }
            catch (InvalidSyntaxException invalidSyntaxException) {}
            ++i;
        }
        result.setPossibleSuppliers(newDescriptions);
        return result;
    }

    private GenericDescription[] createGenericCapabilities(GenericDescription[] genericCapabilities) {
        if (genericCapabilities == null || genericCapabilities.length == 0) {
            return null;
        }
        GenericDescription[] result = new GenericDescription[genericCapabilities.length];
        int i = 0;
        while (i < genericCapabilities.length) {
            GenericDescriptionImpl cap = new GenericDescriptionImpl();
            cap.setType(genericCapabilities[i].getType());
            cap.setAttributes(genericCapabilities[i].getAttributes());
            cap.setDirectives(genericCapabilities[i].getDeclaredDirectives());
            result[i] = cap;
            ++i;
        }
        return result;
    }

    private GenericSpecification[] createGenericRequires(GenericSpecification[] genericRequires) {
        if (genericRequires == null || genericRequires.length == 0) {
            return null;
        }
        GenericSpecification[] result = new GenericSpecification[genericRequires.length];
        int i = 0;
        while (i < genericRequires.length) {
            GenericSpecificationImpl req = new GenericSpecificationImpl();
            req.setName(genericRequires[i].getName());
            req.setType(genericRequires[i].getType());
            req.setResolution(req.getResolution());
            try {
                req.setMatchingFilter(genericRequires[i].getMatchingFilter(), true);
            }
            catch (InvalidSyntaxException invalidSyntaxException) {}
            result[i] = req;
            ++i;
        }
        return result;
    }

    @Override
    public BundleSpecification createBundleSpecification(String requiredSymbolicName, VersionRange requiredVersionRange, boolean export, boolean optional) {
        BundleSpecificationImpl bundleSpec = new BundleSpecificationImpl();
        bundleSpec.setName(requiredSymbolicName);
        bundleSpec.setVersionRange(requiredVersionRange);
        bundleSpec.setExported(export);
        bundleSpec.setOptional(optional);
        return bundleSpec;
    }

    @Override
    public BundleSpecification createBundleSpecification(BundleSpecification original) {
        BundleSpecificationImpl bundleSpec = new BundleSpecificationImpl();
        bundleSpec.setName(original.getName());
        bundleSpec.setVersionRange(original.getVersionRange());
        bundleSpec.setExported(original.isExported());
        bundleSpec.setOptional(original.isOptional());
        if (original instanceof BundleSpecificationImpl) {
            bundleSpec.setAttributes(((BundleSpecificationImpl)original).getAttributes());
        }
        return bundleSpec;
    }

    @Override
    public HostSpecification createHostSpecification(String hostSymbolicName, VersionRange versionRange) {
        HostSpecificationImpl hostSpec = new HostSpecificationImpl();
        hostSpec.setName(hostSymbolicName);
        hostSpec.setVersionRange(versionRange);
        return hostSpec;
    }

    @Override
    public HostSpecification createHostSpecification(HostSpecification original) {
        HostSpecificationImpl hostSpec = new HostSpecificationImpl();
        hostSpec.setName(original.getName());
        hostSpec.setVersionRange(original.getVersionRange());
        if (original instanceof HostSpecificationImpl) {
            hostSpec.setAttributes(((HostSpecificationImpl)original).getAttributes());
        }
        return hostSpec;
    }

    @Override
    public ImportPackageSpecification createImportPackageSpecification(String packageName, VersionRange versionRange, String bundleSymbolicName, VersionRange bundleVersionRange, Map<String, ?> directives, Map<String, ?> attributes, BundleDescription importer) {
        ImportPackageSpecificationImpl packageSpec = new ImportPackageSpecificationImpl();
        packageSpec.setName(packageName);
        packageSpec.setVersionRange(versionRange);
        packageSpec.setBundleSymbolicName(bundleSymbolicName);
        packageSpec.setBundleVersionRange(bundleVersionRange);
        packageSpec.setDirectives(directives);
        packageSpec.setAttributes(attributes);
        packageSpec.setBundle(importer);
        return packageSpec;
    }

    @Override
    public ImportPackageSpecification createImportPackageSpecification(ImportPackageSpecification original) {
        ImportPackageSpecificationImpl packageSpec = new ImportPackageSpecificationImpl();
        packageSpec.setName(original.getName());
        packageSpec.setVersionRange(original.getVersionRange());
        packageSpec.setBundleSymbolicName(original.getBundleSymbolicName());
        packageSpec.setBundleVersionRange(original.getBundleVersionRange());
        packageSpec.setDirectives(original.getDirectives());
        packageSpec.setAttributes(original.getAttributes());
        return packageSpec;
    }

    @Override
    public ExportPackageDescription createExportPackageDescription(ExportPackageDescription original) {
        return this.createExportPackageDescription(original.getName(), original.getVersion(), original.getDirectives(), original.getAttributes(), true, null);
    }

    @Override
    public ExportPackageDescription createExportPackageDescription(String packageName, Version version, Map<String, ?> directives, Map<String, ?> attributes, boolean root, BundleDescription exporter) {
        ExportPackageDescriptionImpl exportPackage = new ExportPackageDescriptionImpl();
        exportPackage.setName(packageName);
        exportPackage.setVersion(version);
        exportPackage.setDirectives(directives);
        exportPackage.setAttributes(attributes);
        exportPackage.setExporter(exporter);
        return exportPackage;
    }

    @Override
    public GenericDescription createGenericDescription(String name, String type, Version version, Map<String, ?> attributes) {
        return this.createGenericDescription(name, type, version, attributes, null, null);
    }

    @Override
    public GenericDescription createGenericDescription(String type, Map<String, ?> attributes, Map<String, String> directives, BundleDescription supplier) {
        return this.createGenericDescription(null, type, null, attributes, directives, supplier);
    }

    private GenericDescription createGenericDescription(String name, String type, Version version, Map<String, ?> attributes, Map<String, String> directives, BundleDescription supplier) {
        Object nameObj;
        Object versionObj;
        Hashtable<String, Object> attrs;
        GenericDescriptionImpl result = new GenericDescriptionImpl();
        result.setType(type);
        Hashtable<String, Object> hashtable = attrs = attributes == null ? new Hashtable<String, Object>() : new Hashtable(attributes);
        if (version != null && !((versionObj = ((Dictionary)attrs).get("version")) instanceof Version) && version != null) {
            ((Dictionary)attrs).put("version", version);
        }
        if (name != null && !((nameObj = ((Dictionary)attrs).get(result.getType())) instanceof String)) {
            ((Dictionary)attrs).put(result.getType(), name);
        }
        result.setAttributes(attrs);
        result.setDirectives(directives);
        result.setSupplier(supplier);
        return result;
    }

    @Override
    public GenericSpecification createGenericSpecification(String name, String type, String matchingFilter, boolean optional, boolean multiple) throws InvalidSyntaxException {
        GenericSpecificationImpl result = new GenericSpecificationImpl();
        result.setName(name);
        result.setType(type);
        result.setMatchingFilter(matchingFilter, true);
        int resolution = 0;
        if (optional) {
            resolution |= 1;
        }
        if (multiple) {
            resolution |= 2;
        }
        result.setResolution(resolution);
        return result;
    }

    @Override
    public NativeCodeDescription createNativeCodeDescription(String[] nativePaths, String[] processors, String[] osNames, VersionRange[] osVersions, String[] languages, String filter) throws InvalidSyntaxException {
        NativeCodeDescriptionImpl result = new NativeCodeDescriptionImpl();
        result.setName("Bundle-NativeCode");
        result.setNativePaths(nativePaths);
        result.setProcessors(processors);
        result.setOSNames(osNames);
        result.setOSVersions(osVersions);
        result.setLanguages(languages);
        result.setFilter(filter);
        return result;
    }

    @Override
    public NativeCodeSpecification createNativeCodeSpecification(NativeCodeDescription[] nativeCodeDescriptions, boolean optional) {
        NativeCodeSpecificationImpl result = new NativeCodeSpecificationImpl();
        result.setName("Bundle-NativeCode");
        result.setOptional(optional);
        result.setPossibleSuppliers(nativeCodeDescriptions);
        return result;
    }

    public SystemState createSystemState(BundleContext context) {
        SystemState state = new SystemState(context);
        state.setFactory(this);
        return state;
    }

    @Override
    public State createState() {
        return this.internalCreateState();
    }

    @Override
    public State createState(boolean createResolver) {
        StateImpl result = this.internalCreateState();
        if (createResolver) {
            result.setResolver(new ResolverImpl(false));
        }
        return result;
    }

    @Override
    public State createState(State original) {
        StateImpl newState = this.internalCreateState();
        newState.setTimeStamp(original.getTimeStamp());
        BundleDescription[] bundles = original.getBundles();
        int i = 0;
        while (i < bundles.length) {
            BundleDescription newBundle = this.createBundleDescription(bundles[i]);
            newState.basicAddBundle(newBundle);
            DisabledInfo[] infos = original.getDisabledInfos(bundles[i]);
            int j = 0;
            while (j < infos.length) {
                newState.addDisabledInfo(new DisabledInfo(infos[j].getPolicyName(), infos[j].getMessage(), newBundle));
                ++j;
            }
            ++i;
        }
        newState.setResolved(false);
        newState.setPlatformProperties(original.getPlatformProperties());
        return newState;
    }

    private StateImpl internalCreateState() {
        UserState state = new UserState();
        state.setFactory(this);
        return state;
    }

    public SystemState readSystemState(BundleContext context, File stateFile, File lazyFile, boolean lazyLoad, long expectedTimeStamp) throws IOException {
        StateReader reader = new StateReader(stateFile, lazyFile, lazyLoad);
        SystemState restoredState = new SystemState(context);
        restoredState.setReader(reader);
        restoredState.setFactory(this);
        if (!reader.loadState(restoredState, expectedTimeStamp)) {
            return null;
        }
        return restoredState;
    }

    @Override
    public State readState(InputStream stream) throws IOException {
        return this.internalReadStateDeprecated(this.internalCreateState(), new DataInputStream(stream), -1L);
    }

    @Override
    public State readState(DataInputStream stream) throws IOException {
        return this.internalReadStateDeprecated(this.internalCreateState(), stream, -1L);
    }

    @Override
    public State readState(File stateDirectory) throws IOException {
        return this.internalReadState(this.internalCreateState(), stateDirectory, -1L);
    }

    private State internalReadStateDeprecated(StateImpl toRestore, DataInputStream stream, long expectedTimestamp) throws IOException {
        StateReader reader = new StateReader();
        if (!reader.loadStateDeprecated(toRestore, stream, expectedTimestamp)) {
            return null;
        }
        return toRestore;
    }

    private State internalReadState(StateImpl toRestore, File stateDirectory, long expectedTimestamp) throws IOException {
        StateReader reader;
        File stateFile = new File(stateDirectory, ".state");
        File lazyFile = new File(stateDirectory, ".lazy");
        if (!stateFile.exists() || !lazyFile.exists()) {
            StorageManager storageManager = new StorageManager(stateDirectory, "none", true);
            try {
                storageManager.open(true);
                File managedState = storageManager.lookup(".state", false);
                File managedLazy = storageManager.lookup(".lazy", false);
                if (managedState != null && managedLazy != null) {
                    stateFile = managedState;
                    lazyFile = managedLazy;
                }
            }
            finally {
                storageManager.close();
            }
        }
        if (!(reader = new StateReader(stateFile, lazyFile, false)).loadState(toRestore, expectedTimestamp)) {
            return null;
        }
        return toRestore;
    }

    @Override
    public void writeState(State state, DataOutputStream stream) throws IOException {
        this.internalWriteStateDeprecated(state, stream);
    }

    @Override
    public void writeState(State state, File stateDirectory) throws IOException {
        if (stateDirectory == null) {
            throw new IOException();
        }
        StateWriter writer = new StateWriter();
        File stateFile = new File(stateDirectory, ".state");
        File lazyFile = new File(stateDirectory, ".lazy");
        writer.saveState((StateImpl)state, stateFile, lazyFile);
    }

    @Override
    public void writeState(State state, OutputStream stream) throws IOException {
        this.internalWriteStateDeprecated(state, new DataOutputStream(stream));
    }

    public void writeState(State state, File stateFile, File lazyFile) throws IOException {
        StateWriter writer = new StateWriter();
        writer.saveState((StateImpl)state, stateFile, lazyFile);
    }

    public void internalWriteStateDeprecated(State state, DataOutputStream stream) throws IOException {
        if (state.getFactory() != this) {
            throw new IllegalArgumentException();
        }
        StateWriter writer = new StateWriter();
        writer.saveStateDeprecated((StateImpl)state, stream);
    }
}

