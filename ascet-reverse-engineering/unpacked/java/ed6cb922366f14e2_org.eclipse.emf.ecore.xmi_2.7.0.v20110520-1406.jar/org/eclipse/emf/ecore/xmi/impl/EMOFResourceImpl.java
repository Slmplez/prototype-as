/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.EcorePackage$Literals
 *  org.eclipse.emf.ecore.InternalEObject
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.util.ArrayList;
import java.util.ListIterator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.xmi.XMIResource;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLLoad;
import org.eclipse.emf.ecore.xmi.XMLSave;
import org.eclipse.emf.ecore.xmi.impl.EMOFHelperImpl;
import org.eclipse.emf.ecore.xmi.impl.EMOFLoadImpl;
import org.eclipse.emf.ecore.xmi.impl.EMOFSaveImpl;
import org.eclipse.emf.ecore.xmi.impl.XMIResourceImpl;

public class EMOFResourceImpl
extends XMIResourceImpl
implements XMIResource {
    public EMOFResourceImpl() {
    }

    public EMOFResourceImpl(URI uri) {
        super(uri);
    }

    protected XMLHelper createXMLHelper() {
        return null;
    }

    protected XMLLoad createXMLLoad() {
        return new EMOFLoadImpl(new EMOFHelperImpl(this));
    }

    protected XMLSave createXMLSave() {
        return new EMOFSaveImpl(new EMOFHelperImpl(this));
    }

    public String getID(EObject eObject) {
        EClass eClass;
        String id = super.getID(eObject);
        if (id == null && ((eClass = eObject.eClass()) != EcorePackage.Literals.EANNOTATION || eObject.eContainer() == null) && eClass != EcorePackage.Literals.ESTRING_TO_STRING_MAP_ENTRY) {
            id = this.makeID(eObject);
            this.getEObjectToIDMap().put(eObject, id);
        }
        return id;
    }

    protected String makeID(EObject eObject) {
        ArrayList<String> uriFragmentPath = new ArrayList<String>();
        EObject container = eObject.eContainer();
        while (container != null) {
            uriFragmentPath.add(((InternalEObject)container).eURIFragmentSegment((EStructuralFeature)eObject.eContainmentFeature(), eObject));
            eObject = container;
            container = eObject.eContainer();
        }
        StringBuffer result = new StringBuffer(eObject instanceof ENamedElement ? ((ENamedElement)eObject).getName() : "_" + Integer.toString(this.getContents().indexOf((Object)eObject)));
        ListIterator i = uriFragmentPath.listIterator(uriFragmentPath.size());
        while (i.hasPrevious()) {
            result.append('.');
            result.append((String)i.previous());
        }
        return result.toString();
    }
}

