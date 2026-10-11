/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import java.io.BufferedOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.osgi.internal.resolver.BaseDescriptionImpl;
import org.eclipse.osgi.internal.resolver.BundleDescriptionImpl;
import org.eclipse.osgi.internal.resolver.BundleSpecificationImpl;
import org.eclipse.osgi.internal.resolver.ExportPackageDescriptionImpl;
import org.eclipse.osgi.internal.resolver.GenericSpecificationImpl;
import org.eclipse.osgi.internal.resolver.HostSpecificationImpl;
import org.eclipse.osgi.internal.resolver.ImportPackageSpecificationImpl;
import org.eclipse.osgi.internal.resolver.StateHelperImpl;
import org.eclipse.osgi.internal.resolver.StateImpl;
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
import org.osgi.framework.Filter;
import org.osgi.framework.Version;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
class StateWriter {
    private final Map<Object, Integer> objectTable = new HashMap<Object, Integer>();
    private final List<Object> forcedWrite = new ArrayList<Object>();

    StateWriter() {
    }

    private int addToObjectTable(Object object) {
        Integer cur = this.objectTable.get(object);
        if (cur != null) {
            return cur;
        }
        this.objectTable.put(object, new Integer(this.objectTable.size()));
        return this.objectTable.size() - 1;
    }

    private int getFromObjectTable(Object object) {
        Integer objectResult;
        if (this.objectTable != null && (objectResult = this.objectTable.get(object)) != null) {
            return objectResult;
        }
        return -1;
    }

    private boolean writePrefix(Object object, DataOutputStream out) throws IOException {
        if (this.writeIndex(object, out)) {
            return true;
        }
        int index = this.addToObjectTable(object);
        out.writeByte(1);
        out.writeInt(index);
        return false;
    }

