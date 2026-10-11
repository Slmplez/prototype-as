/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.EStructuralFeature$Setting
 *  org.eclipse.emf.ecore.EcorePackage$Literals
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.EStringToStringMapEntryImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 *  org.eclipse.emf.ecore.util.BasicFeatureMap
 *  org.eclipse.emf.ecore.util.EcoreEMap
 *  org.eclipse.emf.ecore.util.FeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMap$Internal
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package com.etas.amd620.core.ComponentProject.impl;

import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.DocumentRoot;
import com.etas.amd620.core.ComponentProject.ProjectType;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.EStringToStringMapEntryImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.eclipse.emf.ecore.util.BasicFeatureMap;
import org.eclipse.emf.ecore.util.EcoreEMap;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.InternalEList;

public class DocumentRootImpl
extends MinimalEObjectImpl.Container
implements DocumentRoot {
    protected FeatureMap mixed;
    protected EMap<String, String> xMLNSPrefixMap;
    protected EMap<String, String> xSISchemaLocation;

    protected DocumentRootImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.DOCUMENT_ROOT;
    }

    @Override
    public FeatureMap getMixed() {
        if (this.mixed == null) {
            this.mixed = new BasicFeatureMap((InternalEObject)this, 0);
        }
        return this.mixed;
    }

    @Override
    public EMap<String, String> getXMLNSPrefixMap() {
        if (this.xMLNSPrefixMap == null) {
            this.xMLNSPrefixMap = new EcoreEMap(EcorePackage.Literals.ESTRING_TO_STRING_MAP_ENTRY, EStringToStringMapEntryImpl.class, (InternalEObject)this, 1);
        }
        return this.xMLNSPrefixMap;
    }

    @Override
    public EMap<String, String> getXSISchemaLocation() {
        if (this.xSISchemaLocation == null) {
            this.xSISchemaLocation = new EcoreEMap(EcorePackage.Literals.ESTRING_TO_STRING_MAP_ENTRY, EStringToStringMapEntryImpl.class, (InternalEObject)this, 2);
        }
        return this.xSISchemaLocation;
    }

    @Override
    public ProjectType getProject() {
        return (ProjectType)this.getMixed().get((EStructuralFeature)ComponentProjectPackage.Literals.DOCUMENT_ROOT__PROJECT, true);
    }

    public NotificationChain basicSetProject(ProjectType newProject, NotificationChain msgs) {
        return ((FeatureMap.Internal)this.getMixed()).basicAdd((EStructuralFeature)ComponentProjectPackage.Literals.DOCUMENT_ROOT__PROJECT, (Object)newProject, msgs);
    }

    @Override
    public void setProject(ProjectType newProject) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)ComponentProjectPackage.Literals.DOCUMENT_ROOT__PROJECT, (Object)newProject);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getMixed()).basicRemove((Object)otherEnd, msgs);
            }
            case 1: {
                return ((InternalEList)this.getXMLNSPrefixMap()).basicRemove((Object)otherEnd, msgs);
            }
            case 2: {
                return ((InternalEList)this.getXSISchemaLocation()).basicRemove((Object)otherEnd, msgs);
            }
            case 3: {
                return this.basicSetProject(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                if (coreType) {
                    return this.getMixed();
                }
                return ((FeatureMap.Internal)this.getMixed()).getWrapper();
            }
            case 1: {
                if (coreType) {
                    return this.getXMLNSPrefixMap();
                }
                return this.getXMLNSPrefixMap().map();
            }
            case 2: {
                if (coreType) {
                    return this.getXSISchemaLocation();
                }
                return this.getXSISchemaLocation().map();
            }
            case 3: {
                return this.getProject();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                ((FeatureMap.Internal)this.getMixed()).set(newValue);
                return;
            }
            case 1: {
                ((EStructuralFeature.Setting)this.getXMLNSPrefixMap()).set(newValue);
                return;
            }
            case 2: {
                ((EStructuralFeature.Setting)this.getXSISchemaLocation()).set(newValue);
                return;
            }
            case 3: {
                this.setProject((ProjectType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getMixed().clear();
                return;
            }
            case 1: {
                this.getXMLNSPrefixMap().clear();
                return;
            }
            case 2: {
                this.getXSISchemaLocation().clear();
                return;
            }
            case 3: {
                this.setProject(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.mixed != null && !this.mixed.isEmpty();
            }
            case 1: {
                return this.xMLNSPrefixMap != null && !this.xMLNSPrefixMap.isEmpty();
            }
            case 2: {
                return this.xSISchemaLocation != null && !this.xSISchemaLocation.isEmpty();
            }
            case 3: {
                return this.getProject() != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (mixed: ");
        result.append(this.mixed);
        result.append(')');
        return result.toString();
    }
}

