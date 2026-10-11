/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.EMap
 */
package org.eclipse.emf.ecore.xml.type.impl;

import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.impl.EStringToStringMapEntryImpl;
import org.eclipse.emf.ecore.util.BasicFeatureMap;
import org.eclipse.emf.ecore.util.EcoreEMap;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.emf.ecore.xml.type.ProcessingInstruction;
import org.eclipse.emf.ecore.xml.type.XMLTypeDocumentRoot;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class XMLTypeDocumentRootImpl
extends EObjectImpl
implements XMLTypeDocumentRoot {
    protected FeatureMap mixed;
    protected EMap<String, String> xMLNSPrefixMap;
    protected EMap<String, String> xSISchemaLocation;

    protected XMLTypeDocumentRootImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT;
    }

    @Override
    public FeatureMap getMixed() {
        if (this.mixed == null) {
            this.mixed = new BasicFeatureMap(this, 0);
        }
        return this.mixed;
    }

    @Override
    public EMap<String, String> getXMLNSPrefixMap() {
        if (this.xMLNSPrefixMap == null) {
            this.xMLNSPrefixMap = new EcoreEMap(EcorePackage.Literals.ESTRING_TO_STRING_MAP_ENTRY, EStringToStringMapEntryImpl.class, this, 1);
        }
        return this.xMLNSPrefixMap;
    }

    @Override
    public EMap<String, String> getXSISchemaLocation() {
        if (this.xSISchemaLocation == null) {
            this.xSISchemaLocation = new EcoreEMap(EcorePackage.Literals.ESTRING_TO_STRING_MAP_ENTRY, EStringToStringMapEntryImpl.class, this, 2);
        }
        return this.xSISchemaLocation;
    }

    public EList<String> getText() {
        return this.getMixed().list(XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__TEXT);
    }

    public EList<ProcessingInstruction> getProcessingInstruction() {
        return this.getMixed().list(XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__PROCESSING_INSTRUCTION);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)((Object)this.getMixed())).basicRemove(otherEnd, msgs);
            }
            case 1: {
                return ((InternalEList)this.getXMLNSPrefixMap()).basicRemove(otherEnd, msgs);
            }
            case 2: {
                return ((InternalEList)this.getXSISchemaLocation()).basicRemove(otherEnd, msgs);
            }
            case 5: {
                return ((InternalEList)this.getProcessingInstruction()).basicRemove(otherEnd, msgs);
            }
        }
        return this.eDynamicInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
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
                return this.getCDATA();
            }
            case 4: {
                return this.getComment();
            }
            case 5: {
                return this.getProcessingInstruction();
            }
            case 6: {
                return this.getText();
            }
        }
        return this.eDynamicGet(featureID, resolve, coreType);
    }

    @Override
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
                this.getCDATA().clear();
                this.getCDATA().addAll((Collection)newValue);
                return;
            }
            case 4: {
                this.getComment().clear();
                this.getComment().addAll((Collection)newValue);
                return;
            }
            case 5: {
                this.getProcessingInstruction().clear();
                this.getProcessingInstruction().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getText().clear();
                this.getText().addAll((Collection)newValue);
                return;
            }
        }
        this.eDynamicSet(featureID, newValue);
    }

    @Override
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
                this.getCDATA().clear();
                return;
            }
            case 4: {
                this.getComment().clear();
                return;
            }
            case 5: {
                this.getProcessingInstruction().clear();
                return;
            }
            case 6: {
                this.getText().clear();
                return;
            }
        }
        this.eDynamicUnset(featureID);
    }

    @Override
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
                return !this.getCDATA().isEmpty();
            }
            case 4: {
                return !this.getComment().isEmpty();
            }
            case 5: {
                return !this.getProcessingInstruction().isEmpty();
            }
            case 6: {
                return !this.getText().isEmpty();
            }
        }
        return this.eDynamicIsSet(featureID);
    }

    public EList<String> getCDATA() {
        return this.getMixed().list(XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__CDATA);
    }

    public EList<String> getComment() {
        return this.getMixed().list(XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__COMMENT);
    }

    @Override
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

