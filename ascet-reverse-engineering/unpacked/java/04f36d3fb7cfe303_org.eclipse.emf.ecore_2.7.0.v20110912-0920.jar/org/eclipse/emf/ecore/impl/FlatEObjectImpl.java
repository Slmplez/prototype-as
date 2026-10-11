/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.impl;

import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.impl.BasicEObjectImpl;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.util.EContentsEList;
import org.eclipse.emf.ecore.util.ECrossReferenceEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FlatEObjectImpl
extends EObjectImpl {
    protected URI eProxyURI;
    protected EList<EObject> eContents;
    protected EList<EObject> eCrossReferences;

    protected FlatEObjectImpl() {
    }

    @Override
    protected BasicEObjectImpl.EPropertiesHolder eProperties() {
        if (this.eProperties == null) {
            this.eProperties = new BasicEObjectImpl.EPropertiesHolderBaseImpl();
        }
        return this.eProperties;
    }

    @Override
    public boolean eIsProxy() {
        return this.eProxyURI != null;
    }

    @Override
    public URI eProxyURI() {
        return this.eProxyURI;
    }

    @Override
    public void eSetProxyURI(URI uri) {
        this.eProxyURI = uri;
    }

    @Override
    public EList<EObject> eContents() {
        if (this.eContents == null) {
            this.eContents = EContentsEList.createEContentsEList(this);
        }
        return this.eContents;
    }

    @Override
    public EList<EObject> eCrossReferences() {
        if (this.eCrossReferences == null) {
            this.eCrossReferences = ECrossReferenceEList.createECrossReferenceEList(this);
        }
        return this.eCrossReferences;
    }
}

