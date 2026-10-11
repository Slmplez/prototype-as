/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.pde.internal.core.site;

import java.io.PrintWriter;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.Status;
import org.eclipse.pde.core.ModelChangedEvent;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.isite.ISite;
import org.eclipse.pde.internal.core.isite.ISiteModel;
import org.eclipse.pde.internal.core.isite.ISiteObject;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

public abstract class SiteObject
extends PlatformObject
implements ISiteObject {
    private static final long serialVersionUID = 1L;
    transient ISiteModel model;
    transient ISiteObject parent;
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
            this.throwCoreException(PDECoreMessages.SiteObject_readOnlyChange);
        }
    }

    protected void firePropertyChanged(String property, Object oldValue, Object newValue) {
        this.firePropertyChanged(this, property, oldValue, newValue);
    }

    protected void firePropertyChanged(ISiteObject object, String property, Object oldValue, Object newValue) {
        if (this.model.isEditable()) {
            this.model.fireModelObjectChanged(object, property, oldValue, newValue);
        }
    }

    protected void fireStructureChanged(ISiteObject child, int changeType) {
        this.fireStructureChanged(new ISiteObject[]{child}, changeType);
    }

    protected void fireStructureChanged(ISiteObject[] children, int changeType) {
        ISiteModel model = this.getModel();
        if (model.isEditable()) {
            model.fireModelChanged(new ModelChangedEvent(model, changeType, children, null));
        }
    }

    public ISite getSite() {
        return this.model.getSite();
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

    public ISiteModel getModel() {
        return this.model;
    }

    String getNodeAttribute(Node node, String name) {
        NamedNodeMap atts = node.getAttributes();
        Node attribute = null;
        if (atts != null) {
            attribute = atts.getNamedItem(name);
        }
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

    public ISiteObject getParent() {
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

    public static String getWritableString(String source) {
        if (source == null) {
            return "";
        }
        StringBuffer buf = new StringBuffer();
        int i = 0;
        while (i < source.length()) {
            char c = source.charAt(i);
            switch (c) {
                case '&': {
                    buf.append("&amp;");
                    break;
                }
                case '<': {
                    buf.append("&lt;");
                    break;
                }
                case '>': {
                    buf.append("&gt;");
                    break;
                }
                case '\'': {
                    buf.append("&apos;");
                    break;
                }
                case '\"': {
                    buf.append("&quot;");
                    break;
                }
                default: {
                    buf.append(c);
                }
            }
            ++i;
        }
        return buf.toString();
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("label")) {
            this.setLabel(newValue != null ? newValue.toString() : null);
        }
    }

    public void write(String indent, PrintWriter writer) {
    }

    public void setModel(ISiteModel model) {
        this.model = model;
    }

    public void setParent(ISiteObject parent) {
        this.parent = parent;
    }
}