    private void writeStateDeprecated(StateImpl state, DataOutputStream out) throws IOException {
        out.write(36);
        if (this.writePrefix(state, out)) {
            return;
        }
        out.writeLong(state.getTimeStamp());
        String[] platformPropKeys = state.getPlatformPropertyKeys();
        this.writePlatformProp(platformPropKeys, out);
        Dictionary[] propSet = state.getPlatformProperties();
        out.writeInt(propSet.length);
        int i = 0;
        while (i < propSet.length) {
            Dictionary props = propSet[i];
            out.writeInt(platformPropKeys.length);
            int j = 0;
            while (j < platformPropKeys.length) {
                this.writePlatformProp(props.get(platformPropKeys[j]), out);
                ++j;
            }
            ++i;
        }
        BundleDescription[] bundles = state.getBundles();
        StateHelperImpl.getInstance().sortBundles(bundles);
        out.writeInt(bundles.length);
        if (bundles.length == 0) {
            return;
        }
        int i2 = 0;
        while (i2 < bundles.length) {
            this.writeBundleDescription(bundles[i2], out, false);
            ++i2;
        }
        out.writeBoolean(state.isResolved());
        out.writeInt(out.size());
        i2 = 0;
        while (i2 < bundles.length) {
            this.writeBundleDescriptionLazyData(bundles[i2], out);
            ++i2;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void saveState(StateImpl state, File stateFile, File lazyFile) throws IOException {
        DataOutputStream outLazy = null;
        DataOutputStream outState = null;
        FileOutputStream fosLazy = null;
        FileOutputStream fosState = null;
        Object object = state.monitor;
        synchronized (object) {
            BundleDescription[] bundles;
            block42: {
                block43: {
                    bundles = state.getBundles();
                    StateHelperImpl.getInstance().sortBundles(bundles);
                    int i = 0;
                    while (i < bundles.length) {
                        this.addToObjectTable(bundles[i]);
                        if (bundles[i].getHost() != null) {
                            this.addToObjectTable(bundles[i].getHost());
                        }
                        ++i;
                    }
                    fosLazy = new FileOutputStream(lazyFile);
                    outLazy = new DataOutputStream(new BufferedOutputStream(fosLazy));
                    i = 0;
                    while (i < bundles.length) {
                        this.writeBundleDescriptionLazyData(bundles[i], outLazy);
                        ++i;
                    }
                    fosState = new FileOutputStream(stateFile);
                    outState = new DataOutputStream(new BufferedOutputStream(fosState));
                    outState.write(36);
                    if (!this.writePrefix(state, outState)) break block42;
                    if (outLazy == null) break block43;
                    try {
                        outLazy.flush();
                        fosLazy.getFD().sync();
                    }
                    catch (IOException iOException) {}
                    try {
                        outLazy.close();
                    }
                    catch (IOException iOException) {}
                }
                if (outState != null) {
                    try {
                        outState.flush();
                        fosState.getFD().sync();
                    }
                    catch (IOException iOException) {}
                    try {
                        outState.close();
                    }
                    catch (IOException iOException) {}
                }
                return;
            }
            try {
                outState.writeLong(state.getTimeStamp());
                String[] platformPropKeys = state.getPlatformPropertyKeys();
                this.writePlatformProp(platformPropKeys, outState);
                Dictionary[] propSet = state.getPlatformProperties();
                outState.writeInt(propSet.length);
                int i = 0;
                while (i < propSet.length) {
                    Dictionary props = propSet[i];
                    outState.writeInt(platformPropKeys.length);
                    int j = 0;
                    while (j < platformPropKeys.length) {
                        this.writePlatformProp(props.get(platformPropKeys[j]), outState);
                        ++j;
                    }
                    ++i;
                }
                outState.writeInt(bundles.length);
                i = 0;
                while (i < bundles.length) {
                    this.writeBundleDescription(bundles[i], outState, true);
                    ++i;
                }
                DisabledInfo[] infos = state.getDisabledInfos();
                outState.writeInt(infos.length);
                int i2 = 0;
                while (i2 < infos.length) {
                    this.writeDisabledInfo(infos[i2], outState);
                    ++i2;
                }
                outState.writeBoolean(state.isResolved());
            }
            catch (Throwable throwable) {
                if (outLazy != null) {
                    try {
                        outLazy.flush();
                        fosLazy.getFD().sync();
                    }
                    catch (IOException iOException) {}
                    try {
                        outLazy.close();
                    }
                    catch (IOException iOException) {}
                }
                if (outState != null) {
                    try {
                        outState.flush();
                        fosState.getFD().sync();
                    }
                    catch (IOException iOException) {}
                    try {
                        outState.close();
                    }
                    catch (IOException iOException) {}
                }
                throw throwable;
            }
            if (outLazy != null) {
                try {
                    outLazy.flush();
                    fosLazy.getFD().sync();
                }
                catch (IOException iOException) {}
                try {
                    outLazy.close();
                }
                catch (IOException iOException) {}
            }
            if (outState != null) {
                try {
                    outState.flush();
                    fosState.getFD().sync();
                }
                catch (IOException iOException) {}
                try {
                    outState.close();
                }
                catch (IOException iOException) {}
            }
        }
    }

    private void writePlatformProp(Object obj, DataOutputStream out) throws IOException {
        if (!(obj instanceof String) && !(obj instanceof String[])) {
            out.writeByte(0);
        } else {
            out.writeByte(1);
            if (obj instanceof String) {
                out.writeInt(1);
                this.writeStringOrNull((String)obj, out);
            } else {
                String[] props = (String[])obj;
                out.writeInt(props.length);
                int i = 0;
                while (i < props.length) {
                    this.writeStringOrNull(props[i], out);
                    ++i;
                }
            }
        }
    }

    private void writeBundleDescription(BundleDescription bundle, DataOutputStream out, boolean force) throws IOException {
        if (force && !this.forcedWrite.contains(bundle)) {
            int index = this.addToObjectTable(bundle);
            out.writeByte(1);
            out.writeInt(index);
            this.forcedWrite.add(bundle);
        } else if (this.writePrefix(bundle, out)) {
            return;
        }
        out.writeLong(bundle.getBundleId());
        this.writeBaseDescription(bundle, out);
        out.writeInt(((BundleDescriptionImpl)bundle).getLazyDataOffset());
        out.writeInt(((BundleDescriptionImpl)bundle).getLazyDataSize());
        out.writeBoolean(bundle.isResolved());
        out.writeBoolean(bundle.isSingleton());
        out.writeBoolean(bundle.hasDynamicImports());
        out.writeBoolean(bundle.attachFragments());
        out.writeBoolean(bundle.dynamicFragments());
        this.writeList(out, (String[])((BundleDescriptionImpl)bundle).getDirective("mandatory"));
        this.writeMap(out, bundle.getAttributes());
        this.writeHostSpec((HostSpecificationImpl)bundle.getHost(), out, force);
        List<BundleDescription> dependencies = ((BundleDescriptionImpl)bundle).getBundleDependencies();
        out.writeInt(dependencies.size());
        Iterator<BundleDescription> iter = dependencies.iterator();
        while (iter.hasNext()) {
            this.writeBundleDescription(iter.next(), out, force);
        }
    }

    private void writeBundleDescriptionLazyData(BundleDescription bundle, DataOutputStream out) throws IOException {
        int dataStart = out.size();
        int index = this.getFromObjectTable(bundle);
        ((BundleDescriptionImpl)bundle).setLazyDataOffset(out.size());
        out.writeInt(index);
        this.writeStringOrNull(bundle.getLocation(), out);
        this.writeStringOrNull(bundle.getPlatformFilter(), out);
        ExportPackageDescription[] exports = bundle.getExportPackages();
        out.writeInt(exports.length);
        int i = 0;
        while (i < exports.length) {
            this.writeExportPackageDesc((ExportPackageDescriptionImpl)exports[i], out);
            ++i;
        }
        ImportPackageSpecification[] imports = bundle.getImportPackages();
        out.writeInt(imports.length);
        int i2 = 0;
        while (i2 < imports.length) {
            this.writeImportPackageSpec(imports[i2], out);
            ++i2;
        }
        BundleSpecification[] requiredBundles = bundle.getRequiredBundles();
        out.writeInt(requiredBundles.length);
        int i3 = 0;
        while (i3 < requiredBundles.length) {
            this.writeBundleSpec((BundleSpecificationImpl)requiredBundles[i3], out);
            ++i3;
        }
        ExportPackageDescription[] selectedExports = bundle.getSelectedExports();
        if (selectedExports == null) {
            out.writeInt(0);
        } else {
            out.writeInt(selectedExports.length);
            int i4 = 0;
            while (i4 < selectedExports.length) {
                this.writeExportPackageDesc((ExportPackageDescriptionImpl)selectedExports[i4], out);
                ++i4;
            }
        }
        ExportPackageDescription[] substitutedExports = bundle.getSubstitutedExports();
        if (substitutedExports == null) {
            out.writeInt(0);
        } else {
            out.writeInt(substitutedExports.length);
            int i5 = 0;
            while (i5 < substitutedExports.length) {
                this.writeExportPackageDesc((ExportPackageDescriptionImpl)substitutedExports[i5], out);
                ++i5;
            }
        }
        ExportPackageDescription[] resolvedImports = bundle.getResolvedImports();
        if (resolvedImports == null) {
            out.writeInt(0);
        } else {
            out.writeInt(resolvedImports.length);
            int i6 = 0;
            while (i6 < resolvedImports.length) {
                this.writeExportPackageDesc((ExportPackageDescriptionImpl)resolvedImports[i6], out);
                ++i6;
            }
        }
        BundleDescription[] resolvedRequires = bundle.getResolvedRequires();
        if (resolvedRequires == null) {
            out.writeInt(0);
        } else {
            out.writeInt(resolvedRequires.length);
            int i7 = 0;
            while (i7 < resolvedRequires.length) {
                this.writeBundleDescription(resolvedRequires[i7], out, false);
                ++i7;
            }
        }
        String[] ees = bundle.getExecutionEnvironments();
        out.writeInt(ees.length);
        int i8 = 0;
        while (i8 < ees.length) {
            this.writeStringOrNull(ees[i8], out);
            ++i8;
        }
        Map<String, Long> dynamicStamps = ((BundleDescriptionImpl)bundle).getDynamicStamps();
        if (dynamicStamps == null) {
            out.writeInt(0);
        } else {
            out.writeInt(dynamicStamps.size());
            for (String pkg : dynamicStamps.keySet()) {
                this.writeStringOrNull(pkg, out);
                out.writeLong(dynamicStamps.get(pkg));
            }
        }
        GenericDescription[] genericCapabilities = bundle.getGenericCapabilities();
        if (genericCapabilities == null) {
            out.writeInt(0);
        } else {
            out.writeInt(genericCapabilities.length);
            int i9 = 0;
            while (i9 < genericCapabilities.length) {
                this.writeGenericDescription(genericCapabilities[i9], out);
                ++i9;
            }
        }
        GenericSpecification[] genericRequires = bundle.getGenericRequires();
        if (genericRequires == null) {
            out.writeInt(0);
        } else {
            out.writeInt(genericRequires.length);
            int i10 = 0;
            while (i10 < genericRequires.length) {
                this.writeGenericSpecification(genericRequires[i10], out);
                ++i10;
            }
        }
        GenericDescription[] selectedCapabilities = bundle.getSelectedGenericCapabilities();
        if (selectedCapabilities == null) {
            out.writeInt(0);
        } else {
            out.writeInt(selectedCapabilities.length);
            int i11 = 0;
            while (i11 < selectedCapabilities.length) {
                this.writeGenericDescription(selectedCapabilities[i11], out);
                ++i11;
            }
        }
        GenericDescription[] resolvedCapabilities = bundle.getResolvedGenericRequires();
        if (resolvedCapabilities == null) {
            out.writeInt(0);
        } else {
            out.writeInt(resolvedCapabilities.length);
            int i12 = 0;
            while (i12 < resolvedCapabilities.length) {
                this.writeGenericDescription(resolvedCapabilities[i12], out);
                ++i12;
            }
        }
        this.writeNativeCode(bundle.getNativeCodeSpecification(), out);
        this.writeMap(out, ((BundleDescriptionImpl)bundle).getWiresInternal());
        ((BundleDescriptionImpl)bundle).setLazyDataSize(out.size() - dataStart);
    }

    private void writeDisabledInfo(DisabledInfo disabledInfo, DataOutputStream out) throws IOException {
        this.writeStringOrNull(disabledInfo.getPolicyName(), out);
        this.writeStringOrNull(disabledInfo.getMessage(), out);
        this.writeBundleDescription(disabledInfo.getBundle(), out, false);
    }

    private void writeBundleSpec(BundleSpecificationImpl bundle, DataOutputStream out) throws IOException {
        if (this.writePrefix(bundle, out)) {
            return;
        }
        this.writeVersionConstraint(bundle, out);
        this.writeBundleDescription((BundleDescription)bundle.getSupplier(), out, false);
        out.writeBoolean(bundle.isExported());
        out.writeBoolean(bundle.isOptional());
        this.writeMap(out, bundle.getAttributes());
    }

    private void writeExportPackageDesc(ExportPackageDescriptionImpl exportPackageDesc, DataOutputStream out) throws IOException {
        if (this.writePrefix(exportPackageDesc, out)) {
            return;
        }
        this.writeBaseDescription(exportPackageDesc, out);
        this.writeBundleDescription(exportPackageDesc.getExporter(), out, false);
        this.writeMap(out, exportPackageDesc.getAttributes());
        this.writeMap(out, exportPackageDesc.getDirectives());
        this.writeExportPackageDesc((ExportPackageDescriptionImpl)exportPackageDesc.getFragmentDeclaration(), out);
    }

    private void writeGenericDescription(GenericDescription description, DataOutputStream out) throws IOException {
        if (this.writePrefix(description, out)) {
            return;
        }
        this.writeBaseDescription(description, out);
        this.writeBundleDescription(description.getSupplier(), out, false);
        this.writeStringOrNull(description.getType() == "generic" ? null : description.getType(), out);
        Dictionary<String, Object> attrs = description.getAttributes();
        HashMap<String, Object> mapAttrs = new HashMap<String, Object>(attrs.size());
        Enumeration<String> keys = attrs.keys();
        while (keys.hasMoreElements()) {
            String key = keys.nextElement();
            mapAttrs.put(key, attrs.get(key));
        }
        this.writeMap(out, mapAttrs);
        Map<String, String> directives = description.getDeclaredDirectives();
        this.writeMap(out, directives);
        this.writeGenericDescription((GenericDescription)((BaseDescriptionImpl)((Object)description)).getFragmentDeclaration(), out);
    }

    private void writeGenericSpecification(GenericSpecification specification, DataOutputStream out) throws IOException {
        if (this.writePrefix(specification, out)) {
            return;
        }
        this.writeVersionConstraint(specification, out);
        this.writeStringOrNull(specification.getType() == "generic" ? null : specification.getType(), out);
        GenericDescription[] suppliers = specification.getSuppliers();
        out.writeInt(suppliers == null ? 0 : suppliers.length);
        if (suppliers != null) {
            int i = 0;
            while (i < suppliers.length) {
                this.writeGenericDescription(suppliers[i], out);
                ++i;
            }
        }
        out.writeInt(specification.getResolution());
        this.writeStringOrNull(specification.getMatchingFilter(), out);
    }

    private void writeNativeCode(NativeCodeSpecification nativeCodeSpecification, DataOutputStream out) throws IOException {
        if (nativeCodeSpecification == null) {
            out.writeBoolean(false);
            return;
        }
        out.writeBoolean(true);
        out.writeBoolean(nativeCodeSpecification.isOptional());
        NativeCodeDescription[] nativeDescs = nativeCodeSpecification.getPossibleSuppliers();
        int numDescs = nativeDescs == null ? 0 : nativeDescs.length;
        out.writeInt(numDescs);
        int supplierIndex = -1;
        int i = 0;
        while (i < numDescs) {
            if (nativeDescs[i] == nativeCodeSpecification.getSupplier()) {
                supplierIndex = i;
            }
            this.writeNativeCodeDescription(nativeDescs[i], out);
            ++i;
        }
        out.writeInt(supplierIndex);
    }

    private void writeNativeCodeDescription(NativeCodeDescription nativeCodeDescription, DataOutputStream out) throws IOException {
        this.writeBaseDescription(nativeCodeDescription, out);
        this.writeBundleDescription(nativeCodeDescription.getSupplier(), out, false);
        Filter filter = nativeCodeDescription.getFilter();
        this.writeStringOrNull(filter == null ? null : filter.toString(), out);
        this.writeStringArray(nativeCodeDescription.getLanguages(), out);
        this.writeStringArray(nativeCodeDescription.getNativePaths(), out);
        this.writeStringArray(nativeCodeDescription.getOSNames(), out);
        this.writeVersionRanges(nativeCodeDescription.getOSVersions(), out);
        this.writeStringArray(nativeCodeDescription.getProcessors(), out);
        out.writeBoolean(nativeCodeDescription.hasInvalidNativePaths());
    }

    private void writeVersionRanges(VersionRange[] ranges, DataOutputStream out) throws IOException {
        out.writeInt(ranges == null ? 0 : ranges.length);
        if (ranges == null) {
            return;
        }
        int i = 0;
        while (i < ranges.length) {
            this.writeVersionRange(ranges[i], out);
            ++i;
        }
    }

    private void writeStringArray(String[] strings, DataOutputStream out) throws IOException {
        out.writeInt(strings == null ? 0 : strings.length);
        if (strings == null) {
            return;
        }
        int i = 0;
        while (i < strings.length) {
            this.writeStringOrNull(strings[i], out);
            ++i;
        }
    }

    private void writeMap(DataOutputStream out, Map<String, ?> source) throws IOException {
        if (source == null) {
            out.writeInt(0);
        } else {
            out.writeInt(source.size());
            for (String key : source.keySet()) {
                Object value = source.get(key);
                this.writeStringOrNull(key, out);
                if (value instanceof String) {
                    out.writeByte(0);
                    this.writeStringOrNull((String)value, out);
                    continue;
                }
                if (value instanceof String[]) {
                    out.writeByte(1);
                    this.writeList(out, (String[])value);
                    continue;
                }
                if (value instanceof Boolean) {
                    out.writeByte(2);
                    out.writeBoolean((Boolean)value);
                    continue;
                }
                if (value instanceof Integer) {
                    out.writeByte(3);
                    out.writeInt((Integer)value);
                    continue;
                }
                if (value instanceof Long) {
                    out.writeByte(4);
                    out.writeLong((Long)value);
                    continue;
                }
                if (value instanceof Double) {
                    out.writeByte(5);
                    out.writeDouble((Double)value);
                    continue;
                }
                if (value instanceof Version) {
                    out.writeByte(6);
                    this.writeVersion((Version)value, out);
                    continue;
                }
                if ("java.net.URI".equals(value.getClass().getName())) {
                    out.writeByte(7);
                    this.writeStringOrNull(value.toString(), out);
                    continue;
                }
                if (!(value instanceof List)) continue;
                this.writeList(out, (List)value);
            }
        }
    }

    private void writeList(DataOutputStream out, List<?> list) throws IOException {
        byte type = this.getListType(list);
        if (type == -2) {
            return;
        }
        out.writeByte(8);
        out.writeByte(type);
        out.writeInt(list.size());
        for (Object value : list) {
            switch (type) {
                case 0: {
                    this.writeStringOrNull((String)value, out);
                    break;
                }
                case 3: {
                    out.writeInt((Integer)value);
                    break;
                }
                case 4: {
                    out.writeLong((Long)value);
                    break;
                }
                case 5: {
                    out.writeDouble((Double)value);
                    break;
                }
                case 6: {
                    this.writeVersion((Version)value, out);
                    break;
                }
                case 7: {
                    this.writeStateWire((StateWire)value, out);
                }
            }
        }
    }

    private void writeStateWire(StateWire wire, DataOutputStream out) throws IOException {
        VersionConstraint requirement = wire.getDeclaredRequirement();
        if (requirement instanceof ImportPackageSpecificationImpl) {
            out.writeByte(0);
            this.writeImportPackageSpec((ImportPackageSpecificationImpl)requirement, out);
        } else if (requirement instanceof BundleSpecificationImpl) {
            out.writeByte(1);
            this.writeBundleSpec((BundleSpecificationImpl)requirement, out);
        } else if (requirement instanceof HostSpecificationImpl) {
            out.writeByte(2);
            this.writeHostSpec((HostSpecificationImpl)requirement, out, false);
        } else if (requirement instanceof GenericSpecificationImpl) {
            out.writeByte(3);
            this.writeGenericSpecification((GenericSpecificationImpl)requirement, out);
        } else {
            throw new IllegalArgumentException(new StringBuffer("Unknown requiement type: ").append(requirement.getClass()).toString());
        }
        BaseDescription capability = wire.getDeclaredCapability();
        if (capability instanceof BundleDescription) {
            this.writeBundleDescription((BundleDescription)capability, out, false);
        } else if (capability instanceof ExportPackageDescriptionImpl) {
            this.writeExportPackageDesc((ExportPackageDescriptionImpl)capability, out);
        } else if (capability instanceof GenericDescription) {
            this.writeGenericDescription((GenericDescription)capability, out);
        } else {
            throw new IllegalArgumentException(new StringBuffer("Unknown capability type: ").append(requirement.getClass()).toString());
        }
        this.writeBundleDescription(wire.getRequirementHost(), out, false);
        this.writeBundleDescription(wire.getCapabilityHost(), out, false);
    }

    private byte getListType(List<?> list) {
        if (list.size() == 0) {
            return -1;
        }
        Object type = list.get(0);
        if (type instanceof String) {
            return 0;
        }
        if (type instanceof Integer) {
            return 3;
        }
        if (type instanceof Long) {
            return 4;
        }
        if (type instanceof Double) {
            return 5;
        }
        if (type instanceof Version) {
            return 6;
        }
        if (type instanceof StateWire) {
            return 7;
        }
        return -2;
    }

    private void writeList(DataOutputStream out, String[] list) throws IOException {
        if (list == null) {
            out.writeInt(0);
        } else {
            out.writeInt(list.length);
            int i = 0;
            while (i < list.length) {
                this.writeStringOrNull(list[i], out);
                ++i;
            }
        }
    }

    private void writeBaseDescription(BaseDescription rootDesc, DataOutputStream out) throws IOException {
        this.writeStringOrNull(rootDesc.getName(), out);
        this.writeVersion(rootDesc.getVersion(), out);
    }

    private void writeImportPackageSpec(ImportPackageSpecification importPackageSpec, DataOutputStream out) throws IOException {
        if (this.writePrefix(importPackageSpec, out)) {
            return;
        }
        this.writeVersionConstraint(importPackageSpec, out);
        if (importPackageSpec.getBundle().isResolved()) {
            this.writeExportPackageDesc((ExportPackageDescriptionImpl)importPackageSpec.getSupplier(), out);
        } else {
            out.writeByte(0);
        }
        this.writeStringOrNull(importPackageSpec.getBundleSymbolicName(), out);
        this.writeVersionRange(importPackageSpec.getBundleVersionRange(), out);
        this.writeMap(out, importPackageSpec.getAttributes());
        this.writeMap(out, importPackageSpec.getDirectives());
    }

    private void writeHostSpec(HostSpecificationImpl host, DataOutputStream out, boolean force) throws IOException {
        if (host != null && force && !this.forcedWrite.contains(host)) {
            int index = this.addToObjectTable(host);
            out.writeByte(1);
            out.writeInt(index);
            this.forcedWrite.add(host);
        } else if (this.writePrefix(host, out)) {
            return;
        }
        this.writeVersionConstraint(host, out);
        BundleDescription[] hosts = host.getHosts();
        if (hosts == null) {
            out.writeInt(0);
            return;
        }
        out.writeInt(hosts.length);
        int i = 0;
        while (i < hosts.length) {
            this.writeBundleDescription(hosts[i], out, force);
            ++i;
        }
        this.writeMap(out, host.getAttributes());
    }

    private void writeVersionConstraint(VersionConstraint constraint, DataOutputStream out) throws IOException {
        this.writeStringOrNull(constraint.getName(), out);
        this.writeVersionRange(constraint.getVersionRange(), out);
    }

    private void writeVersion(Version version, DataOutputStream out) throws IOException {
        if (version == null || version.equals(Version.emptyVersion)) {
            out.writeByte(0);
            return;
        }
        out.writeByte(1);
        out.writeInt(version.getMajor());
        out.writeInt(version.getMinor());
        out.writeInt(version.getMicro());
        this.writeQualifier(version.getQualifier(), out);
    }

    private void writeVersionRange(VersionRange versionRange, DataOutputStream out) throws IOException {
        if (versionRange == null || versionRange.equals(VersionRange.emptyRange)) {
            out.writeByte(0);
            return;
        }
        out.writeByte(1);
        this.writeVersion(versionRange.getMinimum(), out);
        out.writeBoolean(versionRange.getIncludeMinimum());
        this.writeVersion(versionRange.getMaximum(), out);
        out.writeBoolean(versionRange.getIncludeMaximum());
    }

    private boolean writeIndex(Object object, DataOutputStream out) throws IOException {
        if (object == null) {
            out.writeByte(0);
            return true;
        }
        int index = this.getFromObjectTable(object);
        if (index == -1) {
            return false;
        }
        out.writeByte(2);
        out.writeInt(index);
        return true;
    }

    public void saveStateDeprecated(StateImpl state, DataOutputStream output) throws IOException {
        try {
            this.writeStateDeprecated(state, output);
        }
        finally {
            output.close();
        }
    }

    private void writeStringOrNull(String string, DataOutputStream out) throws IOException {
        if (string == null) {
            out.writeByte(0);
        } else {
            out.writeByte(1);
            out.writeUTF(string);
        }
    }

    private void writeQualifier(String string, DataOutputStream out) throws IOException {
        if (string != null && string.length() == 0) {
            string = null;
        }
        this.writeStringOrNull(string, out);
    }
}

