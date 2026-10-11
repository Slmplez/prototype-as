/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xmi.impl;

import org.eclipse.emf.ecore.xmi.XMLResource;

public class XMLInfoImpl
implements XMLResource.XMLInfo {
    protected int xmlRepresentation = -1;
    protected String targetNamespace;
    protected String name;

    public int getXMLRepresentation() {
        return this.xmlRepresentation;
    }

    public void setXMLRepresentation(int representation) {
        this.xmlRepresentation = representation;
    }

    public String getTargetNamespace() {
        return this.targetNamespace;
    }

    public void setTargetNamespace(String namespaceURI) {
        this.targetNamespace = namespaceURI;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }
}

