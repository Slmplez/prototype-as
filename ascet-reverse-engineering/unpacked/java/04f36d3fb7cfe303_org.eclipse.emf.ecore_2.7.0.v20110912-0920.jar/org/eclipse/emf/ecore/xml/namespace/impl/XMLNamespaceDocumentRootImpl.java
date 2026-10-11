/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EMap
 */
package org.eclipse.emf.ecore.xml.namespace.impl;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.impl.EStringToStringMapEntryImpl;
import org.eclipse.emf.ecore.util.BasicFeatureMap;
import org.eclipse.emf.ecore.util.EcoreEMap;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.emf.ecore.xml.namespace.SpaceType;
import org.eclipse.emf.ecore.xml.namespace.XMLNamespaceDocumentRoot;
import org.eclipse.emf.ecore.xml.namespace.XMLNamespacePackage;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class XMLNamespaceDocumentRootImpl
extends EObjectImpl
implements XMLNamespaceDocumentRoot {
    protected FeatureMap mixed;
    protected EMap<String, String> xMLNSPrefixMap;
    protected EMap<String, String> xSISchemaLocation;
    protected static final String BASE_EDEFAULT = null;
    protected String base = BASE_EDEFAULT;
    protected static final String ID_EDEFAULT = null;
    protected String id = ID_EDEFAULT;
    protected static final String LANG_EDEFAULT = null;
    protected String lang = LANG_EDEFAULT;
    protected static final SpaceType SPACE_EDEFAULT = SpaceType.DEFAULT_LITERAL;
    protected SpaceType space = SPACE_EDEFAULT;
    protected boolean spaceESet;

    protected XMLNamespaceDocumentRootImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return XMLNamespacePackage.Literals.XML_NAMESPACE_DOCUMENT_ROOT;
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

    @Override
    public String getBase() {
        return this.base;
    }

    @Override
    public void setBase(String newBase) {
        String oldBase = this.base;
        this.base = newBase;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldBase, (Object)this.base));
        }
    }

    @Override
    public String getId() {
        return this.id;
    }

    @Override
    public void setId(String newId) {
        String oldId = this.id;
        this.id = newId;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldId, (Object)this.id));
        }
    }

    @Override
    public String getLang() {
        return this.lang;
    }

    @Override
    public void setLang(String newLang) {
        String oldLang = this.lang;
        this.lang = newLang;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldLang, (Object)this.lang));
        }
    }

    @Override
    public SpaceType getSpace() {
        return this.space;
    }

    @Override
    public void setSpace(SpaceType newSpace) {
        SpaceType oldSpace = this.space;
        this.space = newSpace == null ? SPACE_EDEFAULT : newSpace;
        boolean oldSpaceESet = this.spaceESet;
        this.spaceESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSpace, (Object)this.space, !oldSpaceESet));
        }
    }

    @Override
    public void unsetSpace() {
        SpaceType oldSpace = this.space;
        boolean oldSpaceESet = this.spaceESet;
        this.space = SPACE_EDEFAULT;
        this.spaceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldSpace, (Object)SPACE_EDEFAULT, oldSpaceESet));
        }
    }

    @Override
    public boolean isSetSpace() {
        return this.spaceESet;
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
                return this.getBase();
            }
            case 4: {
                return this.getId();
            }
            case 5: {
                return this.getLang();
            }
            case 6: {
                return this.getSpace();
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
                this.setBase((String)newValue);
                return;
            }
            case 4: {
                this.setId((String)newValue);
                return;
            }
            case 5: {
                this.setLang((String)newValue);
                return;
            }
            case 6: {
                this.setSpace((SpaceType)((Object)newValue));
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
                this.setBase(BASE_EDEFAULT);
                return;
            }
            case 4: {
                this.setId(ID_EDEFAULT);
                return;
            }
            case 5: {
                this.setLang(LANG_EDEFAULT);
                return;
            }
            case 6: {
                this.unsetSpace();
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
                return BASE_EDEFAULT == null ? this.base != null : !BASE_EDEFAULT.equals(this.base);
            }
            case 4: {
                return ID_EDEFAULT == null ? this.id != null : !ID_EDEFAULT.equals(this.id);
            }
            case 5: {
                return LANG_EDEFAULT == null ? this.lang != null : !LANG_EDEFAULT.equals(this.lang);
            }
            case 6: {
                return this.isSetSpace();
            }
        }
        return this.eDynamicIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (mixed: ");
        result.append(this.mixed);
        result.append(", base: ");
        result.append(this.base);
        result.append(", id: ");
        result.append(this.id);
        result.append(", lang: ");
        result.append(this.lang);
        result.append(", space: ");
        if (this.spaceESet) {
            result.append((Object)this.space);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

