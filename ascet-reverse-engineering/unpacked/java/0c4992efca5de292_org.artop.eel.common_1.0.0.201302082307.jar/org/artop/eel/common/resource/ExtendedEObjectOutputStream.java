/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.resource.Resource$Internal
 *  org.eclipse.emf.ecore.resource.impl.BinaryResourceImpl$BinaryIO$FeatureKind
 *  org.eclipse.emf.ecore.resource.impl.BinaryResourceImpl$BinaryIO$Version
 *  org.eclipse.emf.ecore.resource.impl.BinaryResourceImpl$EObjectOutputStream
 *  org.eclipse.emf.ecore.resource.impl.BinaryResourceImpl$EObjectOutputStream$Check
 *  org.eclipse.emf.ecore.resource.impl.BinaryResourceImpl$EObjectOutputStream$EClassData
 *  org.eclipse.emf.ecore.resource.impl.BinaryResourceImpl$EObjectOutputStream$EStructuralFeatureData
 */
package org.artop.eel.common.resource;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.impl.BinaryResourceImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ExtendedEObjectOutputStream
extends BinaryResourceImpl.EObjectOutputStream {
    protected boolean shouldCheckTransientProxy = false;

    public ExtendedEObjectOutputStream(OutputStream outputStream, Map<?, ?> options) throws IOException {
        this(outputStream, options, options != null && options.containsKey("VERSION") ? (BinaryResourceImpl.BinaryIO.Version)options.get("VERSION") : BinaryResourceImpl.BinaryIO.Version.VERSION_1_0);
    }

    public ExtendedEObjectOutputStream(OutputStream outputStream, Map<?, ?> options, BinaryResourceImpl.BinaryIO.Version version) throws IOException {
        this(outputStream, options, version, version.ordinal() > 0 ? ExtendedEObjectOutputStream.getStyle(options) : 1);
    }

    public ExtendedEObjectOutputStream(OutputStream outputStream, Map<?, ?> options, BinaryResourceImpl.BinaryIO.Version version, int style) throws IOException {
        this(outputStream, options, version, style, options != null && options.containsKey("TRANSIENT_PROXY") ? (Boolean)options.get("TRANSIENT_PROXY") : false);
    }

    public ExtendedEObjectOutputStream(OutputStream outputStream, Map<?, ?> options, BinaryResourceImpl.BinaryIO.Version version, int style, boolean shouldCheckTransientProxy) throws IOException {
        super(outputStream, options, version, style);
        this.shouldCheckTransientProxy = shouldCheckTransientProxy;
    }

    public void saveEObject(InternalEObject internalEObject, BinaryResourceImpl.EObjectOutputStream.Check check) throws IOException {
        if (internalEObject == null) {
            this.writeCompressedInt(-1);
        } else {
            Integer id = (Integer)this.eObjectIDMap.get(internalEObject);
            if (id == null) {
                int idValue = this.eObjectIDMap.size();
                this.writeCompressedInt(idValue);
                this.eObjectIDMap.put(internalEObject, idValue);
                EClass eClass = internalEObject.eClass();
                BinaryResourceImpl.EObjectOutputStream.EClassData eClassData = this.writeEClass(eClass);
                this.handleAdvancedFeatures(internalEObject, check);
                boolean checkIsTransientProxy = false;
                switch (check) {
                    case DIRECT_RESOURCE: {
                        Resource.Internal resource = internalEObject.eDirectResource();
                        if (resource != null) {
                            this.writeCompressedInt(-1);
                            this.writeURI(resource.getURI(), resource.getURIFragment((EObject)internalEObject));
                            if (!this.shouldCheckTransientProxy || (this.style & 4) == 0) {
                                return;
                            }
                            checkIsTransientProxy = true;
                            break;
                        }
                        if (!internalEObject.eIsProxy()) break;
                        this.writeCompressedInt(-1);
                        this.writeURI(internalEObject.eProxyURI());
                        if (!this.shouldCheckTransientProxy || (this.style & 4) == 0) {
                            return;
                        }
                        checkIsTransientProxy = true;
                        break;
                    }
                    case RESOURCE: {
                        Resource.Internal resource = internalEObject.eResource();
                        if (resource != this.resource && resource != null) {
                            this.writeCompressedInt(-1);
                            this.writeURI(resource.getURI(), resource.getURIFragment((EObject)internalEObject));
                            if (!this.shouldCheckTransientProxy || (this.style & 4) == 0) {
                                return;
                            }
                            checkIsTransientProxy = true;
                            break;
                        }
                        if (!internalEObject.eIsProxy()) break;
                        this.writeCompressedInt(-1);
                        this.writeURI(internalEObject.eProxyURI());
                        if (!this.shouldCheckTransientProxy || (this.style & 4) == 0) {
                            return;
                        }
                        checkIsTransientProxy = true;
                        break;
                    }
                }
                BinaryResourceImpl.EObjectOutputStream.EStructuralFeatureData[] eStructuralFeatureData = eClassData.eStructuralFeatureData;
                int i = 0;
                int length = eStructuralFeatureData.length;
                while (i < length) {
                    BinaryResourceImpl.EObjectOutputStream.EStructuralFeatureData structuralFeatureData = eStructuralFeatureData[i];
                    if (!(structuralFeatureData.isTransient || structuralFeatureData.kind == BinaryResourceImpl.BinaryIO.FeatureKind.EOBJECT_CONTAINER_PROXY_RESOLVING && check != BinaryResourceImpl.EObjectOutputStream.Check.CONTAINER)) {
                        if (!this.shouldCheckTransientProxy) {
                            this.saveFeatureValue(internalEObject, i, structuralFeatureData);
                        } else if (!checkIsTransientProxy || !structuralFeatureData.isProxyTransient) {
                            this.saveFeatureValue(internalEObject, i, structuralFeatureData);
                        }
                    }
                    ++i;
                }
                this.writeCompressedInt(0);
            } else {
                this.writeCompressedInt(id);
            }
        }
    }

    protected void handleAdvancedFeatures(InternalEObject internalEObject, BinaryResourceImpl.EObjectOutputStream.Check check) throws IOException {
    }
}

