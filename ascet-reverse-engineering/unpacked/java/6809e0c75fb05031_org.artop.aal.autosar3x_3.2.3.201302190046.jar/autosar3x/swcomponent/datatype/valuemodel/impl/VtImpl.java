/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.BasicFeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMap$Internal
 *  org.eclipse.emf.ecore.util.InternalEList
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 *  org.eclipse.sphinx.emf.util.EObjectUtil
 */
package autosar3x.swcomponent.datatype.valuemodel.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.datatype.computationmethod.CompuConstTextContent;
import autosar3x.swcomponent.datatype.valuemodel.ValuemodelPackage;
import autosar3x.swcomponent.datatype.valuemodel.Vt;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.BasicFeatureMap;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.sphinx.emf.util.EObjectUtil;

public class VtImpl
extends ARObjectImpl
implements Vt {
    protected FeatureMap mixed;
    protected static final String XMLSPACE_EDEFAULT = "";
    protected String xmlspace = "";
    protected boolean xmlspaceESet;

    protected VtImpl() {
    }

    protected EClass eStaticClass() {
        return ValuemodelPackage.Literals.VT;
    }

    public FeatureMap getMixed() {
        if (this.mixed == null) {
            this.mixed = new BasicFeatureMap((InternalEObject)this, 4);
        }
        return this.mixed;
    }

    public void unsetMixed() {
        if (this.mixed != null) {
            ((InternalEList.Unsettable)this.mixed).unset();
        }
    }

    public boolean isSetMixed() {
        return this.mixed != null && ((InternalEList.Unsettable)this.mixed).isSet();
    }

    public CompuConstTextContent getCompuConstTextContent() {
        return (CompuConstTextContent)this.getMixed().get((EStructuralFeature)ValuemodelPackage.Literals.VT__COMPU_CONST_TEXT_CONTENT, true);
    }

    public void setCompuConstTextContent(CompuConstTextContent newCompuConstTextContent) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)ValuemodelPackage.Literals.VT__COMPU_CONST_TEXT_CONTENT, (Object)newCompuConstTextContent);
    }

    public String getXmlspace() {
        return this.xmlspace;
    }

    public void setXmlspace(String newXmlspace) {
        String oldXmlspace = this.xmlspace;
        this.xmlspace = newXmlspace;
        boolean oldXmlspaceESet = this.xmlspaceESet;
        this.xmlspaceESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldXmlspace, (Object)this.xmlspace, !oldXmlspaceESet));
        }
    }

    public void unsetXmlspace() {
        String oldXmlspace = this.xmlspace;
        boolean oldXmlspaceESet = this.xmlspaceESet;
        this.xmlspace = XMLSPACE_EDEFAULT;
        this.xmlspaceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldXmlspace, (Object)XMLSPACE_EDEFAULT, oldXmlspaceESet));
        }
    }

    public boolean isSetXmlspace() {
        return this.xmlspaceESet;
    }

    public String getMixedText() {
        return EObjectUtil.getMixedText((FeatureMap)this.getMixed());
    }

    public void setMixedText(String text) {
        EObjectUtil.setMixedText((FeatureMap)this.getMixed(), (String)text);
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.eBasicSetContainer(otherEnd, 5, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return ((InternalEList)this.getMixed()).basicRemove((Object)otherEnd, msgs);
            }
            case 5: {
                return this.eBasicSetContainer(null, 5, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 5: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, CompuConstTextContent.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                if (coreType) {
                    return this.getMixed();
                }
                return ((FeatureMap.Internal)this.getMixed()).getWrapper();
            }
            case 5: {
                return this.getCompuConstTextContent();
            }
            case 6: {
                return this.getXmlspace();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                ((FeatureMap.Internal)this.getMixed()).set(newValue);
                return;
            }
            case 5: {
                this.setCompuConstTextContent((CompuConstTextContent)newValue);
                return;
            }
            case 6: {
                this.setXmlspace((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetMixed();
                return;
            }
            case 5: {
                this.setCompuConstTextContent(null);
                return;
            }
            case 6: {
                this.unsetXmlspace();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetMixed();
            }
            case 5: {
                return this.getCompuConstTextContent() != null;
            }
            case 6: {
                return this.isSetXmlspace();
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
        result.append(", xmlspace: ");
        if (this.xmlspaceESet) {
            result.append(this.xmlspace);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

