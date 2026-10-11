/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.product;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.TreeMap;
import org.eclipse.pde.internal.core.iproduct.IAboutInfo;
import org.eclipse.pde.internal.core.iproduct.IArgumentsInfo;
import org.eclipse.pde.internal.core.iproduct.IConfigurationFileInfo;
import org.eclipse.pde.internal.core.iproduct.IConfigurationProperty;
import org.eclipse.pde.internal.core.iproduct.IIntroInfo;
import org.eclipse.pde.internal.core.iproduct.IJREInfo;
import org.eclipse.pde.internal.core.iproduct.ILauncherInfo;
import org.eclipse.pde.internal.core.iproduct.ILicenseInfo;
import org.eclipse.pde.internal.core.iproduct.IPluginConfiguration;
import org.eclipse.pde.internal.core.iproduct.IProduct;
import org.eclipse.pde.internal.core.iproduct.IProductFeature;
import org.eclipse.pde.internal.core.iproduct.IProductModel;
import org.eclipse.pde.internal.core.iproduct.IProductModelFactory;
import org.eclipse.pde.internal.core.iproduct.IProductObject;
import org.eclipse.pde.internal.core.iproduct.IProductPlugin;
import org.eclipse.pde.internal.core.iproduct.ISplashInfo;
import org.eclipse.pde.internal.core.iproduct.IWindowImages;
import org.eclipse.pde.internal.core.product.ProductObject;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class Product
extends ProductObject
implements IProduct {
    private static final long serialVersionUID = 1L;
    private String fId;
    private String fProductId;
    private String fName;
    private String fApplication;
    private String fVersion;
    private IAboutInfo fAboutInfo;
    private TreeMap fPlugins = new TreeMap();
    private TreeMap fPluginConfigurations = new TreeMap();
    private TreeMap fConfigurationProperties = new TreeMap();
    private List fFeatures = new ArrayList();
    private IConfigurationFileInfo fConfigIniInfo;
    private IJREInfo fJVMInfo;
    private boolean fUseFeatures;
    private boolean fIncludeLaunchers = true;
    private IWindowImages fWindowImages;
    private ISplashInfo fSplashInfo;
    private ILauncherInfo fLauncherInfo;
    private IArgumentsInfo fLauncherArgs;
    private IIntroInfo fIntroInfo;
    private ILicenseInfo fLicenseInfo;

    public Product(IProductModel model) {
        super(model);
    }

    public String getId() {
        return this.fId;
    }

    public String getProductId() {
        return this.fProductId;
    }

    public String getName() {
        return this.fName;
    }

    public String getVersion() {
        return this.fVersion;
    }

    public String getApplication() {
        return this.fApplication;
    }

    public String getDefiningPluginId() {
        if (this.fProductId == null) {
            return null;
        }
        int dot = this.fProductId.lastIndexOf(46);
        return dot != -1 ? this.fProductId.substring(0, dot) : null;
    }

    public void setId(String id) {
        String old = this.fId;
        this.fId = id;
        if (this.isEditable()) {
            this.firePropertyChanged("uid", old, this.fId);
        }
    }

    public void setProductId(String id) {
        String old = this.fProductId;
        this.fProductId = id;
        if (this.isEditable()) {
            this.firePropertyChanged("id", old, this.fProductId);
        }
    }

    public void setVersion(String version) {
        String old = this.fVersion;
        this.fVersion = version;
        if (this.isEditable()) {
            this.firePropertyChanged("version", old, this.fVersion);
        }
    }

    public void setName(String name) {
        String old = this.fName;
        this.fName = name;
        if (this.isEditable()) {
            this.firePropertyChanged("name", old, this.fName);
        }
    }

    public void setAboutInfo(IAboutInfo info) {
        this.fAboutInfo = info;
    }

    public void setApplication(String application) {
        String old = this.fApplication;
        this.fApplication = application;
        if (this.isEditable()) {
            this.firePropertyChanged("application", old, this.fApplication);
        }
    }

    public void write(String indent, PrintWriter writer) {
        writer.print(String.valueOf(indent) + "<product");
        if (this.fName != null && this.fName.length() > 0) {
            writer.print(" name=\"" + this.getWritableString(this.fName) + "\"");
        }
        if (this.fId != null && this.fId.length() > 0) {
            writer.print(" uid=\"" + this.fId + "\"");
        }
        if (this.fProductId != null && this.fProductId.length() > 0) {
            writer.print(" id=\"" + this.fProductId + "\"");
        }
        if (this.fApplication != null && this.fApplication.length() > 0) {
            writer.print(" application=\"" + this.fApplication + "\"");
        }
        if (this.fVersion != null && this.fVersion.length() > 0) {
            writer.print(" version=\"" + this.fVersion + "\"");
        }
        writer.print(" useFeatures=\"" + Boolean.toString(this.fUseFeatures) + "\"");
        writer.print(" includeLaunchers=\"" + Boolean.toString(this.fIncludeLaunchers) + "\"");
        writer.println(">");
        if (this.fAboutInfo != null) {
            writer.println();
            this.fAboutInfo.write(String.valueOf(indent) + "   ", writer);
        }
        if (this.fConfigIniInfo != null) {
            writer.println();
            this.fConfigIniInfo.write(String.valueOf(indent) + "   ", writer);
        }
        if (this.fLauncherArgs != null) {
            writer.println();
            this.fLauncherArgs.write(String.valueOf(indent) + "   ", writer);
        }
        if (this.fWindowImages != null) {
            writer.println();
            this.fWindowImages.write(String.valueOf(indent) + "   ", writer);
        }
        if (this.fSplashInfo != null) {
            writer.println();
            this.fSplashInfo.write(String.valueOf(indent) + "   ", writer);
        }
        if (this.fLauncherInfo != null) {
            writer.println();
            this.fLauncherInfo.write(String.valueOf(indent) + "   ", writer);
        }
        if (this.fIntroInfo != null) {
            writer.println();
            this.fIntroInfo.write(String.valueOf(indent) + "   ", writer);
        }
        if (this.fJVMInfo != null) {
            writer.println();
            this.fJVMInfo.write(String.valueOf(indent) + "   ", writer);
        }
        if (this.fLicenseInfo != null) {
            writer.println();
            this.fLicenseInfo.write(String.valueOf(indent) + "   ", writer);
        }
        writer.println();
        writer.println(String.valueOf(indent) + "   <plugins>");
        Iterator<Object> iter = this.fPlugins.values().iterator();
        while (iter.hasNext()) {
            IProductPlugin plugin = (IProductPlugin)iter.next();
            plugin.write(String.valueOf(indent) + "      ", writer);
        }
        writer.println(String.valueOf(indent) + "   </plugins>");
        if (this.fFeatures.size() > 0) {
            writer.println();
            writer.println(String.valueOf(indent) + "   <features>");
            iter = this.fFeatures.iterator();
            while (iter.hasNext()) {
                IProductFeature feature = (IProductFeature)iter.next();
                feature.write(String.valueOf(indent) + "      ", writer);
            }
            writer.println(String.valueOf(indent) + "   </features>");
        }
        writer.println();
        if (this.fConfigurationProperties.size() > 0 || this.fPluginConfigurations.size() > 0) {
            writer.println(String.valueOf(indent) + "   <configurations>");
            iter = this.fPluginConfigurations.values().iterator();
            while (iter.hasNext()) {
                IPluginConfiguration configuration = (IPluginConfiguration)iter.next();
                configuration.write(String.valueOf(indent) + "      ", writer);
            }
            iter = this.fConfigurationProperties.values().iterator();
            while (iter.hasNext()) {
                IConfigurationProperty property = (IConfigurationProperty)iter.next();
                property.write(String.valueOf(indent) + "      ", writer);
            }
            writer.println(String.valueOf(indent) + "   </configurations>");
        }
        writer.println();
        writer.println("</product>");
    }

    public IAboutInfo getAboutInfo() {
        return this.fAboutInfo;
    }

    public void reset() {
        this.fApplication = null;
        this.fId = null;
        this.fProductId = null;
        this.fName = null;
        this.fUseFeatures = false;
        this.fIncludeLaunchers = true;
        this.fAboutInfo = null;
        this.fPlugins.clear();
        this.fPluginConfigurations.clear();
        this.fConfigurationProperties.clear();
        this.fFeatures.clear();
        this.fConfigIniInfo = null;
        this.fWindowImages = null;
        this.fSplashInfo = null;
        this.fLauncherInfo = null;
        this.fLauncherArgs = null;
        this.fIntroInfo = null;
        this.fJVMInfo = null;
        this.fLicenseInfo = null;
    }

    public void parse(Node node) {
        if (node.getNodeType() == 1 && node.getNodeName().equals("product")) {
            Element element = (Element)node;
            this.fApplication = element.getAttribute("application");
            this.fProductId = element.getAttribute("id");
            this.fId = element.getAttribute("uid");
            this.fName = element.getAttribute("name");
            this.fVersion = element.getAttribute("version");
            this.fUseFeatures = "true".equals(element.getAttribute("useFeatures"));
            String launchers = element.getAttribute("includeLaunchers");
            this.fIncludeLaunchers = "true".equals(launchers) || launchers.length() == 0;
            NodeList children = node.getChildNodes();
            IProductModelFactory factory = this.getModel().getFactory();
            int i = 0;
            while (i < children.getLength()) {
                Node child = children.item(i);
                if (child.getNodeType() == 1) {
                    String name = child.getNodeName();
                    if (name.equals("aboutInfo")) {
                        this.fAboutInfo = factory.createAboutInfo();
                        this.fAboutInfo.parse(child);
                    } else if (name.equals("plugins")) {
                        this.parsePlugins(child.getChildNodes());
                    } else if (name.equals("features")) {
                        this.parseFeatures(child.getChildNodes());
                    } else if (name.equals("configurations")) {
                        this.parseConfigations(child.getChildNodes());
                    } else if (name.equals("configIni")) {
                        this.fConfigIniInfo = factory.createConfigFileInfo();
                        this.fConfigIniInfo.parse(child);
                    } else if (name.equals("windowImages")) {
                        this.fWindowImages = factory.createWindowImages();
                        this.fWindowImages.parse(child);
                    } else if (name.equals("splash")) {
                        this.fSplashInfo = factory.createSplashInfo();
                        this.fSplashInfo.parse(child);
                    } else if (name.equals("launcher")) {
                        this.fLauncherInfo = factory.createLauncherInfo();
                        this.fLauncherInfo.parse(child);
                    } else if (name.equals("launcherArgs")) {
                        this.fLauncherArgs = factory.createLauncherArguments();
                        this.fLauncherArgs.parse(child);
                    } else if (name.equals("intro")) {
                        this.fIntroInfo = factory.createIntroInfo();
                        this.fIntroInfo.parse(child);
                    } else if (name.equals("vm")) {
                        this.fJVMInfo = factory.createJVMInfo();
                        this.fJVMInfo.parse(child);
                    } else if (name.equals("license")) {
                        this.fLicenseInfo = factory.createLicenseInfo();
                        this.fLicenseInfo.parse(child);
                    }
                }
                ++i;
            }
        }
    }

    private void parsePlugins(NodeList children) {
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 1 && child.getNodeName().equals("plugin")) {
                IProductPlugin plugin = this.getModel().getFactory().createPlugin();
                plugin.parse(child);
                this.fPlugins.put(plugin.getId(), plugin);
            }
            ++i;
        }
    }

    private void parseConfigations(NodeList children) {
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 1) {
                if (child.getNodeName().equals("plugin")) {
                    IPluginConfiguration configuration = this.getModel().getFactory().createPluginConfiguration();
                    configuration.parse(child);
                    this.fPluginConfigurations.put(configuration.getId(), configuration);
                }
                if (child.getNodeName().equals("property")) {
                    IConfigurationProperty property = this.getModel().getFactory().createConfigurationProperty();
                    property.parse(child);
                    this.fConfigurationProperties.put(property.getName(), property);
                }
            }
            ++i;
        }
    }

    private void parseFeatures(NodeList children) {
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 1 && child.getNodeName().equals("feature")) {
                IProductFeature feature = this.getModel().getFactory().createFeature();
                feature.parse(child);
                this.fFeatures.add(feature);
            }
            ++i;
        }
    }

    public void addPlugins(IProductPlugin[] plugins) {
        boolean modified = false;
        int i = 0;
        while (i < plugins.length) {
            if (plugins[i] != null) {
                String id = plugins[i].getId();
                if (id == null || this.fPlugins.containsKey(id)) {
                    plugins[i] = null;
                } else {
                    plugins[i].setModel(this.getModel());
                    this.fPlugins.put(id, plugins[i]);
                    modified = true;
                }
            }
            ++i;
        }
        if (modified && this.isEditable()) {
            this.fireStructureChanged(plugins, 1);
        }
    }

    public void addPluginConfigurations(IPluginConfiguration[] configuration) {
        boolean modified = false;
        int i = 0;
        while (i < configuration.length) {
            if (configuration[i] != null) {
                String id = configuration[i].getId();
                if (id == null || this.fPluginConfigurations.containsKey(id)) {
                    configuration[i] = null;
                } else {
                    configuration[i].setModel(this.getModel());
                    this.fPluginConfigurations.put(id, configuration[i]);
                    modified = true;
                }
            }
            ++i;
        }
        if (modified && this.isEditable()) {
            this.fireStructureChanged(configuration, 1);
        }
    }

    public void addConfigurationProperties(IConfigurationProperty[] properties) {
        boolean modified = false;
        int i = 0;
        while (i < properties.length) {
            String name;
            if (properties[i] != null && (name = properties[i].getName()) != null && !this.fConfigurationProperties.containsKey(name)) {
                properties[i].setModel(this.getModel());
                this.fConfigurationProperties.put(name, properties[i]);
                modified = true;
            }
            ++i;
        }
        if (modified && this.isEditable()) {
            this.fireStructureChanged(properties, 1);
        }
    }

    public void removePlugins(IProductPlugin[] plugins) {
        boolean modified = false;
        LinkedList removedConfigurations = new LinkedList();
        int i = 0;
        while (i < plugins.length) {
            String id = plugins[i].getId();
            if (this.fPlugins.remove(id) != null) {
                modified = true;
                Object configuration = this.fPluginConfigurations.remove(id);
                if (configuration != null) {
                    removedConfigurations.add(configuration);
                }
            }
            ++i;
        }
        if (this.isEditable()) {
            if (modified) {
                this.fireStructureChanged(plugins, 2);
            }
            if (!removedConfigurations.isEmpty()) {
                this.fireStructureChanged(removedConfigurations.toArray(new IProductObject[removedConfigurations.size()]), 2);
            }
        }
    }

    public void removePluginConfigurations(IPluginConfiguration[] configurations) {
        boolean modified = false;
        int i = 0;
        while (i < configurations.length) {
            if (this.fPluginConfigurations.remove(configurations[i].getId()) != null) {
                modified = true;
            }
            ++i;
        }
        if (this.isEditable() && modified) {
            this.fireStructureChanged(configurations, 2);
        }
    }

    public void removeConfigurationProperties(IConfigurationProperty[] properties) {
        boolean modified = false;
        int i = 0;
        while (i < properties.length) {
            if (this.fConfigurationProperties.remove(properties[i].getName()) != null) {
                modified = true;
            }
            ++i;
        }
        if (this.isEditable() && modified) {
            this.fireStructureChanged(properties, 2);
        }
    }

    public IProductPlugin[] getPlugins() {
        return this.fPlugins.values().toArray(new IProductPlugin[this.fPlugins.size()]);
    }

    public IPluginConfiguration[] getPluginConfigurations() {
        return this.fPluginConfigurations.values().toArray(new IPluginConfiguration[this.fPluginConfigurations.size()]);
    }

    public IConfigurationProperty[] getConfigurationProperties() {
        return this.fConfigurationProperties.values().toArray(new IConfigurationProperty[this.fConfigurationProperties.size()]);
    }

    public IConfigurationFileInfo getConfigurationFileInfo() {
        return this.fConfigIniInfo;
    }

    public void setConfigurationFileInfo(IConfigurationFileInfo info) {
        this.fConfigIniInfo = info;
    }

    public boolean useFeatures() {
        return this.fUseFeatures;
    }

    public void setUseFeatures(boolean use) {
        boolean old = this.fUseFeatures;
        this.fUseFeatures = use;
        if (this.isEditable()) {
            this.firePropertyChanged("useFeatures", Boolean.toString(old), Boolean.toString(this.fUseFeatures));
        }
    }

    public boolean containsPlugin(String id) {
        return this.fPlugins.containsKey(id);
    }

    public boolean containsFeature(String id) {
        IProductFeature[] features = this.getFeatures();
        int i = 0;
        while (i < features.length) {
            if (features[i].getId().equals(id)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public IWindowImages getWindowImages() {
        return this.fWindowImages;
    }

    public void setWindowImages(IWindowImages images) {
        this.fWindowImages = images;
    }

    public ISplashInfo getSplashInfo() {
        return this.fSplashInfo;
    }

    public void setSplashInfo(ISplashInfo info) {
        this.fSplashInfo = info;
    }

    public ILauncherInfo getLauncherInfo() {
        return this.fLauncherInfo;
    }

    public void setLauncherInfo(ILauncherInfo info) {
        this.fLauncherInfo = info;
    }

    public void addFeatures(IProductFeature[] features) {
        boolean modified = false;
        int i = 0;
        while (i < features.length) {
            if (features[i] != null) {
                String id = features[i].getId();
                if (this.fFeatures.contains(id)) {
                    features[i] = null;
                } else {
                    features[i].setModel(this.getModel());
                    this.fFeatures.add(features[i]);
                    modified = true;
                }
            }
            ++i;
        }
        if (modified && this.isEditable()) {
            this.fireStructureChanged(features, 1);
        }
    }

    public void removeFeatures(IProductFeature[] features) {
        boolean modified = false;
        int i = 0;
        while (i < features.length) {
            if (features[i].getId() != null) {
                this.fFeatures.remove(features[i]);
                modified = true;
            }
            ++i;
        }
        if (modified && this.isEditable()) {
            this.fireStructureChanged(features, 2);
        }
    }

    public IProductFeature[] getFeatures() {
        return this.fFeatures.toArray(new IProductFeature[this.fFeatures.size()]);
    }

    public IArgumentsInfo getLauncherArguments() {
        return this.fLauncherArgs;
    }

    public void setLauncherArguments(IArgumentsInfo info) {
        this.fLauncherArgs = info;
    }

    public IIntroInfo getIntroInfo() {
        return this.fIntroInfo;
    }

    public void setIntroInfo(IIntroInfo introInfo) {
        this.fIntroInfo = introInfo;
    }

    public IJREInfo getJREInfo() {
        return this.fJVMInfo;
    }

    public void setJREInfo(IJREInfo info) {
        this.fJVMInfo = info;
    }

    public ILicenseInfo getLicenseInfo() {
        return this.fLicenseInfo;
    }

    public void setLicenseInfo(ILicenseInfo info) {
        this.fLicenseInfo = info;
    }

    public void swap(IProductFeature feature1, IProductFeature feature2) {
        int index1 = this.fFeatures.indexOf(feature1);
        int index2 = this.fFeatures.indexOf(feature2);
        if (index1 == -1 || index2 == -1) {
            return;
        }
        this.fFeatures.set(index2, feature1);
        this.fFeatures.set(index1, feature2);
        this.fireStructureChanged(feature1, 3);
    }

    public IPluginConfiguration findPluginConfiguration(String id) {
        return (IPluginConfiguration)this.fPluginConfigurations.get(id);
    }

    public boolean includeLaunchers() {
        return this.fIncludeLaunchers;
    }

    public void setIncludeLaunchers(boolean include) {
        boolean old = this.fIncludeLaunchers;
        this.fIncludeLaunchers = include;
        if (this.isEditable()) {
            this.firePropertyChanged("includeLaunchers", Boolean.toString(old), Boolean.toString(this.fIncludeLaunchers));
        }
    }
}

