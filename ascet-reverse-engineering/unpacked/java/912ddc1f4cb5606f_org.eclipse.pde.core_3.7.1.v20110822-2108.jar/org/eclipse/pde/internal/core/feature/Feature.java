/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.HostSpecification
 *  org.eclipse.osgi.service.resolver.VersionRange
 */
package org.eclipse.pde.internal.core.feature;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Vector;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginImport;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.ModelEntry;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.feature.FeatureChild;
import org.eclipse.pde.internal.core.feature.FeatureData;
import org.eclipse.pde.internal.core.feature.FeatureImport;
import org.eclipse.pde.internal.core.feature.FeatureInfo;
import org.eclipse.pde.internal.core.feature.FeatureInstallHandler;
import org.eclipse.pde.internal.core.feature.FeaturePlugin;
import org.eclipse.pde.internal.core.feature.FeatureURL;
import org.eclipse.pde.internal.core.feature.VersionableObject;
import org.eclipse.pde.internal.core.ifeature.IFeature;
import org.eclipse.pde.internal.core.ifeature.IFeatureChild;
import org.eclipse.pde.internal.core.ifeature.IFeatureData;
import org.eclipse.pde.internal.core.ifeature.IFeatureImport;
import org.eclipse.pde.internal.core.ifeature.IFeatureInfo;
import org.eclipse.pde.internal.core.ifeature.IFeatureInstallHandler;
import org.eclipse.pde.internal.core.ifeature.IFeaturePlugin;
import org.eclipse.pde.internal.core.ifeature.IFeatureURL;
import org.eclipse.pde.internal.core.plugin.PluginBase;
import org.eclipse.pde.internal.core.util.VersionUtil;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class Feature
extends VersionableObject
implements IFeature {
    private static final long serialVersionUID = 1L;
    static final String INDENT = "   ";
    private String fProviderName;
    private IFeatureURL fUrl;
    private IFeatureInfo[] fInfos = new IFeatureInfo[3];
    private Vector fData = new Vector();
    private Vector fChildren = new Vector();
    private Vector fPlugins = new Vector();
    private Vector fImports = new Vector();
    private String fOs;
    private String fWs;
    private String fNl;
    private String fArch;
    private String fImageName;
    private IFeatureInstallHandler fHandler;
    private boolean fPrimary;
    private boolean fExclusive;
    private String fColocationAffinity;
    private String fApplication;
    private String fPlugin;
    private boolean fValid;
    private String fCopyright;
    private String fLicenseFeatureID;
    private String fLicenseFeatureVersion;

    public void addPlugins(IFeaturePlugin[] newPlugins) throws CoreException {
        this.ensureModelEditable();
        int i = 0;
        while (i < newPlugins.length) {
            this.fPlugins.add(newPlugins[i]);
            ((FeaturePlugin)newPlugins[i]).setInTheModel(true);
            ++i;
        }
        this.fireStructureChanged(newPlugins, 1);
    }

    public void addData(IFeatureData[] newData) throws CoreException {
        this.ensureModelEditable();
        int i = 0;
        while (i < newData.length) {
            this.fData.add(newData[i]);
            ((FeatureData)newData[i]).setInTheModel(true);
            ++i;
        }
        this.fireStructureChanged(newData, 1);
    }

    public void addIncludedFeatures(IFeatureChild[] features) throws CoreException {
        this.ensureModelEditable();
        int i = 0;
        while (i < features.length) {
            this.fChildren.add(features[i]);
            ((FeatureChild)features[i]).setInTheModel(true);
            ++i;
        }
        this.fireStructureChanged(features, 1);
    }

    public void addImports(IFeatureImport[] iimports) throws CoreException {
        this.ensureModelEditable();
        int i = 0;
        while (i < iimports.length) {
            this.fImports.add(iimports[i]);
            ((FeatureImport)iimports[i]).setInTheModel(true);
            ++i;
        }
        this.fireStructureChanged(iimports, 1);
    }

    public IFeaturePlugin[] getPlugins() {
        Object[] result = new IFeaturePlugin[this.fPlugins.size()];
        this.fPlugins.copyInto(result);
        return result;
    }

    public IFeatureData[] getData() {
        Object[] result = new IFeatureData[this.fData.size()];
        this.fData.copyInto(result);
        return result;
    }

    public IFeatureChild[] getIncludedFeatures() {
        Object[] result = new IFeatureChild[this.fChildren.size()];
        this.fChildren.copyInto(result);
        return result;
    }

    public IFeatureImport[] getImports() {
        Object[] result = new IFeatureImport[this.fImports.size()];
        this.fImports.copyInto(result);
        return result;
    }

    public String getProviderName() {
        return this.fProviderName;
    }

    public void setLicenseFeatureID(String featureID) {
        this.fLicenseFeatureID = featureID;
    }

    public String getLicenseFeatureID() {
        if (this.fLicenseFeatureID == null) {
            this.fLicenseFeatureID = "";
        }
        return this.fLicenseFeatureID;
    }

    public void setLicenseFeatureVersion(String version) {
        this.fLicenseFeatureVersion = version;
    }

    public String getLicenseFeatureVersion() {
        if (this.fLicenseFeatureVersion == null) {
            this.fLicenseFeatureVersion = "";
        }
        return this.fLicenseFeatureVersion;
    }

    public String getPlugin() {
        return this.fPlugin;
    }

    public IPluginModelBase getReferencedModel(IFeaturePlugin reference) {
        IPluginModelBase model = PluginRegistry.findModel(reference.getId());
        return model != null && model.isEnabled() ? model : null;
    }

    public IFeatureURL getURL() {
        return this.fUrl;
    }

    public IFeatureInstallHandler getInstallHandler() {
        return this.fHandler;
    }

    public IFeatureInfo getFeatureInfo(int infoType) {
        if (infoType < 0 || infoType > this.fInfos.length - 1) {
            return null;
        }
        return this.fInfos[infoType];
    }

    public boolean isPrimary() {
        return this.fPrimary;
    }

    public boolean isExclusive() {
        return this.fExclusive;
    }

    protected void parse(Node node) {
        super.parse(node);
        this.fProviderName = this.getNodeAttribute(node, "provider-name");
        this.fLicenseFeatureID = this.getNodeAttribute(node, "license-feature");
        this.fLicenseFeatureVersion = this.getNodeAttribute(node, "license-feature-version");
        this.fPlugin = this.getNodeAttribute(node, "plugin");
        this.fOs = this.getNodeAttribute(node, "os");
        this.fWs = this.getNodeAttribute(node, "ws");
        this.fNl = this.getNodeAttribute(node, "nl");
        this.fArch = this.getNodeAttribute(node, "arch");
        this.fImageName = this.getNodeAttribute(node, "image");
        this.fColocationAffinity = this.getNodeAttribute(node, "colocation-affinity");
        this.fApplication = this.getNodeAttribute(node, "application");
        this.fPrimary = this.getBooleanAttribute(node, "primary");
        this.fExclusive = this.getBooleanAttribute(node, "exclusive");
        NodeList children = node.getChildNodes();
        this.fValid = true;
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 1) {
                IFeatureInfo info;
                String tag = child.getNodeName().toLowerCase(Locale.ENGLISH);
                if (tag.equals("description")) {
                    info = this.getModel().getFactory().createInfo(0);
                    ((FeatureInfo)info).setInTheModel(true);
                    ((FeatureInfo)info).parse(child);
                    this.fInfos[0] = info;
                } else if (tag.equals("license")) {
                    info = this.getModel().getFactory().createInfo(2);
                    ((FeatureInfo)info).setInTheModel(true);
                    ((FeatureInfo)info).parse(child);
                    this.fInfos[2] = info;
                } else if (tag.equals("copyright")) {
                    info = this.getModel().getFactory().createInfo(1);
                    ((FeatureInfo)info).setInTheModel(true);
                    ((FeatureInfo)info).parse(child);
                    this.fInfos[1] = info;
                } else if (tag.equals("url")) {
                    if (this.fUrl == null) {
                        this.fUrl = this.getModel().getFactory().createURL();
                        ((FeatureURL)this.fUrl).setInTheModel(true);
                        ((FeatureURL)this.fUrl).parse(child);
                    }
                } else if (tag.equals("requires")) {
                    this.parseRequires(child);
                } else if (tag.equals("install-handler")) {
                    IFeatureInstallHandler handler = this.getModel().getFactory().createInstallHandler();
                    ((FeatureInstallHandler)handler).parse(child);
                    ((FeatureInstallHandler)handler).setInTheModel(true);
                    this.fHandler = handler;
                } else if (tag.equals("plugin")) {
                    IFeaturePlugin plugin = this.getModel().getFactory().createPlugin();
                    ((FeaturePlugin)plugin).parse(child);
                    ((FeaturePlugin)plugin).setInTheModel(true);
                    this.fPlugins.add(plugin);
                } else if (tag.equals("data")) {
                    IFeatureData newData = this.getModel().getFactory().createData();
                    ((FeatureData)newData).parse(child);
                    ((FeatureData)newData).setInTheModel(true);
                    this.fData.add(newData);
                } else if (tag.equals("includes")) {
                    IFeatureChild newChild = this.getModel().getFactory().createChild();
                    ((FeatureChild)newChild).parse(child);
                    ((FeatureChild)newChild).setInTheModel(true);
                    this.fChildren.add(newChild);
                }
            }
            ++i;
        }
        this.fValid = this.hasRequiredAttributes();
    }

    private void parseRequires(Node node) {
        NodeList children = node.getChildNodes();
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 1 && child.getNodeName().equalsIgnoreCase("import")) {
                IFeatureImport iimport = this.getModel().getFactory().createImport();
                ((FeatureImport)iimport).parse(child);
                ((FeatureImport)iimport).setInTheModel(true);
                this.fImports.add(iimport);
            }
            ++i;
        }
    }

    public void computeImports() throws CoreException {
        Vector<IFeatureImport> preservedImports = new Vector<IFeatureImport>(this.fImports.size());
        ArrayList newImports = new ArrayList();
        IPluginModelBase model = null;
        int i = 0;
        while (i < this.fPlugins.size()) {
            IFeaturePlugin fp = (IFeaturePlugin)this.fPlugins.get(i);
            ModelEntry entry = PluginRegistry.findEntry(fp.getId());
            if (entry != null) {
                IPluginModelBase[] models = entry.getActiveModels();
                int j = 0;
                while (j < models.length) {
                    IPluginModelBase m = models[j];
                    if (fp.getVersion().equals(m.getPluginBase().getVersion()) || fp.getVersion().equals("0.0.0")) {
                        model = m;
                    }
                    ++j;
                }
                if (model != null) {
                    BundleDescription desc;
                    this.addPluginImports(preservedImports, newImports, model.getPluginBase());
                    if (model.isFragmentModel() && (desc = model.getBundleDescription()) != null) {
                        HostSpecification hostSpec = desc.getHost();
                        String id = hostSpec.getName();
                        String version = null;
                        int match = 0;
                        VersionRange versionRange = hostSpec.getVersionRange();
                        if (versionRange != null && !VersionRange.emptyRange.equals((Object)versionRange)) {
                            version = versionRange.getMinimum() != null ? versionRange.getMinimum().toString() : null;
                            match = PluginBase.getMatchRule(versionRange);
                        }
                        this.addNewDependency(id, version, match, preservedImports, newImports);
                    }
                }
            }
            ++i;
        }
        i = 0;
        while (i < this.fImports.size()) {
            IFeatureImport iimport = (IFeatureImport)this.fImports.get(i);
            if (iimport.getType() == 1) {
                preservedImports.add(iimport);
            }
            ++i;
        }
        Vector removedImports = (Vector)this.fImports.clone();
        removedImports.removeAll(preservedImports);
        this.fImports = preservedImports;
        if (removedImports.size() > 0) {
            this.fireStructureChanged(removedImports.toArray(new IFeatureImport[removedImports.size()]), 2);
        }
        if (newImports.size() > 0) {
            this.fImports.addAll(newImports);
            this.fireStructureChanged(newImports.toArray(new IFeatureImport[newImports.size()]), 1);
        }
    }

    private void addPluginImports(List preservedImports, List newImports, IPluginBase plugin) throws CoreException {
        IPluginImport[] pluginImports = plugin.getImports();
        int i = 0;
        while (i < pluginImports.length) {
            IPluginImport pluginImport = pluginImports[i];
            if (!pluginImport.isOptional()) {
                String id = pluginImport.getId();
                String version = pluginImport.getVersion();
                int match = pluginImport.getMatch();
                this.addNewDependency(id, version, match, preservedImports, newImports);
            }
            ++i;
        }
    }

    private void addNewDependency(String id, String version, int match, List preservedImports, List newImports) throws CoreException {
        if (this.findFeaturePlugin(id, version, match) != null) {
            return;
        }
        if (this.findImport(preservedImports, id, version, match) != null) {
            return;
        }
        if (this.findImport(newImports, id, version, match) != null) {
            return;
        }
        IFeatureImport iimport = this.findImport(this.fImports, id, version, match);
        if (iimport != null) {
            preservedImports.add(iimport);
            return;
        }
        iimport = this.getModel().getFactory().createImport();
        iimport.setId(id);
        iimport.setVersion(version);
        iimport.setMatch(match);
        ((FeatureImport)iimport).setInTheModel(true);
        newImports.add(iimport);
    }

    private IFeatureImport findImport(List imports, String id, String version, int match) {
        int i = 0;
        while (i < imports.size()) {
            IFeatureImport iimport = (IFeatureImport)imports.get(i);
            if (iimport.getId().equals(id)) {
                if (version == null) {
                    return iimport;
                }
                if (version.equals(iimport.getVersion()) && match == iimport.getMatch()) {
                    return iimport;
                }
            }
            ++i;
        }
        return null;
    }

    private IFeaturePlugin findFeaturePlugin(String id, String version, int match) {
        int i = 0;
        while (i < this.fPlugins.size()) {
            String pversion;
            IFeaturePlugin fp = (IFeaturePlugin)this.fPlugins.get(i);
            String pid = fp.getId();
            if (VersionUtil.compare(pid, pversion = fp.getVersion(), id, version, match)) {
                return fp;
            }
            ++i;
        }
        return null;
    }

    public void removePlugins(IFeaturePlugin[] removed) throws CoreException {
        this.ensureModelEditable();
        int i = 0;
        while (i < removed.length) {
            this.fPlugins.remove(removed[i]);
            ((FeaturePlugin)removed[i]).setInTheModel(false);
            ++i;
        }
        this.fireStructureChanged(removed, 2);
    }

    public void removeData(IFeatureData[] removed) throws CoreException {
        this.ensureModelEditable();
        int i = 0;
        while (i < removed.length) {
            this.fData.remove(removed[i]);
            ((FeatureData)removed[i]).setInTheModel(false);
            ++i;
        }
        this.fireStructureChanged(removed, 2);
    }

    public void removeIncludedFeatures(IFeatureChild[] features) throws CoreException {
        this.ensureModelEditable();
        int i = 0;
        while (i < features.length) {
            this.fChildren.remove(features[i]);
            ((FeatureChild)features[i]).setInTheModel(false);
            ++i;
        }
        this.fireStructureChanged(features, 2);
    }

    public void removeImports(IFeatureImport[] iimports) throws CoreException {
        this.ensureModelEditable();
        int i = 0;
        while (i < iimports.length) {
            this.fImports.remove(iimports[i]);
            ((FeatureImport)iimports[i]).setInTheModel(false);
            ++i;
        }
        this.fireStructureChanged(iimports, 2);
    }

    public String getOS() {
        return this.fOs;
    }

    public String getWS() {
        return this.fWs;
    }

    public String getNL() {
        return this.fNl;
    }

    public String getArch() {
        return this.fArch;
    }

    public String getColocationAffinity() {
        return this.fColocationAffinity;
    }

    public String getApplication() {
        return this.fApplication;
    }

    public void setOS(String os) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fOs;
        this.fOs = os;
        this.firePropertyChanged("os", oldValue, os);
    }

    public void setWS(String ws) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fWs;
        this.fWs = ws;
        this.firePropertyChanged("ws", oldValue, ws);
    }

    public void setNL(String nl) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fNl;
        this.fNl = nl;
        this.firePropertyChanged("nl", oldValue, nl);
    }

    public void setArch(String arch) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fArch;
        this.fArch = arch;
        this.firePropertyChanged("arch", oldValue, arch);
    }

    public void setPrimary(boolean newValue) throws CoreException {
        if (this.fPrimary == newValue) {
            return;
        }
        this.ensureModelEditable();
        Boolean oldValue = this.fPrimary ? Boolean.TRUE : Boolean.FALSE;
        this.fPrimary = newValue;
        this.firePropertyChanged("primary", oldValue, newValue ? Boolean.TRUE : Boolean.FALSE);
    }

    public void setExclusive(boolean newValue) throws CoreException {
        if (this.fExclusive == newValue) {
            return;
        }
        this.ensureModelEditable();
        Boolean oldValue = this.fExclusive ? Boolean.TRUE : Boolean.FALSE;
        this.fExclusive = newValue;
        this.firePropertyChanged("exclusive", oldValue, newValue ? Boolean.TRUE : Boolean.FALSE);
    }

    public void setColocationAffinity(String newValue) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fColocationAffinity;
        this.fColocationAffinity = newValue;
        this.firePropertyChanged("colocation-affinity", oldValue, newValue);
    }

    public void setApplication(String newValue) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fApplication;
        this.fApplication = newValue;
        this.firePropertyChanged("application", oldValue, newValue);
    }

    public void setProviderName(String providerName) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fProviderName;
        this.fProviderName = providerName;
        this.firePropertyChanged("provider", oldValue, providerName);
    }

    public void setPlugin(String plugin) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fPlugin;
        this.fPlugin = plugin;
        this.firePropertyChanged("plugin", oldValue, plugin);
    }

    public void setURL(IFeatureURL url) throws CoreException {
        this.ensureModelEditable();
        IFeatureURL oldValue = this.fUrl;
        if (this.fUrl != null) {
            ((FeatureURL)this.fUrl).setInTheModel(false);
        }
        this.fUrl = url;
        this.firePropertyChanged("url", oldValue, url);
    }

    public void setInstallHandler(IFeatureInstallHandler handler) throws CoreException {
        this.ensureModelEditable();
        IFeatureInstallHandler oldValue = this.fHandler;
        if (this.fHandler != null) {
            ((FeatureInstallHandler)this.fHandler).setInTheModel(false);
        }
        this.fHandler = handler;
        this.firePropertyChanged("installHandler", oldValue, handler);
    }

    public void setFeatureInfo(IFeatureInfo info, int index) throws CoreException {
        String property;
        this.ensureModelEditable();
        IFeatureInfo oldValue = this.fInfos[index];
        if (oldValue != null) {
            ((FeatureInfo)oldValue).setInTheModel(true);
        }
        this.fInfos[index] = info;
        switch (index) {
            case 0: {
                property = "description";
                break;
            }
            case 2: {
                property = "license";
                break;
            }
            case 1: {
                property = "copyright";
                break;
            }
            default: {
                return;
            }
        }
        this.firePropertyChanged(property, oldValue, info);
    }

    public void setImageName(String imageName) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fImageName;
        this.fImageName = imageName;
        this.firePropertyChanged("image", oldValue, imageName);
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("os")) {
            this.setOS((String)newValue);
        } else if (name.equals("ws")) {
            this.setWS((String)newValue);
        } else if (name.equals("nl")) {
            this.setNL((String)newValue);
        } else if (name.equals("arch")) {
            this.setArch((String)newValue);
        } else if (name.equals("colocation-affinity")) {
            this.setColocationAffinity((String)newValue);
        } else if (name.equals("application")) {
            this.setApplication((String)newValue);
        } else if (name.equals("primary")) {
            this.setPrimary(newValue != null ? (Boolean)newValue : false);
        } else if (name.equals("exclusive")) {
            this.setExclusive(newValue != null ? (Boolean)newValue : false);
        } else if (name.equals("provider")) {
            this.setProviderName((String)newValue);
        } else if (name.equals("plugin")) {
            this.setPlugin((String)newValue);
        } else if (name.equals("url")) {
            this.setURL((IFeatureURL)newValue);
        } else if (name.equals("installHandler")) {
            this.setInstallHandler((IFeatureInstallHandler)newValue);
        } else if (name.equals("description")) {
            this.setFeatureInfo((IFeatureInfo)newValue, 0);
        } else if (name.equals("license")) {
            this.setFeatureInfo((IFeatureInfo)newValue, 2);
        } else if (name.equals("copyright")) {
            this.setFeatureInfo((IFeatureInfo)newValue, 1);
        } else if (name.equals("image")) {
            this.setImageName((String)newValue);
        } else {
            super.restoreProperty(name, oldValue, newValue);
        }
    }

    public void reset() {
        super.reset();
        this.fData.clear();
        this.fPlugins.clear();
        this.fImports.clear();
        this.fChildren.clear();
        this.fUrl = null;
        this.fProviderName = null;
        this.fPlugin = null;
        this.fOs = null;
        this.fWs = null;
        this.fNl = null;
        this.fArch = null;
        this.fInfos[0] = null;
        this.fInfos[1] = null;
        this.fInfos[2] = null;
        this.fPrimary = false;
        this.fExclusive = false;
        this.fColocationAffinity = null;
        this.fApplication = null;
        this.fValid = false;
    }

    public boolean isValid() {
        return this.fValid;
    }

    private boolean hasRequiredAttributes() {
        if (this.id == null) {
            return false;
        }
        if (this.version == null) {
            return false;
        }
        int i = 0;
        while (i < this.fChildren.size()) {
            IFeatureChild child = (IFeatureChild)this.fChildren.elementAt(i);
            if (child.getId() == null || child.getVersion() == null) {
                return false;
            }
            ++i;
        }
        i = 0;
        while (i < this.fPlugins.size()) {
            IFeaturePlugin plugin = (IFeaturePlugin)this.fPlugins.elementAt(i);
            if (plugin.getId() == null || plugin.getVersion() == null) {
                return false;
            }
            ++i;
        }
        i = 0;
        while (i < this.fData.size()) {
            IFeatureData entry = (IFeatureData)this.fData.elementAt(i);
            if (entry.getId() == null) {
                return false;
            }
            ++i;
        }
        i = 0;
        while (i < this.fImports.size()) {
            IFeatureImport iimport = (IFeatureImport)this.fImports.elementAt(i);
            if (iimport.getId() == null) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public void write(String indent, PrintWriter writer) {
        if (this.fCopyright != null) {
            writer.println("<!--" + this.fCopyright + "-->");
        }
        writer.print(String.valueOf(indent) + "<feature");
        String indent2 = String.valueOf(indent) + INDENT;
        String indenta = String.valueOf(indent) + INDENT + INDENT;
        this.writeIfDefined(indenta, writer, "id", this.getId());
        this.writeIfDefined(indenta, writer, "label", this.getWritableString(this.getLabel()));
        this.writeIfDefined(indenta, writer, "version", this.getVersion());
        this.writeIfDefined(indenta, writer, "provider-name", this.getWritableString(this.fProviderName));
        this.writeIfDefined(indenta, writer, "plugin", this.getPlugin());
        this.writeIfDefined(indenta, writer, "os", this.fOs);
        this.writeIfDefined(indenta, writer, "ws", this.fWs);
        this.writeIfDefined(indenta, writer, "nl", this.fNl);
        this.writeIfDefined(indenta, writer, "arch", this.fArch);
        if (this.fImageName != null) {
            this.writeIfDefined(indenta, writer, "image", this.getWritableString(this.fImageName));
        }
        if (this.isPrimary()) {
            writer.println();
            writer.print(String.valueOf(indenta) + "primary=\"true\"");
        }
        if (this.getLicenseFeatureID().length() > 0) {
            writer.println();
            writer.print(String.valueOf(indenta) + "license-feature=\"" + this.getLicenseFeatureID() + "\"");
        }
        if (this.getLicenseFeatureVersion().length() > 0) {
            writer.println();
            writer.print(String.valueOf(indenta) + "license-feature-version=\"" + this.getLicenseFeatureVersion() + "\"");
        }
        if (this.isExclusive()) {
            writer.println();
            writer.print(String.valueOf(indenta) + "exclusive=\"true\"");
        }
        this.writeIfDefined(indenta, writer, "colocation-affinity", this.fColocationAffinity);
        this.writeIfDefined(indenta, writer, "application", this.fApplication);
        writer.println(">");
        if (this.fHandler != null) {
            this.fHandler.write(indent2, writer);
        }
        int i = 0;
        while (i < 3) {
            IFeatureInfo info = this.fInfos[i];
            if (info != null && !info.isEmpty()) {
                info.write(indent2, writer);
            }
            ++i;
        }
        if (this.fUrl != null) {
            this.fUrl.write(indent2, writer);
        }
        i = 0;
        while (i < this.fChildren.size()) {
            IFeatureChild child = (IFeatureChild)this.fChildren.elementAt(i);
            writer.println();
            child.write(indent2, writer);
            ++i;
        }
        if (this.fImports.size() > 0) {
            writer.println();
            writer.println(String.valueOf(indent2) + "<requires>");
            i = 0;
            while (i < this.fImports.size()) {
                IFeatureImport iimport = (IFeatureImport)this.fImports.get(i);
                iimport.write(indenta, writer);
                ++i;
            }
            writer.println(String.valueOf(indent2) + "</requires>");
        }
        i = 0;
        while (i < this.fPlugins.size()) {
            IFeaturePlugin plugin = (IFeaturePlugin)this.fPlugins.elementAt(i);
            writer.println();
            plugin.write(indent2, writer);
            ++i;
        }
        i = 0;
        while (i < this.fData.size()) {
            IFeatureData entry = (IFeatureData)this.fData.elementAt(i);
            writer.println();
            entry.write(indent2, writer);
            ++i;
        }
        writer.println();
        writer.println(String.valueOf(indent) + "</feature>");
    }

    private void writeIfDefined(String indent, PrintWriter writer, String attName, String attValue) {
        if (attValue == null || attValue.trim().length() == 0) {
            return;
        }
        writer.println();
        writer.print(String.valueOf(indent) + attName + "=\"" + attValue + "\"");
    }

    public String getImageName() {
        return this.fImageName;
    }

    public String getCopyright() {
        return this.fCopyright;
    }

    public void setCopyright(String copyright) {
        this.fCopyright = copyright;
    }

    public void swap(IFeatureChild feature1, IFeatureChild feature2) {
        int index1 = this.fChildren.indexOf(feature1);
        int index2 = this.fChildren.indexOf(feature2);
        if (index1 == -1 || index2 == -1) {
            return;
        }
        this.fChildren.set(index2, feature1);
        this.fChildren.set(index1, feature2);
        this.fireStructureChanged(feature1, 3);
    }
}

