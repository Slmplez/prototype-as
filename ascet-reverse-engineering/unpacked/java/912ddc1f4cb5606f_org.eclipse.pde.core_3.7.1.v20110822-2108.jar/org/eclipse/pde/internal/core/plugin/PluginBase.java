/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.BundleSpecification
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.core.plugin;

import java.util.ArrayList;
import java.util.Locale;
import javax.xml.parsers.FactoryConfigurationError;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginImport;
import org.eclipse.pde.core.plugin.IPluginLibrary;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.PDEState;
import org.eclipse.pde.internal.core.PDEStateHelper;
import org.eclipse.pde.internal.core.plugin.AbstractExtensions;
import org.eclipse.pde.internal.core.plugin.PluginImport;
import org.eclipse.pde.internal.core.plugin.PluginLibrary;
import org.osgi.framework.Version;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public abstract class PluginBase
extends AbstractExtensions
implements IPluginBase {
    private static final long serialVersionUID = 1L;
    private static final Version maxVersion = new Version(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE);
    private ArrayList fLibraries = new ArrayList();
    private ArrayList fImports = new ArrayList();
    private String fProviderName;
    private String fId;
    private String fVersion;
    private boolean fHasBundleStructure;
    private String fBundleSourceEntry;

    public PluginBase(boolean readOnly) {
        super(readOnly);
    }

    public void add(IPluginLibrary library) throws CoreException {
        this.ensureModelEditable();
        this.fLibraries.add(library);
        ((PluginLibrary)library).setInTheModel(true);
        ((PluginLibrary)library).setParent(this);
        this.fireStructureChanged(library, 1);
    }

    public void add(IPluginImport iimport) throws CoreException {
        this.ensureModelEditable();
        ((PluginImport)iimport).setInTheModel(true);
        ((PluginImport)iimport).setParent(this);
        this.fImports.add(iimport);
        this.fireStructureChanged(iimport, 1);
    }

    public void add(IPluginImport[] iimports) throws CoreException {
        this.ensureModelEditable();
        int i = 0;
        while (i < iimports.length) {
            ((PluginImport)iimports[i]).setInTheModel(true);
            ((PluginImport)iimports[i]).setParent(this);
            this.fImports.add(iimports[i]);
            ++i;
        }
        this.fireStructureChanged(iimports, 1);
    }

    public IPluginLibrary[] getLibraries() {
        return this.fLibraries.toArray(new IPluginLibrary[this.fLibraries.size()]);
    }

    public IPluginImport[] getImports() {
        return this.fImports.toArray(new IPluginImport[this.fImports.size()]);
    }

    public IPluginBase getPluginBase() {
        return this;
    }

    public String getProviderName() {
        return this.fProviderName;
    }

    public String getVersion() {
        return this.fVersion;
    }

    public String getId() {
        return this.fId;
    }

    void load(BundleDescription bundleDesc, PDEState state) {
        this.fId = bundleDesc.getSymbolicName();
        this.fVersion = bundleDesc.getVersion().toString();
        this.fName = state.getPluginName(bundleDesc.getBundleId());
        this.fProviderName = state.getProviderName(bundleDesc.getBundleId());
        this.fHasBundleStructure = state.hasBundleStructure(bundleDesc.getBundleId());
        this.fBundleSourceEntry = state.getBundleSourceEntry(bundleDesc.getBundleId());
        this.loadRuntime(bundleDesc, state);
        this.loadImports(bundleDesc);
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("id")) {
            this.setId(newValue != null ? newValue.toString() : null);
            return;
        }
        if (name.equals("version")) {
            this.setVersion(newValue != null ? newValue.toString() : null);
            return;
        }
        if (name.equals("provider-name")) {
            this.setProviderName(newValue != null ? newValue.toString() : null);
            return;
        }
        if (name.equals("library_order")) {
            this.swap((IPluginLibrary)oldValue, (IPluginLibrary)newValue);
            return;
        }
        super.restoreProperty(name, oldValue, newValue);
    }

    void load(Node node, String schemaVersion) {
        if (node == null) {
            return;
        }
        this.fSchemaVersion = schemaVersion;
        this.fId = this.getNodeAttribute(node, "id");
        this.fName = this.getNodeAttribute(node, "name");
        this.fProviderName = this.getNodeAttribute(node, "provider-name");
        this.fVersion = this.getNodeAttribute(node, "version");
        NodeList children = node.getChildNodes();
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 1) {
                this.processChild(child);
            }
            ++i;
        }
    }

    void loadRuntime(BundleDescription description, PDEState state) {
        String[] libraryNames = state.getLibraryNames(description.getBundleId());
        int i = 0;
        while (i < libraryNames.length) {
            PluginLibrary library = new PluginLibrary();
            library.setModel(this.getModel());
            library.setInTheModel(true);
            library.setParent(this);
            library.load(libraryNames[i]);
            this.fLibraries.add(library);
            ++i;
        }
    }

    void loadRuntime(Node node) {
        NodeList children = node.getChildNodes();
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 1 && child.getNodeName().toLowerCase(Locale.ENGLISH).equals("library")) {
                PluginLibrary library = new PluginLibrary();
                library.setModel(this.getModel());
                library.setInTheModel(true);
                library.setParent(this);
                this.fLibraries.add(library);
                library.load(child);
            }
            ++i;
        }
    }

    void loadImports(BundleDescription description) {
        BundleSpecification[] required = description.getRequiredBundles();
        int i = 0;
        while (i < required.length) {
            PluginImport importElement = new PluginImport();
            importElement.setModel(this.getModel());
            importElement.setInTheModel(true);
            importElement.setParent(this);
            this.fImports.add(importElement);
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
            this.fImports.add(importElement);
            importElement.load(imported[i2]);
            ++i2;
        }
    }

    void loadImports(Node node) {
        NodeList children = node.getChildNodes();
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 1 && child.getNodeName().toLowerCase(Locale.ENGLISH).equals("import")) {
                PluginImport importElement = new PluginImport();
                importElement.setModel(this.getModel());
                importElement.setInTheModel(true);
                importElement.setParent(this);
                this.fImports.add(importElement);
                importElement.load(child);
            }
            ++i;
        }
    }

    protected void processChild(Node child) {
        String name = child.getNodeName().toLowerCase(Locale.ENGLISH);
        if (name.equals("runtime")) {
            this.loadRuntime(child);
        } else if (name.equals("requires")) {
            this.loadImports(child);
        } else if (this.getModel().getUnderlyingResource() == null) {
            super.processChild(child);
        }
    }

    public void remove(IPluginLibrary library) throws CoreException {
        this.ensureModelEditable();
        this.fLibraries.remove(library);
        ((PluginLibrary)library).setInTheModel(false);
        this.fireStructureChanged(library, 2);
    }

    public void remove(IPluginImport iimport) throws CoreException {
        this.ensureModelEditable();
        this.fImports.remove(iimport);
        ((PluginImport)iimport).setInTheModel(false);
        this.fireStructureChanged(iimport, 2);
    }

    public void remove(IPluginImport[] iimports) throws CoreException {
        this.ensureModelEditable();
        int i = 0;
        while (i < iimports.length) {
            this.fImports.remove(iimports[i]);
            ((PluginImport)iimports[i]).setInTheModel(false);
            ++i;
        }
        this.fireStructureChanged(iimports, 2);
    }

    public void reset() {
        this.fLibraries = new ArrayList();
        this.fImports = new ArrayList();
        this.fProviderName = null;
        this.fSchemaVersion = null;
        this.fVersion = "";
        this.fName = "";
        this.fId = "";
        if (this.getModel() != null && this.getModel().getUnderlyingResource() != null) {
            this.fName = this.fId = this.getModel().getUnderlyingResource().getProject().getName();
            this.fVersion = "0.0.0";
        }
        super.reset();
    }

    public void setProviderName(String providerName) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fProviderName;
        this.fProviderName = providerName;
        this.firePropertyChanged("provider-name", oldValue, this.fProviderName);
    }

    public void setVersion(String newVersion) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fVersion;
        this.fVersion = newVersion;
        this.firePropertyChanged("version", oldValue, this.fVersion);
    }

    public void setId(String newId) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fId;
        this.fId = newId;
        this.firePropertyChanged("id", oldValue, this.fId);
    }

    public void internalSetVersion(String newVersion) {
        this.fVersion = newVersion;
    }

    public void swap(IPluginLibrary l1, IPluginLibrary l2) throws CoreException {
        this.ensureModelEditable();
        int index1 = this.fLibraries.indexOf(l1);
        int index2 = this.fLibraries.indexOf(l2);
        if (index1 == -1 || index2 == -1) {
            this.throwCoreException(PDECoreMessages.PluginBase_librariesNotFoundException);
        }
        this.fLibraries.set(index2, l1);
        this.fLibraries.set(index1, l2);
        this.firePropertyChanged(this, "library_order", l1, l2);
    }

    public void swap(IPluginImport import1, IPluginImport import2) throws CoreException {
        this.ensureModelEditable();
        int index1 = this.fImports.indexOf(import1);
        int index2 = this.fImports.indexOf(import2);
        if (index1 == -1 || index2 == -1) {
            this.throwCoreException(PDECoreMessages.PluginBase_importsNotFoundException);
        }
        this.fImports.set(index2, import1);
        this.fImports.set(index1, import2);
        this.firePropertyChanged(this, "import_order", import1, import2);
    }

    public boolean isValid() {
        return this.hasRequiredAttributes();
    }

    protected boolean hasRequiredAttributes() {
        if (this.fName == null) {
            return false;
        }
        if (this.fId == null) {
            return false;
        }
        if (this.fVersion == null) {
            return false;
        }
        int i = 0;
        while (i < this.fLibraries.size()) {
            IPluginLibrary library = (IPluginLibrary)this.fLibraries.get(i);
            if (!library.isValid()) {
                return false;
            }
            ++i;
        }
        i = 0;
        while (i < this.fImports.size()) {
            IPluginImport iimport = (IPluginImport)this.fImports.get(i);
            if (!iimport.isValid()) {
                return false;
            }
            ++i;
        }
        return super.hasRequiredAttributes();
    }

    protected SAXParser getSaxParser() throws ParserConfigurationException, SAXException, FactoryConfigurationError {
        return SAXParserFactory.newInstance().newSAXParser();
    }

    public static int getMatchRule(VersionRange versionRange) {
        Version maximum;
        if (versionRange == null || versionRange.getMinimum() == null) {
            return 0;
        }
        Version minimum = versionRange.getMinimum();
        Version version = maximum = versionRange.getMaximum() == null ? maxVersion : versionRange.getMaximum();
        if (maximum.compareTo(maxVersion) >= 0) {
            return 4;
        }
        if (minimum.equals((Object)maximum)) {
            return 3;
        }
        if (!versionRange.isIncluded(minimum) || versionRange.isIncluded(maximum)) {
            return 0;
        }
        if (minimum.getMajor() == maximum.getMajor() - 1) {
            return 2;
        }
        if (minimum.getMajor() != maximum.getMajor()) {
            return 0;
        }
        if (minimum.getMinor() == maximum.getMinor() - 1) {
            return 1;
        }
        if (minimum.getMinor() != maximum.getMinor()) {
            return 0;
        }
        if (minimum.getMicro() == maximum.getMicro() - 1) {
            return 3;
        }
        return 0;
    }

    public boolean hasBundleStructure() {
        return this.fHasBundleStructure;
    }

    public String getBundleSourceEntry() {
        return this.fBundleSourceEntry;
    }
}

