/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xmi.impl;

import org.eclipse.emf.ecore.xmi.NameInfo;

public class NameInfoImpl
implements NameInfo {
    protected String localPart;
    protected String qualifiedName;
    protected String namespaceURI;

    public String getLocalPart() {
        return this.localPart;
    }

    public String getNamespaceURI() {
        return this.namespaceURI;
    }

    public String getQualifiedName() {
        return this.qualifiedName;
    }

    public void setLocalPart(String name) {
        this.localPart = name;
    }

    public void setNamespaceURI(String uri) {
        this.namespaceURI = uri;
    }

    public void setQualifiedName(String name) {
        this.qualifiedName = name;
    }
}

