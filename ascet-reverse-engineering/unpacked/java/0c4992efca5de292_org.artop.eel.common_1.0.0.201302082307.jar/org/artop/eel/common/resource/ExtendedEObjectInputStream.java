/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.resource.impl.BinaryResourceImpl$EObjectInputStream
 *  org.eclipse.emf.ecore.resource.impl.BinaryResourceImpl$EObjectInputStream$EClassData
 *  org.eclipse.emf.ecore.resource.impl.BinaryResourceImpl$EObjectInputStream$EStructuralFeatureData
 */
package org.artop.eel.common.resource;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.resource.impl.BinaryResourceImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ExtendedEObjectInputStream
extends BinaryResourceImpl.EObjectInputStream {
    protected boolean shouldCheckTransientProxy = false;

    public ExtendedEObjectInputStream(InputStream inputStream, Map<?, ?> options) throws IOException {
        this(inputStream, options, options != null && options.containsKey("TRANSIENT_PROXY") ? (Boolean)options.get("TRANSIENT_PROXY") : false);
    }

    public ExtendedEObjectInputStream(InputStream inputStream, Map<?, ?> options, boolean shouldCheckTransientProxy) throws IOException {
        super(inputStream, options);
        this.shouldCheckTransientProxy = shouldCheckTransientProxy;
    }

    public InternalEObject loadEObject() throws IOException {
        int id = this.readCompressedInt();
        if (id == -1) {
            return null;
        }
        if (this.eObjectList.size() <= id) {
            int featureID;
            BinaryResourceImpl.EObjectInputStream.EClassData eClassData = this.readEClass();
            InternalEObject internalEObject = (InternalEObject)eClassData.eFactory.create(eClassData.eClass);
            this.eObjectList.add(internalEObject);
            HashMap<String, String> destValues = new HashMap<String, String>();
            this.preLoadFeatureValues(internalEObject, destValues);
            while ((featureID = this.readCompressedInt() - 1) != -1) {
                if (featureID == -2) {
                    internalEObject.eSetProxyURI(this.readURI());
                    if (this.shouldCheckTransientProxy && (this.style & 4) != 0) continue;
                    break;
                }
                BinaryResourceImpl.EObjectInputStream.EStructuralFeatureData eStructuralFeatureData = this.getEStructuralFeatureData(eClassData, featureID);
                this.loadFeatureValue(internalEObject, eStructuralFeatureData);
            }
            this.postLoadFeatureValues(internalEObject, destValues);
            return internalEObject;
        }
        return (InternalEObject)this.eObjectList.get(id);
    }

    protected void preLoadFeatureValues(InternalEObject internalEObject, Map<String, String> destValues) throws IOException {
    }

    protected void postLoadFeatureValues(InternalEObject internalEObject, Map<String, String> destValues) throws IOException {
    }
}

