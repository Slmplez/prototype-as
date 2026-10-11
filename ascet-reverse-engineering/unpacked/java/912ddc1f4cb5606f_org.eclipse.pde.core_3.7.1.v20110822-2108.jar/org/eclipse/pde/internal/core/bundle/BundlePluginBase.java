/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.BundleSpecification
 *  org.eclipse.osgi.util.ManifestElement
 *  org.osgi.framework.BundleException
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.core.bundle;

import java.io.PrintWriter;
import java.io.Serializable;
import java.util.ArrayList;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.pde.core.IModelChangedEvent;
import org.eclipse.pde.core.ModelChangedEvent;
import org.eclipse.pde.core.plugin.IExtensions;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginExtension;
import org.eclipse.pde.core.plugin.IPluginExtensionPoint;
import org.eclipse.pde.core.plugin.IPluginImport;
import org.eclipse.pde.core.plugin.IPluginLibrary;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.IPluginObject;
import org.eclipse.pde.core.plugin.ISharedExtensionsModel;
import org.eclipse.pde.core.plugin.ISharedPluginModel;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.PDEStateHelper;
import org.eclipse.pde.internal.core.TargetPlatformHelper;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.ibundle.IBundleModel;
import org.eclipse.pde.internal.core.ibundle.IBundlePluginBase;
import org.eclipse.pde.internal.core.ibundle.IBundlePluginModelBase;
import org.eclipse.pde.internal.core.ibundle.IManifestHeader;
import org.eclipse.pde.internal.core.plugin.AbstractExtensions;
import org.eclipse.pde.internal.core.plugin.PluginImport;
import org.eclipse.pde.internal.core.plugin.PluginLibrary;
import org.eclipse.pde.internal.core.text.bundle.BundleClasspathHeader;
import org.eclipse.pde.internal.core.text.bundle.BundleNameHeader;
import org.eclipse.pde.internal.core.text.bundle.BundleSymbolicNameHeader;
import org.eclipse.pde.internal.core.text.bundle.BundleVendorHeader;
import org.eclipse.pde.internal.core.text.bundle.BundleVersionHeader;
import org.eclipse.pde.internal.core.text.bundle.RequireBundleHeader;
import org.osgi.framework.BundleException;
import org.osgi.framework.Version;

