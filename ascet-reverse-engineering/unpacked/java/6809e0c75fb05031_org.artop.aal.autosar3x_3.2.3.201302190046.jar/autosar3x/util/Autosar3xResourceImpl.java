/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.resource.impl.AutosarXMLResourceImpl
 *  org.artop.aal.serialization.SerializationFactory
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.xmi.XMLHelper
 *  org.eclipse.emf.ecore.xmi.XMLLoad
 *  org.eclipse.emf.ecore.xmi.XMLResource
 *  org.eclipse.emf.ecore.xmi.XMLSave
 */
package autosar3x.util;

import autosar3x.util.Autosar3xPackage;
import org.artop.aal.common.resource.impl.AutosarXMLResourceImpl;
import org.artop.aal.serialization.SerializationFactory;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLLoad;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.XMLSave;

public class Autosar3xResourceImpl
extends AutosarXMLResourceImpl {
    public Autosar3xResourceImpl(URI uri) {
        super(uri);
    }

    protected XMLLoad createXMLLoad() {
        return SerializationFactory.createXMLLoad((EPackage)Autosar3xPackage.eINSTANCE, (XMLResource)this);
    }

    protected XMLSave createXMLSave() {
        return SerializationFactory.createXMLSave((XMLResource)this);
    }

    protected XMLHelper createXMLHelper() {
        return SerializationFactory.createXMLHelper((XMLResource)this);
    }
}

