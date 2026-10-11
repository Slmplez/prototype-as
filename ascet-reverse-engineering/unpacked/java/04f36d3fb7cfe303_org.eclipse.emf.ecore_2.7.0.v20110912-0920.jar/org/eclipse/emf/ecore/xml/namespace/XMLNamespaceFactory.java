/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xml.namespace;

import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.xml.namespace.XMLNamespaceDocumentRoot;
import org.eclipse.emf.ecore.xml.namespace.XMLNamespacePackage;
import org.eclipse.emf.ecore.xml.namespace.impl.XMLNamespaceFactoryImpl;

public interface XMLNamespaceFactory
extends EFactory {
    public static final XMLNamespaceFactory eINSTANCE = XMLNamespaceFactoryImpl.init();

    public XMLNamespaceDocumentRoot createXMLNamespaceDocumentRoot();

    public XMLNamespacePackage getXMLNamespacePackage();
}

