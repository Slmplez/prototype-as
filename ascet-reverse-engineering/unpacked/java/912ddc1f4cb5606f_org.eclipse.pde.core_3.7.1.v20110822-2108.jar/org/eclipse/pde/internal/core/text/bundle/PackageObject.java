/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.ManifestElement
 */
package org.eclipse.pde.internal.core.text.bundle;

import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.pde.internal.core.ibundle.IBundleModel;
import org.eclipse.pde.internal.core.text.bundle.ManifestHeader;
import org.eclipse.pde.internal.core.text.bundle.PDEManifestElement;

public class PackageObject
extends PDEManifestElement {
    private static final long serialVersionUID = 1L;
    protected transient String fVersionAttribute;

    public PackageObject(ManifestHeader header, ManifestElement element, String versionAttribute) {
        super(header, element);
        this.fVersionAttribute = versionAttribute;
    }

    public PackageObject(ManifestHeader header, String name, String version, String versionAttribute) {
        super(header, name.length() > 0 ? name : ".");
        this.fVersionAttribute = versionAttribute;
        if (version != null) {
            this.addAttribute(this.fVersionAttribute, version);
        }
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer(this.getValue());
        String version = this.getVersion();
        if (version != null && version.length() > 0) {
            buffer.append(" ");
            boolean wrap = Character.isDigit(version.charAt(0));
            if (wrap) {
                buffer.append("(");
            }
            buffer.append(version);
            if (wrap) {
                buffer.append(")");
            }
        }
        return buffer.toString();
    }

    public String getVersion() {
        String[] version = this.getAttributes(this.fVersionAttribute);
        if (version == null || version.length == 0) {
            return null;
        }
        if (version.length == 1) {
            return version[0];
        }
        return String.valueOf(version[0]) + ',' + version[1];
    }

    public String getName() {
        return this.getValue();
    }

    public void setName(String name) {
        this.setValueComponents(new String[]{name});
    }

    public void setVersion(String version) {
        String old = this.getVersion();
        this.setAttribute(this.fVersionAttribute, version);
        this.fHeader.update();
        this.firePropertyChanged(this, this.fVersionAttribute, old, version);
    }

    public void reconnect(IBundleModel model, ManifestHeader header, String versionAttribute) {
        super.reconnect(model, header);
        this.fVersionAttribute = versionAttribute;
    }
}

