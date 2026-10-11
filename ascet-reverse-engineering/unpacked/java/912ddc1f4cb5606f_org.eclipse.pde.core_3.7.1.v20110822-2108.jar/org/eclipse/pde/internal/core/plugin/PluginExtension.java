/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 */
package org.eclipse.pde.internal.core.plugin;

import java.io.PrintWriter;
import java.util.ArrayList;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.pde.core.plugin.IPluginElement;
import org.eclipse.pde.core.plugin.IPluginExtension;
import org.eclipse.pde.core.plugin.IPluginObject;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.plugin.PluginElement;
import org.eclipse.pde.internal.core.plugin.PluginParent;
import org.eclipse.pde.internal.core.schema.SchemaRegistry;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class PluginExtension
extends PluginParent
implements IPluginExtension {
    private static final long serialVersionUID = 1L;
    protected String fPoint;
    private transient ISchema schema;
    private IExtension fExtension = null;

    public PluginExtension() {
    }

    public PluginExtension(IExtension extension) {
        this.fExtension = extension;
    }

    public String getPoint() {
        if (this.fPoint == null && this.fExtension != null) {
            this.fPoint = this.fExtension.getExtensionPointUniqueIdentifier();
        }
        return this.fPoint;
    }

    public boolean isValid() {
        return this.getPoint() != null;
    }

    public Object getSchema() {
        if (this.schema == null) {
            SchemaRegistry registry = PDECore.getDefault().getSchemaRegistry();
            this.schema = registry.getSchema(this.fPoint);
        } else if (this.schema.isDisposed()) {
            this.schema = null;
        }
        return this.schema;
    }

    void load(Node node) {
        this.fID = this.getNodeAttribute(node, "id");
        this.fName = this.getNodeAttribute(node, "name");
        this.fPoint = this.getNodeAttribute(node, "point");
        if (this.fChildren == null) {
            this.fChildren = new ArrayList();
        }
        NodeList children = node.getChildNodes();
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 1) {
                PluginElement childElement = new PluginElement();
                childElement.setModel(this.getModel());
                childElement.setInTheModel(true);
                childElement.setParent(this);
                this.fChildren.add(childElement);
                childElement.load(child);
            }
            ++i;
        }
        this.fStartLine = Integer.parseInt(this.getNodeAttribute(node, "line"));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (obj instanceof IPluginExtension) {
            IResource res;
            IPluginExtension target = (IPluginExtension)obj;
            if (target.getModel().getClass() == this.getModel().getClass() ? !target.getModel().equals(this.getModel()) : ((res = this.getModel().getUnderlyingResource()) == null ? !target.getModel().getInstallLocation().equals(this.getModel().getInstallLocation()) : !res.equals((Object)target.getModel().getUnderlyingResource()))) {
                return false;
            }
            if (!this.stringEqualWithNull(target.getId(), this.getId())) {
                return false;
            }
            if (!this.stringEqualWithNull(target.getPoint(), this.getPoint())) {
                return false;
            }
            if (!this.nameEqual(target.getName())) {
                return false;
            }
            return super.equals(obj);
        }
        return false;
    }

    private boolean nameEqual(String targetName) {
        if (this.fExtension != null && targetName == null) {
            targetName = "";
        }
        return this.stringEqualWithNull(targetName, this.getName());
    }

    public void setPoint(String point) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fPoint;
        this.fPoint = point;
        this.firePropertyChanged("point", oldValue, point);
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("point")) {
            this.setPoint(newValue != null ? newValue.toString() : null);
            return;
        }
        super.restoreProperty(name, oldValue, newValue);
    }

    public String toString() {
        if (this.getName() != null) {
            return this.getName();
        }
        return this.getPoint();
    }

    public void write(String indent, PrintWriter writer) {
        writer.print(indent);
        writer.print("<extension");
        String attIndent = String.valueOf(indent) + "      ";
        if (this.getId() != null) {
            writer.println();
            writer.print(String.valueOf(attIndent) + "id=\"" + this.getId() + "\"");
        }
        if (this.getName() != null) {
            writer.println();
            writer.print(String.valueOf(attIndent) + "name=\"" + this.getWritableString(this.getName()) + "\"");
        }
        if (this.getPoint() != null) {
            writer.println();
            writer.print(String.valueOf(attIndent) + "point=\"" + this.getPoint() + "\"");
        }
        writer.println(">");
        IPluginObject[] children = this.getChildren();
        int i = 0;
        while (i < children.length) {
            IPluginElement child = (IPluginElement)children[i];
            child.write(String.valueOf(indent) + "   ", writer);
            ++i;
        }
        writer.println(String.valueOf(indent) + "</extension>");
    }

    public String getName() {
        if (this.fName == null && this.fExtension != null) {
            this.fName = this.fExtension.getLabel();
        }
        return this.fName;
    }

    public String getId() {
        if (this.fID == null && this.fExtension != null) {
            String sub;
            String pluginId;
            this.fID = this.fExtension.getUniqueIdentifier();
            if (this.fID != null && this.fID.startsWith(pluginId = this.getPluginBase().getId()) && (sub = this.fID.substring(pluginId.length())).lastIndexOf(46) == 0) {
                this.fID = sub.substring(1);
            }
        }
        return this.fID;
    }

    protected ArrayList getChildrenList() {
        if (this.fChildren == null) {
            this.fChildren = new ArrayList();
            if (this.fExtension != null && this.fExtension != null) {
                IConfigurationElement[] elements = this.fExtension.getConfigurationElements();
                int i = 0;
                while (i < elements.length) {
                    PluginElement element = new PluginElement(elements[i]);
                    element.setModel(this.getModel());
                    element.setParent(this);
                    this.fChildren.add(element);
                    ++i;
                }
            }
        }
        return this.fChildren;
    }
}

