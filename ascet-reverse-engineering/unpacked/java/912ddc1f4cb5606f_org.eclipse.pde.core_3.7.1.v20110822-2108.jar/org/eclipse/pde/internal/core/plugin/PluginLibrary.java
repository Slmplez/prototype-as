/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.ExportPackageDescription
 */
package org.eclipse.pde.internal.core.plugin;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Vector;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.pde.core.plugin.IPluginLibrary;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.IPluginObject;
import org.eclipse.pde.core.plugin.ISharedPluginModel;
import org.eclipse.pde.internal.core.ClasspathUtilCore;
import org.eclipse.pde.internal.core.ibundle.IBundlePluginModelBase;
import org.eclipse.pde.internal.core.plugin.PluginObject;
import org.eclipse.pde.internal.core.util.PDEXMLHelper;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class PluginLibrary
extends PluginObject
implements IPluginLibrary {
    private static final long serialVersionUID = 1L;
    private String[] fContentFilters;
    private boolean fExported = false;
    private String fType;

    public boolean isValid() {
        return this.fName != null;
    }

    public String[] getContentFilters() {
        String[] stringArray;
        BundleDescription desc;
        IPluginModelBase model = (IPluginModelBase)this.getModel();
        if (ClasspathUtilCore.hasBundleStructure(model) && (desc = model.getBundleDescription()) != null) {
            ArrayList<String> list = new ArrayList<String>();
            ExportPackageDescription[] exports = desc.getExportPackages();
            int i = 0;
            while (i < exports.length) {
                list.add(exports[i].getName());
                ++i;
            }
            return list.toArray(new String[list.size()]);
        }
        if (!this.isExported()) {
            return new String[0];
        }
        if (this.isFullyExported()) {
            String[] stringArray2 = new String[1];
            stringArray = stringArray2;
            stringArray2[0] = "**";
        } else {
            stringArray = this.fContentFilters;
        }
        return stringArray;
    }

    public void addContentFilter(String filter) throws CoreException {
    }

    public void removeContentFilter(String filter) throws CoreException {
    }

    public String[] getPackages() {
        return new String[0];
    }

    public boolean isExported() {
        return this.fExported;
    }

    public boolean isFullyExported() {
        return this.fExported && (this.fContentFilters == null || this.fContentFilters.length == 0);
    }

    public String getType() {
        return this.fType;
    }

    public void load(String name) {
        this.fName = name;
        this.fExported = true;
    }

    void load(Node node) {
        this.fName = this.getNodeAttribute(node, "name");
        this.fType = this.getNodeAttribute(node, "type");
        NodeList children = node.getChildNodes();
        Vector<String> exports = new Vector<String>();
        boolean all = false;
        int i = 0;
        while (i < children.getLength()) {
            String ename;
            String tag;
            Node child = children.item(i);
            if (child.getNodeType() == 1 && (tag = child.getNodeName().toLowerCase(Locale.ENGLISH)).equals("export") && (ename = this.getNodeAttribute(child, "name")) != null) {
                if ((ename = ename.trim()).equals("*")) {
                    all = true;
                } else {
                    exports.add(ename);
                }
            }
            ++i;
        }
        if (exports.size() > 0) {
            this.fContentFilters = new String[exports.size()];
            exports.copyInto(this.fContentFilters);
        }
        this.fExported = all || exports.size() > 0;
    }

    public void setContentFilters(String[] filters) throws CoreException {
        this.ensureModelEditable();
        ArrayList oldValue = this.createArrayList(this.fContentFilters);
        this.fContentFilters = filters;
        this.firePropertyChanged("contentFilters", oldValue, this.createArrayList(filters));
    }

    public void setPackages(String[] packages) throws CoreException {
    }

    public void setExported(boolean value) throws CoreException {
        this.ensureModelEditable();
        Boolean oldValue = new Boolean(this.fExported);
        this.fExported = value;
        this.firePropertyChanged("export", oldValue, new Boolean(value));
    }

    public void setType(String type) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fType;
        this.fType = type;
        this.firePropertyChanged("type", oldValue, type);
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("contentFilters")) {
            ArrayList list = (ArrayList)newValue;
            if (list != null) {
                this.setContentFilters(list.toArray(new String[list.size()]));
            } else {
                this.setContentFilters(null);
            }
            return;
        }
        if (name.equals("export")) {
            this.setExported((Boolean)newValue);
            return;
        }
        if (name.equals("type")) {
            this.setType(newValue != null ? newValue.toString() : null);
            return;
        }
        super.restoreProperty(name, oldValue, newValue);
    }

    private ArrayList createArrayList(String[] array) {
        if (array == null) {
            return null;
        }
        ArrayList<String> list = new ArrayList<String>();
        int i = 0;
        while (i < array.length) {
            list.add(array[i]);
            ++i;
        }
        return list;
    }

    public void write(String indent, PrintWriter writer) {
        IPluginModelBase modelBase = this.getPluginModel();
        if (!(modelBase instanceof IBundlePluginModelBase)) {
            writer.print(indent);
            writer.print("<library name=\"" + PDEXMLHelper.getWritableString(this.getName()) + "\"");
            if (this.fType != null) {
                writer.print(" type=\"" + this.fType + "\"");
            }
            if (!this.isExported()) {
                writer.println("/>");
            } else {
                writer.println(">");
                String indent2 = String.valueOf(indent) + "   ";
                if (this.isExported()) {
                    if (this.isFullyExported()) {
                        writer.println(String.valueOf(indent2) + "<export name=\"*\"/>");
                    } else {
                        int i = 0;
                        while (i < this.fContentFilters.length) {
                            writer.println(String.valueOf(indent2) + "<export name=\"" + this.fContentFilters[i] + "\"/>");
                            ++i;
                        }
                    }
                }
                writer.println(String.valueOf(indent) + "</library>");
            }
        } else {
            writer.print(PDEXMLHelper.getWritableString(this.getName()));
        }
    }

    public void reconnect(ISharedPluginModel model, IPluginObject parent) {
        super.reconnect(model, parent);
    }

    public void writeDelimeter(PrintWriter writer) {
        writer.println(',');
        writer.print(' ');
    }
}