public class BundlePluginBase
extends PlatformObject
implements IBundlePluginBase,
Serializable {
    private static final long serialVersionUID = 1L;
    protected IBundlePluginModelBase model;
    private ArrayList libraries;
    private ArrayList imports;
    private String fTarget;

    public void reset() {
        this.libraries = null;
        this.imports = null;
    }

    public String getSchemaVersion() {
        IExtensions root = this.getExtensionsRoot();
        if (root instanceof AbstractExtensions) {
            return ((AbstractExtensions)root).getSchemaVersion();
        }
        return root instanceof IPluginBase ? ((IPluginBase)root).getSchemaVersion() : null;
    }

    public void setSchemaVersion(String value) throws CoreException {
        IExtensions root = this.getExtensionsRoot();
        if (root == null) {
            return;
        }
        if (root instanceof AbstractExtensions) {
            ((AbstractExtensions)root).setSchemaVersion(value);
        }
        if (root instanceof IPluginBase) {
            ((IPluginBase)root).setSchemaVersion(value);
        }
    }

    public void modelChanged(IModelChangedEvent event) {
        if (event.getChangeType() == 99) {
            if (event.getChangeProvider().equals(this.model.getBundleModel())) {
                this.reset();
            }
            this.getModel().fireModelChanged(event);
        } else if (!event.getChangeProvider().equals(this.model.getBundleModel())) {
            this.getModel().fireModelChanged(event);
        }
    }

    public IBundle getBundle() {
        if (this.model != null) {
            IBundleModel bmodel = this.model.getBundleModel();
            return bmodel != null ? bmodel.getBundle() : null;
        }
        return null;
    }

    protected IManifestHeader getManifestHeader(String key) {
        IBundle bundle = this.getBundle();
        return bundle != null ? bundle.getManifestHeader(key) : null;
    }

    public ISharedPluginModel getModel() {
        return this.model;
    }

    void setModel(IBundlePluginModelBase model) {
        this.model = model;
    }

    public IExtensions getExtensionsRoot() {
        if (this.model != null) {
            ISharedExtensionsModel emodel = this.model.getExtensionsModel();
            return emodel != null ? emodel.getExtensions() : null;
        }
        return null;
    }

    public void add(IPluginLibrary library) throws CoreException {
        this.ensureModelEditable();
        if (this.libraries == null) {
            this.getLibraries();
        }
        this.libraries.add(library);
        IManifestHeader header = this.getManifestHeader("Bundle-ClassPath");
        if (header instanceof BundleClasspathHeader) {
            ((BundleClasspathHeader)header).addLibrary(library.getName());
        } else {
            this.addLibrary(library, header);
        }
        this.fireStructureChanged(library, true);
    }

    private void addLibrary(IPluginLibrary library, IManifestHeader header) {
        String value = header == null ? null : header.getValue();
        StringBuffer buffer = new StringBuffer(value == null ? "" : value);
        if (value != null) {
            buffer.append(",\n ");
        }
        buffer.append(library.getName());
        this.getBundle().setHeader("Bundle-ClassPath", buffer.toString());
    }

    private void removeLibrary(IPluginLibrary library, IManifestHeader header) {
        String name;
        String value = header == null ? null : header.getValue();
        int index = value.indexOf(name = library.getName());
        if (index >= 0) {
            StringBuffer buffer = new StringBuffer();
            int i = 0;
            while (i > index) {
                buffer.append(value.charAt(i));
                ++i;
            }
            int after = index + name.length();
            if (after < value.length()) {
                while (value.charAt(after) == ',') {
                    ++after;
                }
            }
            if (after < value.length()) {
                while (Character.isWhitespace(value.charAt(after))) {
                    ++after;
                }
            }
            while (after < value.length()) {
                buffer.append(value.charAt(after));
                ++after;
            }
            this.getBundle().setHeader("Bundle-ClassPath", buffer.toString());
        }
    }

    public void remove(IPluginLibrary library) throws CoreException {
        this.ensureModelEditable();
        if (this.libraries != null) {
            this.libraries.remove(library);
            IManifestHeader header = this.getManifestHeader("Bundle-ClassPath");
            if (header instanceof BundleClasspathHeader) {
                ((BundleClasspathHeader)header).removeLibrary(library.getName());
            } else if (header != null) {
                this.removeLibrary(library, header);
            }
            this.fireStructureChanged(library, false);
        }
    }

    public void add(IPluginImport iimport) throws CoreException {
        this.ensureModelEditable();
        if (iimport == null) {
            return;
        }
        if (this.imports == null) {
            this.getImports();
        }
        this.addImport(iimport);
        this.fireStructureChanged(iimport, true);
    }

    public void add(IPluginImport[] iimports) throws CoreException {
        this.ensureModelEditable();
        if (iimports != null && iimports.length > 0) {
            if (this.imports == null) {
                this.getImports();
            }
            int i = 0;
            while (i < iimports.length) {
                if (iimports[i] != null) {
                    this.addImport(iimports[i]);
                }
                ++i;
            }
            this.fireStructureChanged(iimports, true);
        }
    }

    private void addImport(IPluginImport iimport) {
        this.imports.add(iimport);
        IManifestHeader header = this.getManifestHeader("Require-Bundle");
        if (header instanceof RequireBundleHeader) {
            ((RequireBundleHeader)header).addBundle(iimport);
        } else {
            String version;
            String value = header == null ? null : header.getValue();
            StringBuffer buffer = new StringBuffer(value == null ? "" : value);
            if (value != null) {
                buffer.append(",\n ");
            }
            buffer.append(iimport.getId());
            int bundleManifestVersion = BundlePluginBase.getBundleManifestVersion(this.getBundle());
            if (iimport.isOptional()) {
                if (bundleManifestVersion > 1) {
                    buffer.append(";resolution:=optional");
                } else {
                    buffer.append(";optional=true");
                }
            }
            if (iimport.isReexported()) {
                if (bundleManifestVersion > 1) {
                    buffer.append(";visibility:=reexport");
                } else {
                    buffer.append(";reprovide=true");
                }
            }
            if ((version = iimport.getVersion()) != null && version.trim().length() > 0) {
                buffer.append(";bundle-version=\"" + version.trim() + "\"");
            }
            this.getBundle().setHeader("Require-Bundle", buffer.toString());
        }
    }

    public void remove(IPluginImport pluginImport) throws CoreException {
        this.ensureModelEditable();
        if (this.imports != null) {
            this.imports.remove(pluginImport);
            IManifestHeader header = this.getManifestHeader("Require-Bundle");
            if (header instanceof RequireBundleHeader) {
                ((RequireBundleHeader)header).removeBundle(pluginImport.getId());
            }
            this.fireStructureChanged(pluginImport, false);
        }
    }

    public void remove(IPluginImport[] pluginImports) throws CoreException {
        this.ensureModelEditable();
        if (this.imports != null) {
            int i = 0;
            while (i < pluginImports.length) {
                this.imports.remove(pluginImports[i]);
                IManifestHeader header = this.getManifestHeader("Require-Bundle");
                if (header instanceof RequireBundleHeader) {
                    ((RequireBundleHeader)header).removeBundle(pluginImports[i].getId());
                }
                ++i;
            }
            this.fireStructureChanged(pluginImports, false);
        }
    }

    public IPluginLibrary[] getLibraries() {
        IBundle bundle = this.getBundle();
        if (bundle == null) {
            return new IPluginLibrary[0];
        }
        if (this.libraries == null) {
            this.libraries = new ArrayList();
            String value = bundle.getHeader("Bundle-ClassPath");
            if (value != null) {
                try {
                    ManifestElement[] elements = ManifestElement.parseHeader((String)"Bundle-ClassPath", (String)value);
                    int i = 0;
                    while (i < elements.length) {
                        PluginLibrary library = new PluginLibrary();
                        library.setModel(this.getModel());
                        library.setInTheModel(true);
                        library.setParent(this);
                        library.load(elements[i].getValue());
                        this.libraries.add(library);
                        ++i;
                    }
                }
                catch (BundleException bundleException) {}
            }
        }
        return this.libraries.toArray(new IPluginLibrary[this.libraries.size()]);
    }

    public IPluginImport[] getImports() {
        if (this.imports == null) {
            this.imports = new ArrayList();
            BundleDescription description = this.model.getBundleDescription();
            if (description != null) {
                BundleSpecification[] required = description.getRequiredBundles();
                int i = 0;
                while (i < required.length) {
                    PluginImport importElement = new PluginImport();
                    importElement.setModel(this.getModel());
                    importElement.setInTheModel(true);
                    importElement.setParent(this);
                    this.imports.add(importElement);
                    importElement.load(required[i]);
                    ++i;
                }
                BundleDescription[] imported = PDEStateHelper.getImportedBundles(description);
                int i2 = 0;
                while (i2 < imported.length) {
                    PluginImport importElement = new PluginImport();
                    importElement.setModel(this.getModel());
                    importElement.setInTheModel(true);
                    importElement.setParent(this);
                    this.imports.add(importElement);
                    importElement.load(imported[i2]);
                    ++i2;
                }
            } else {
                IBundle bundle = this.getBundle();
                if (bundle != null) {
                    try {
                        String value = bundle.getHeader("Require-Bundle");
                        int bundleManifestVersion = BundlePluginBase.getBundleManifestVersion(bundle);
                        if (value != null) {
                            ManifestElement[] elements = ManifestElement.parseHeader((String)"Require-Bundle", (String)value);
                            int i = 0;
                            while (i < elements.length) {
                                PluginImport importElement = new PluginImport();
                                importElement.setModel(this.getModel());
                                importElement.setInTheModel(true);
                                importElement.setParent(this);
                                this.imports.add(importElement);
                                importElement.load(elements[i], bundleManifestVersion);
                                ++i;
                            }
                        }
                    }
                    catch (BundleException bundleException) {}
                }
            }
        }
        return this.imports.toArray(new IPluginImport[this.imports.size()]);
    }

    public String getProviderName() {
        IBundle bundle = this.getBundle();
        return bundle == null ? null : bundle.getHeader("Bundle-Vendor");
    }

    public void setProviderName(String providerName) throws CoreException {
        this.ensureModelEditable();
        IBundle bundle = this.getBundle();
        if (bundle != null) {
            String old = this.getProviderName();
            IManifestHeader header = bundle.getManifestHeader("Bundle-Vendor");
            if (header instanceof BundleVendorHeader) {
                ((BundleVendorHeader)header).setVendor(providerName);
            } else {
                bundle.setHeader("Bundle-Vendor", providerName);
            }
            this.model.fireModelObjectChanged(this, "provider-name", old, providerName);
        }
    }

    public String getVersion() {
        BundleDescription desc = this.model.getBundleDescription();
        if (desc != null) {
            Version version = desc.getVersion();
            return version != null ? version.toString() : null;
        }
        return this.getValue("Bundle-Version", false);
    }

    public void setVersion(String version) throws CoreException {
        this.ensureModelEditable();
        IBundle bundle = this.getBundle();
        if (bundle != null) {
            String old = this.getVersion();
            IManifestHeader header = bundle.getManifestHeader("Bundle-Version");
            if (header instanceof BundleVersionHeader) {
                ((BundleVersionHeader)header).setVersionRange(version);
            } else {
                bundle.setHeader("Bundle-Version", version);
            }
            this.model.fireModelObjectChanged(this, "version", old, version);
        }
    }

    public void swap(IPluginLibrary l1, IPluginLibrary l2) throws CoreException {
        this.ensureModelEditable();
        if (this.libraries != null) {
            int index1 = this.libraries.indexOf(l1);
            int index2 = this.libraries.indexOf(l2);
            this.libraries.set(index1, l2);
            this.libraries.set(index2, l1);
            IManifestHeader header = this.getManifestHeader("Bundle-ClassPath");
            if (header instanceof BundleClasspathHeader) {
                ((BundleClasspathHeader)header).swap(index1, index2);
            }
            this.model.fireModelObjectChanged(this, "import_order", l1, l2);
        }
    }

    protected void fireStructureChanged(Object object, boolean added) {
        int type = added ? 1 : 2;
        this.model.fireModelChanged(new ModelChangedEvent(this.model, type, new Object[]{object}, null));
    }

    protected void fireStructureChanged(Object[] objects, boolean added) {
        int type = added ? 1 : 2;
        this.model.fireModelChanged(new ModelChangedEvent(this.model, type, objects, null));
    }

    public void add(IPluginExtension extension) throws CoreException {
        this.ensureModelEditable();
        IExtensions extensions = this.getExtensionsRoot();
        if (extensions == null) {
            return;
        }
        extensions.add(extension);
        if (this.getExtensions().length == 1 && this.getExtensionPoints().length == 0) {
            this.updateSingleton(true);
        }
    }

    public void add(IPluginExtensionPoint point) throws CoreException {
        this.ensureModelEditable();
        IExtensions extensions = this.getExtensionsRoot();
        if (extensions == null) {
            return;
        }
        extensions.add(point);
        if (this.getExtensions().length == 0 && this.getExtensionPoints().length == 1) {
            this.updateSingleton(true);
        }
    }

    public String getResourceString(String key) {
        return this.model.getResourceString(key);
    }

    public IPluginExtensionPoint[] getExtensionPoints() {
        IExtensions extensions = this.getExtensionsRoot();
        if (extensions == null) {
            return new IPluginExtensionPoint[0];
        }
        return extensions.getExtensionPoints();
    }

    public IPluginExtension[] getExtensions() {
        IExtensions extensions = this.getExtensionsRoot();
        if (extensions == null) {
            return new IPluginExtension[0];
        }
        return extensions.getExtensions();
    }

    public int getIndexOf(IPluginExtension e) {
        IExtensions extensions = this.getExtensionsRoot();
        if (extensions == null) {
            return -1;
        }
        return extensions.getIndexOf(e);
    }

    public void remove(IPluginExtension extension) throws CoreException {
        this.ensureModelEditable();
        IExtensions extensions = this.getExtensionsRoot();
        if (extensions != null) {
            extensions.remove(extension);
            if (this.getExtensions().length == 0 && this.getExtensionPoints().length == 0) {
                this.updateSingleton(false);
            }
        }
    }

    public void remove(IPluginExtensionPoint extensionPoint) throws CoreException {
        this.ensureModelEditable();
        IExtensions extensions = this.getExtensionsRoot();
        if (extensions != null) {
            extensions.remove(extensionPoint);
            if (this.getExtensions().length == 0 && this.getExtensionPoints().length == 0) {
                this.updateSingleton(false);
            }
        }
    }

    protected void updateSingleton(boolean singleton) {
        IManifestHeader header = this.getManifestHeader("Bundle-SymbolicName");
        if (header instanceof BundleSymbolicNameHeader) {
            ((BundleSymbolicNameHeader)header).setSingleton(singleton);
        } else if (singleton) {
            String version = this.getBundle().getHeader("Bundle-ManifestVersion");
            if (version == null) {
                version = "1";
            }
            String value = header.getValue();
            String singletonValue = null;
            singletonValue = version != null && Integer.parseInt(version) >= 2 ? "singleton:=true" : "singleton=true";
            if (value.indexOf(singletonValue) != -1) {
                return;
            }
            this.getBundle().setHeader("Bundle-SymbolicName", String.valueOf(value) + "; " + singletonValue);
        }
    }

    public void swap(IPluginExtension e1, IPluginExtension e2) throws CoreException {
        this.ensureModelEditable();
        IExtensions extensions = this.getExtensionsRoot();
        if (extensions != null) {
            extensions.swap(e1, e2);
        }
    }

    public void swap(IPluginImport import1, IPluginImport import2) throws CoreException {
        this.ensureModelEditable();
        if (this.imports != null) {
            int index1 = this.imports.indexOf(import1);
            int index2 = this.imports.indexOf(import2);
            this.imports.set(index1, import2);
            this.imports.set(index2, import1);
            IManifestHeader header = this.getManifestHeader("Require-Bundle");
            if (header instanceof RequireBundleHeader) {
                ((RequireBundleHeader)header).swap(index1, index2);
            }
            this.model.fireModelObjectChanged(this, "import_order", import1, import2);
        }
    }

    public String getId() {
        return this.getValue("Bundle-SymbolicName", true);
    }

    protected String getValue(String key, boolean parse) {
        IBundle bundle = this.getBundle();
        if (bundle == null) {
            return null;
        }
        String value = bundle.getHeader(key);
        if (value == null || !parse) {
            return value;
        }
        try {
            ManifestElement[] elements = ManifestElement.parseHeader((String)key, (String)value);
            if (elements.length > 0) {
                return elements[0].getValue();
            }
        }
        catch (BundleException bundleException) {}
        return null;
    }

    public void setId(String id) throws CoreException {
        this.ensureModelEditable();
        IBundle bundle = this.getBundle();
        if (bundle != null) {
            String old = this.getId();
            IManifestHeader header = bundle.getManifestHeader("Bundle-SymbolicName");
            if (header instanceof BundleSymbolicNameHeader) {
                ((BundleSymbolicNameHeader)header).setId(id);
            } else {
                bundle.setHeader("Bundle-SymbolicName", id);
            }
            this.model.fireModelObjectChanged(this, "id", old, id);
        }
    }

    public IPluginModelBase getPluginModel() {
        return this.model;
    }

    public String getName() {
        return this.getValue("Bundle-Name", false);
    }

    public void setName(String name) throws CoreException {
        this.ensureModelEditable();
        IBundle bundle = this.getBundle();
        if (bundle != null) {
            String old = this.getName();
            IManifestHeader header = bundle.getManifestHeader("Bundle-Name");
            if (header instanceof BundleNameHeader) {
                ((BundleNameHeader)header).setBundleName(name);
            } else {
                bundle.setHeader("Bundle-Name", name);
            }
            this.model.fireModelObjectChanged(this, "name", old, name);
        }
    }

    public boolean isInTheModel() {
        return this.model != null;
    }

    public String getTranslatedName() {
        return this.getResourceString(this.getName());
    }

    public IPluginObject getParent() {
        return null;
    }

    public IPluginBase getPluginBase() {
        return this;
    }

    public boolean isValid() {
        IExtensions extensions = this.getExtensionsRoot();
        return this.getBundle() != null && this.getBundle().getHeader("Bundle-SymbolicName") != null && (extensions == null || extensions.isValid());
    }

    public void write(String indent, PrintWriter writer) {
    }

    public void setInTheModel(boolean inModel) {
    }

    public static int getBundleManifestVersion(IBundle bundle) {
        String version = bundle.getHeader("Bundle-ManifestVersion");
        if (version == null) {
            return 1;
        }
        try {
            return Integer.parseInt(version);
        }
        catch (NumberFormatException numberFormatException) {
            return 1;
        }
    }

    public void updateImport(IPluginImport iimport) {
        IManifestHeader header = this.getManifestHeader("Require-Bundle");
        if (header instanceof RequireBundleHeader && this.imports != null) {
            ((RequireBundleHeader)header).updateBundle(this.imports.indexOf(iimport), iimport);
        }
    }

    public String getTargetVersion() {
        return this.fTarget != null ? this.fTarget : TargetPlatformHelper.getTargetVersionString();
    }

    public void setTargetVersion(String target) {
        this.fTarget = target;
    }

    public int getIndexOf(IPluginImport targetImport) {
        if (this.imports == null) {
            return -1;
        }
        return this.imports.indexOf(targetImport);
    }

    public IPluginImport getPreviousImport(IPluginImport targetImport) {
        if (this.imports == null) {
            return null;
        }
        if (this.imports.size() <= 1) {
            return null;
        }
        int targetIndex = this.getIndexOf(targetImport);
        if (targetIndex < 0) {
            return null;
        }
        if (targetIndex == 0) {
            return null;
        }
        IPluginImport previousImport = (IPluginImport)this.imports.get(targetIndex - 1);
        return previousImport;
    }

    public IPluginImport getNextImport(IPluginImport targetImport) {
        if (this.imports == null) {
            return null;
        }
        if (this.imports.size() <= 1) {
            return null;
        }
        int targetIndex = this.getIndexOf(targetImport);
        int lastIndex = this.imports.size() - 1;
        if (targetIndex < 0) {
            return null;
        }
        if (targetIndex >= lastIndex) {
            return null;
        }
        IPluginImport nextImport = (IPluginImport)this.imports.get(targetIndex + 1);
        return nextImport;
    }

    public void add(IPluginImport iimport, int index) throws CoreException {
        this.ensureModelEditable();
        int importCount = 0;
        if (this.imports != null) {
            importCount = this.imports.size();
        }
        if (index < 0) {
            return;
        }
        if (index > importCount) {
            return;
        }
        if (this.imports == null) {
            this.getImports();
            this.addImport(iimport);
        } else {
            this.addImport(iimport, index);
        }
        this.fireStructureChanged(iimport, true);
    }

    private void addImport(IPluginImport iimport, int index) {
        IManifestHeader header = this.getManifestHeader("Require-Bundle");
        if (!(header instanceof RequireBundleHeader)) {
            this.addImport(iimport);
        } else {
            this.imports.add(index, iimport);
            ((RequireBundleHeader)header).addBundle(iimport, index);
        }
    }

    public void add(IPluginLibrary library, int index) throws CoreException {
        IManifestHeader header;
        this.ensureModelEditable();
        int libraryCount = 0;
        if (this.libraries != null) {
            libraryCount = this.libraries.size();
        }
        if (index < 0) {
            return;
        }
        if (index > libraryCount) {
            return;
        }
        if (this.libraries == null) {
            this.getLibraries();
        }
        if (!((header = this.getManifestHeader("Bundle-ClassPath")) instanceof BundleClasspathHeader)) {
            this.libraries.add(library);
            this.addLibrary(library, header);
        } else {
            this.libraries.add(index, library);
            ((BundleClasspathHeader)header).addLibrary(library.getName(), index);
        }
        this.fireStructureChanged(library, true);
    }

    public int getIndexOf(IPluginLibrary targetLibrary) {
        if (this.libraries == null) {
            return -1;
        }
        return this.libraries.indexOf(targetLibrary);
    }

    public IPluginLibrary getNextLibrary(IPluginLibrary targetLibrary) {
        if (this.libraries == null) {
            return null;
        }
        if (this.libraries.size() <= 1) {
            return null;
        }
        int targetIndex = this.getIndexOf(targetLibrary);
        int lastIndex = this.libraries.size() - 1;
        if (targetIndex < 0) {
            return null;
        }
        if (targetIndex >= lastIndex) {
            return null;
        }
        IPluginLibrary nextLibrary = (IPluginLibrary)this.libraries.get(targetIndex + 1);
        return nextLibrary;
    }

    public IPluginLibrary getPreviousLibrary(IPluginLibrary targetLibrary) {
        if (this.libraries == null) {
            return null;
        }
        if (this.libraries.size() <= 1) {
            return null;
        }
        int targetIndex = this.getIndexOf(targetLibrary);
        if (targetIndex < 0) {
            return null;
        }
        if (targetIndex == 0) {
            return null;
        }
        IPluginLibrary previousLibrary = (IPluginLibrary)this.libraries.get(targetIndex - 1);
        return previousLibrary;
    }

    protected void ensureModelEditable() throws CoreException {
        if (!this.getModel().isEditable()) {
            this.throwCoreException(PDECoreMessages.PluginObject_readOnlyChange);
        }
    }

    protected void throwCoreException(String message) throws CoreException {
        Status status = new Status(4, "org.eclipse.pde.core", 0, message, null);
        CoreException ce = new CoreException((IStatus)status);
        ce.fillInStackTrace();
        throw ce;
    }
}

