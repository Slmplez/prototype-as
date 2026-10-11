/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.ManifestElement
 *  org.osgi.framework.BundleException
 */
package org.eclipse.pde.internal.core.text.bundle;

import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.text.bundle.ManifestHeader;
import org.eclipse.pde.internal.core.text.bundle.PDEManifestElement;
import org.osgi.framework.BundleException;

public class SingleManifestHeader
extends ManifestHeader {
    private static final long serialVersionUID = 1L;
    private PDEManifestElement fElement;

    public SingleManifestHeader(String name, String value, IBundle bundle, String lineDelimiter) {
        super(name, value, bundle, lineDelimiter);
    }

    protected void processValue(String value) {
        try {
            ManifestElement[] elements = ManifestElement.parseHeader((String)this.getName(), (String)value);
            if (elements.length > 0) {
                this.fElement = new PDEManifestElement((ManifestHeader)this, elements[0]);
            }
        }
        catch (BundleException bundleException) {}
        if (this.fElement == null) {
            this.fElement = new PDEManifestElement((ManifestHeader)this, "");
        }
        this.fValue = value;
    }

    public void setAttribute(String key, String value) {
        this.fElement.setAttribute(key, value);
        this.update();
    }

    public void setDirective(String key, String value) {
        this.fElement.setDirective(key, value);
        this.update();
    }

    public void setMainComponent(String value) {
        if (value == null) {
            this.fElement.setValueComponents(null);
        } else {
            this.fElement.setValueComponents(new String[]{value});
        }
        this.update();
    }

    public String getAttribute(String key) {
        return this.fElement.getAttribute(key);
    }

    public String getDirective(String key) {
        return this.fElement.getDirective(key);
    }

    public String getMainComponent() {
        return this.fElement.getValue();
    }

    public void update() {
        this.update(true);
    }

    public void update(boolean notify) {
        String old = this.fValue;
        this.fValue = this.fElement.write();
        if (notify) {
            this.fBundle.getModel().fireModelObjectChanged(this, this.fName, old, this.fValue);
        }
    }
}

