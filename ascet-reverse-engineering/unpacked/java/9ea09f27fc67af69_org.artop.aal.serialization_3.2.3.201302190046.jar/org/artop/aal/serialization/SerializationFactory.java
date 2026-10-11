/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.xmi.XMLHelper
 *  org.eclipse.emf.ecore.xmi.XMLLoad
 *  org.eclipse.emf.ecore.xmi.XMLResource
 *  org.eclipse.emf.ecore.xmi.XMLSave
 */
package org.artop.aal.serialization;

import org.artop.aal.serialization.internal.AutosarXMLHelperImpl;
import org.artop.aal.serialization.internal.AutosarXMLLoadImpl;
import org.artop.aal.serialization.internal.AutosarXMLSaveImpl;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLLoad;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.XMLSave;

public class SerializationFactory {
    public static XMLLoad createXMLLoad(EPackage basePackage, XMLResource resource) {
        return new AutosarXMLLoadImpl(SerializationFactory.createXMLHelper(resource), basePackage);
    }

    public static XMLSave createXMLSave(XMLResource resource) {
        return new AutosarXMLSaveImpl(SerializationFactory.createXMLHelper(resource));
    }

    public static XMLHelper createXMLHelper(XMLResource resource) {
        return new AutosarXMLHelperImpl(resource);
    }
}

