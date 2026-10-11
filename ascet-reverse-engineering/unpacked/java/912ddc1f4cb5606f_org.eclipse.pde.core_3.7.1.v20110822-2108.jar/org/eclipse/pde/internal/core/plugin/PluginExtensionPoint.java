/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IExtensionPoint
 */
package org.eclipse.pde.internal.core.plugin;

import java.io.PrintWriter;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.pde.core.plugin.IFragment;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginExtensionPoint;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.internal.core.plugin.IdentifiablePluginObject;
import org.w3c.dom.Node;

public class PluginExtensionPoint
extends IdentifiablePluginObject
implements IPluginExtensionPoint {
    private static final long serialVersionUID = 1L;
    private IExtensionPoint fPoint = null;
    protected String fSchema;

    public PluginExtensionPoint() {
    }

    public PluginExtensionPoint(IExtensionPoint point) {
        this.fPoint = point;
    }

    public boolean isValid() {
        return this.getId() != null && this.getName() != null;
    }

    public String getFullId() {
        if (this.fPoint != null) {
            return this.fPoint.getUniqueIdentifier();
        }
        String pointId = this.getId();
        IPluginModelBase modelBase = this.getPluginModel();
        IPluginBase pluginBase = modelBase.getPluginBase();
        String schemaVersion = pluginBase.getSchemaVersion();
        if (schemaVersion != null && Double.parseDouble(schemaVersion) >= 3.2 && pointId.indexOf(46) > 0) {
            return pointId;
        }
        if (pluginBase instanceof IFragment) {
            return String.valueOf(((IFragment)pluginBase).getPluginId()) + '.' + pointId;
        }
        return String.valueOf(pluginBase.getId()) + '.' + pointId;
    }

    public String getSchema() {
        if (this.fSchema == null && this.fPoint != null) {
            this.fSchema = this.fPoint.getSchemaReference();
        }
        return this.fSchema;
    }

    void load(Node node) {
        this.fID = this.getNodeAttribute(node, "id");
        this.fName = this.getNodeAttribute(node, "name");
        this.fSchema = this.getNodeAttribute(node, "schema");
        this.fStartLine = Integer.parseInt(this.getNodeAttribute(node, "line"));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof IPluginExtensionPoint) {
            IPluginExtensionPoint target = (IPluginExtensionPoint)obj;
            if (target.getModel().equals(this.getModel())) {
                return false;
            }
            if (this.stringEqualWithNull(target.getFullId(), this.getId()) && this.stringEqualWithNull(target.getName(), this.getName()) && this.stringEqualWithNull(target.getSchema(), this.getSchema())) {
                return true;
            }
        }
        return false;
    }

    public void setSchema(String newSchema) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fSchema;
        this.fSchema = newSchema;
        this.firePropertyChanged("schema", oldValue, this.fSchema);
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("schema")) {
            this.setSchema(newValue != null ? newValue.toString() : null);
            return;
        }
        super.restoreProperty(name, oldValue, newValue);
    }

    public void write(String indent, PrintWriter writer) {
        writer.print(indent);
        writer.print("<extension-point");
        if (this.getId() != null) {
            writer.print(" id=\"" + this.getWritableString(this.getId()) + "\"");
        }
        if (this.getName() != null) {
            writer.print(" name=\"" + this.getWritableString(this.getName()) + "\"");
        }
        if (this.getSchema() != null) {
            writer.print(" schema=\"" + this.getSchema() + "\"");
        }
        writer.println("/>");
    }

    public String getName() {
        if (this.fName == null) {
            this.fName = this.fPoint.getLabel();
        }
        return this.fName;
    }

    public String getId() {
        if (this.fID == null) {
            String sub;
            String pluginId;
            this.fID = this.fPoint.getUniqueIdentifier();
            if (this.fID != null && this.fID.startsWith(pluginId = this.getPluginBase().getId()) && (sub = this.fID.substring(pluginId.length())).lastIndexOf(46) == 0) {
                this.fID = sub.substring(1);
            }
        }
        return this.fID;
    }
}

