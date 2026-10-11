/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.util.Map;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.xmi.XMIResource;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLLoad;
import org.eclipse.emf.ecore.xmi.XMLSave;
import org.eclipse.emf.ecore.xmi.impl.XMIHelperImpl;
import org.eclipse.emf.ecore.xmi.impl.XMILoadImpl;
import org.eclipse.emf.ecore.xmi.impl.XMISaveImpl;
import org.eclipse.emf.ecore.xmi.impl.XMLHelperImpl;
import org.eclipse.emf.ecore.xmi.impl.XMLLoadImpl;
import org.eclipse.emf.ecore.xmi.impl.XMLResourceImpl;
import org.eclipse.emf.ecore.xmi.impl.XMLSaveImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class XMIResourceImpl
extends XMLResourceImpl
implements XMIResource {
    String version = "2.0";

    public XMIResourceImpl() {
    }

    public XMIResourceImpl(URI uri) {
        super(uri);
    }

    @Override
    protected XMLHelper createXMLHelper() {
        return new XMIHelperImpl(this);
    }

    @Override
    protected XMLLoad createXMLLoad() {
        return new XMILoadImpl(this.createXMLHelper());
    }

    @Override
    protected XMLLoad createXMLLoad(Map<?, ?> options) {
        if (options != null && Boolean.TRUE.equals(options.get("SUPPRESS_XMI"))) {
            return new XMLLoadImpl(new XMLHelperImpl(this));
        }
        return super.createXMLLoad(options);
    }

    @Override
    protected XMLSave createXMLSave() {
        return new XMISaveImpl(this.createXMLHelper());
    }

    @Override
    protected XMLSave createXMLSave(Map<?, ?> options) {
        if (options != null && Boolean.TRUE.equals(options.get("SUPPRESS_XMI"))) {
            return new XMLSaveImpl(new XMLHelperImpl(this));
        }
        return super.createXMLSave(options);
    }

    @Override
    protected boolean useIDs() {
        return true;
    }

    @Override
    public String getXMIVersion() {
        return this.version;
    }

    @Override
    public void setXMIVersion(String version) {
        this.version = version;
    }

    @Override
    public String getXMINamespace() {
        if (this.version.equals("2.0")) {
            return "http://www.omg.org/XMI";
        }
        return "http://schema.omg.org/spec/XMI/" + this.version;
    }

    @Override
    public void setXMINamespace(String namespace) {
        if (namespace.startsWith("http://schema.omg.org/spec/XMI/")) {
            this.setXMIVersion(namespace.substring("http://schema.omg.org/spec/XMI/".length()));
        } else if (namespace.equals("http://www.omg.org/XMI")) {
            this.setXMIVersion("2.0");
        } else {
            throw new IllegalArgumentException("Invalid XMI namespace: '" + namespace + "'");
        }
    }
}

