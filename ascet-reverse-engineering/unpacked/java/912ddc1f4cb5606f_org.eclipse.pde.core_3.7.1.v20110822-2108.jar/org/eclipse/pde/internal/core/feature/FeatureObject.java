/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.pde.internal.core.feature;

import java.io.PrintWriter;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.Status;
import org.eclipse.pde.core.ModelChangedEvent;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.ifeature.IFeature;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;
import org.eclipse.pde.internal.core.ifeature.IFeatureObject;
import org.eclipse.pde.internal.core.util.PDEXMLHelper;
import org.w3c.dom.Node;

public abstract class FeatureObject
extends PlatformObject
implements IFeatureObject {
    private static final long serialVersionUID = 1L;
    transient IFeatureModel model;
    transient IFeatureObject parent;
    protected String label;
    boolean inTheModel;

    void setInTheModel(boolean value) {
        this.inTheModel = value;
    }

    public boolean isInTheModel() {
        return this.inTheModel;
    }

    protected void ensureModelEditable() throws CoreException {
        if (!this.model.isEditable()) {
            this.throwCoreException(PDECoreMessages.FeatureObject_readOnlyChange);
        }
    }

    protected void firePropertyChanged(String property, Object oldValue, Object newValue) {
        this.firePropertyChanged(this, property, oldValue, newValue);
    }

    protected void firePropertyChanged(IFeatureObject object, String property, Object oldValue, Object newValue) {
        if (this.model.isEditable()) {
            IFeatureModel provider = this.model;
            provider.fireModelObjectChanged(object, property, oldValue, newValue);
        }
    }

    protected void fireStructureChanged(IFeatureObject child, int changeType) {
        this.fireStructureChanged(new IFeatureObject[]{child}, changeType);
    }

    protected void fireStructureChanged(IFeatureObject[] children, int changeType) {
        IFeatureModel model = this.getModel();
        if (model.isEditable()) {
            IFeatureModel provider = model;
            provider.fireModelChanged(new ModelChangedEvent(provider, changeType, children, null));
        }
    }

    public IFeature getFeature() {
        return this.model.getFeature();
    }

    public String getLabel() {
        return this.label;
    }

    public String getTranslatableLabel() {
        if (this.label == null) {
            return "";
        }
        return this.model.getResourceString(this.label);
    }

    public IFeatureModel getModel() {
        return this.model;
    }

    String getNodeAttribute(Node node, String name) {
        Node attribute = node.getAttributes().getNamedItem(name);
        if (attribute != null) {
            return attribute.getNodeValue();
        }
        return null;
    }

    int getIntegerAttribute(Node node, String name) {
        String value = this.getNodeAttribute(node, name);
        if (value != null) {
            try {
                return Integer.parseInt(value);
            }
            catch (NumberFormatException numberFormatException) {}
        }
        return 0;
    }

    boolean getBooleanAttribute(Node node, String name) {
        String value = this.getNodeAttribute(node, name);
        if (value != null) {
            return value.equalsIgnoreCase("true");
        }
        return false;
    }

    protected String getNormalizedText(String source) {
        String result = source.replace('\t', ' ');
        result = result.trim();
        return result;
    }

    public IFeatureObject getParent() {
        return this.parent;
    }

    protected void parse(Node node) {
        this.label = this.getNodeAttribute(node, "label");
    }

    protected void reset() {
        this.label = null;
    }

    public void setLabel(String newLabel) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.label;
        this.label = newLabel;
        this.firePropertyChanged("label", oldValue, newLabel);
    }

    protected void throwCoreException(String message) throws CoreException {
        Status status = new Status(4, "org.eclipse.pde.core", 0, message, null);
        CoreException ce = new CoreException((IStatus)status);
        ce.fillInStackTrace();
        throw ce;
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("label")) {
            this.setLabel(newValue != null ? newValue.toString() : null);
        }
    }

    public void write(String indent, PrintWriter writer) {
    }

    public void setModel(IFeatureModel model) {
        this.model = model;
    }

    public void setParent(IFeatureObject parent) {
        this.parent = parent;
    }

    protected String getWritableString(String source) {
        return PDEXMLHelper.getWritableString(source);
    }
}

