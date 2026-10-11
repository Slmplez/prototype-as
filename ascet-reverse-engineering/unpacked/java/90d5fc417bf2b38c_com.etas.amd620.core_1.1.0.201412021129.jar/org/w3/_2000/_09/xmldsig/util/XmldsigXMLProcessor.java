/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.resource.Resource$Factory
 *  org.eclipse.emf.ecore.xmi.util.XMLProcessor
 */
package org.w3._2000._09.xmldsig.util;

import java.util.Map;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.xmi.util.XMLProcessor;
import org.w3._2000._09.xmldsig.XmldsigPackage;
import org.w3._2000._09.xmldsig.util.XmldsigResourceFactoryImpl;

public class XmldsigXMLProcessor
extends XMLProcessor {
    public XmldsigXMLProcessor() {
        super(EPackage.Registry.INSTANCE);
        XmldsigPackage.eINSTANCE.eClass();
    }

    protected Map<String, Resource.Factory> getRegistrations() {
        if (this.registrations == null) {
            super.getRegistrations();
            this.registrations.put("xml", new XmldsigResourceFactoryImpl());
            this.registrations.put("*", new XmldsigResourceFactoryImpl());
        }
        return this.registrations;
    }
}

