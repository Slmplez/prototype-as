/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.impl;

import autosar3x.genericstructure.commonpatterns.inlinetextmodel.MixedContent1;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.InlinesPackage;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Url;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Xfile;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SlData4;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class XfileImpl
extends ARObjectImpl
implements Xfile {
    protected static final String SHORT_NAME_EDEFAULT = "";
    protected String shortName = "";
    protected boolean shortNameESet;
    protected SlData4 longName1;
    protected Url url;
    protected static final String TOOL_EDEFAULT = "";
    protected String tool = "";
    protected boolean toolESet;
    protected static final String TOOL_VERSION_EDEFAULT = "";
    protected String toolVersion = "";
    protected boolean toolVersionESet;

    protected XfileImpl() {
    }

    protected EClass eStaticClass() {
        return InlinesPackage.Literals.XFILE;
    }

    public MixedContent1 getMixedContent1() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (MixedContent1)this.eContainer();
    }

    public NotificationChain basicSetMixedContent1(MixedContent1 newMixedContent1, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newMixedContent1, 4, msgs);
        return msgs;
    }

    public void setMixedContent1(MixedContent1 newMixedContent1) {
        if (newMixedContent1 != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newMixedContent1 != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newMixedContent1)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newMixedContent1 != null) {
                msgs = ((InternalEObject)newMixedContent1).eInverseAdd((InternalEObject)this, 5, MixedContent1.class, msgs);
            }
            if ((msgs = this.basicSetMixedContent1(newMixedContent1, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newMixedContent1, (Object)newMixedContent1));
        }
    }

    public String getShortName() {
        return this.shortName;
    }

    public void setShortName(String newShortName) {
        String oldShortName = this.shortName;
        this.shortName = newShortName;
        boolean oldShortNameESet = this.shortNameESet;
        this.shortNameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldShortName, (Object)this.shortName, !oldShortNameESet));
        }
    }

    public void unsetShortName() {
        String oldShortName = this.shortName;
        boolean oldShortNameESet = this.shortNameESet;
        this.shortName = "";
        this.shortNameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldShortName, (Object)"", oldShortNameESet));
        }
    }

    public boolean isSetShortName() {
        return this.shortNameESet;
    }

    public SlData4 getLongName1() {
        return this.longName1;
    }

    public NotificationChain basicSetLongName1(SlData4 newLongName1, NotificationChain msgs) {
        SlData4 oldLongName1 = this.longName1;
        this.longName1 = newLongName1;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldLongName1, (Object)newLongName1);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setLongName1(SlData4 newLongName1) {
        if (newLongName1 != this.longName1) {
            NotificationChain msgs = null;
            if (this.longName1 != null) {
                msgs = ((InternalEObject)this.longName1).eInverseRemove((InternalEObject)this, 5, SlData4.class, msgs);
            }
            if (newLongName1 != null) {
                msgs = ((InternalEObject)newLongName1).eInverseAdd((InternalEObject)this, 5, SlData4.class, msgs);
            }
            if ((msgs = this.basicSetLongName1(newLongName1, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newLongName1, (Object)newLongName1));
        }
    }

    public Url getUrl() {
        return this.url;
    }

    public NotificationChain basicSetUrl(Url newUrl, NotificationChain msgs) {
        Url oldUrl = this.url;
        this.url = newUrl;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldUrl, (Object)newUrl);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setUrl(Url newUrl) {
        if (newUrl != this.url) {
            NotificationChain msgs = null;
            if (this.url != null) {
                msgs = ((InternalEObject)this.url).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newUrl != null) {
                msgs = ((InternalEObject)newUrl).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetUrl(newUrl, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newUrl, (Object)newUrl));
        }
    }

    public String getTool() {
        return this.tool;
    }

    public void setTool(String newTool) {
        String oldTool = this.tool;
        this.tool = newTool;
        boolean oldToolESet = this.toolESet;
        this.toolESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldTool, (Object)this.tool, !oldToolESet));
        }
    }

    public void unsetTool() {
        String oldTool = this.tool;
        boolean oldToolESet = this.toolESet;
        this.tool = "";
        this.toolESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldTool, (Object)"", oldToolESet));
        }
    }

    public boolean isSetTool() {
        return this.toolESet;
    }

    public String getToolVersion() {
        return this.toolVersion;
    }

    public void setToolVersion(String newToolVersion) {
        String oldToolVersion = this.toolVersion;
        this.toolVersion = newToolVersion;
        boolean oldToolVersionESet = this.toolVersionESet;
        this.toolVersionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldToolVersion, (Object)this.toolVersion, !oldToolVersionESet));
        }
    }

    public void unsetToolVersion() {
        String oldToolVersion = this.toolVersion;
        boolean oldToolVersionESet = this.toolVersionESet;
        this.toolVersion = "";
        this.toolVersionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldToolVersion, (Object)"", oldToolVersionESet));
        }
    }

    public boolean isSetToolVersion() {
        return this.toolVersionESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetMixedContent1((MixedContent1)otherEnd, msgs);
            }
            case 6: {
                if (this.longName1 != null) {
                    msgs = ((InternalEObject)this.longName1).eInverseRemove((InternalEObject)this, -7, null, msgs);
                }
                return this.basicSetLongName1((SlData4)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetMixedContent1(null, msgs);
            }
            case 6: {
                return this.basicSetLongName1(null, msgs);
            }
            case 7: {
                return this.basicSetUrl(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, MixedContent1.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getMixedContent1();
            }
            case 5: {
                return this.getShortName();
            }
            case 6: {
                return this.getLongName1();
            }
            case 7: {
                return this.getUrl();
            }
            case 8: {
                return this.getTool();
            }
            case 9: {
                return this.getToolVersion();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setMixedContent1((MixedContent1)newValue);
                return;
            }
            case 5: {
                this.setShortName((String)newValue);
                return;
            }
            case 6: {
                this.setLongName1((SlData4)newValue);
                return;
            }
            case 7: {
                this.setUrl((Url)newValue);
                return;
            }
            case 8: {
                this.setTool((String)newValue);
                return;
            }
            case 9: {
                this.setToolVersion((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setMixedContent1(null);
                return;
            }
            case 5: {
                this.unsetShortName();
                return;
            }
            case 6: {
                this.setLongName1(null);
                return;
            }
            case 7: {
                this.setUrl(null);
                return;
            }
            case 8: {
                this.unsetTool();
                return;
            }
            case 9: {
                this.unsetToolVersion();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getMixedContent1() != null;
            }
            case 5: {
                return this.isSetShortName();
            }
            case 6: {
                return this.longName1 != null;
            }
            case 7: {
                return this.url != null;
            }
            case 8: {
                return this.isSetTool();
            }
            case 9: {
                return this.isSetToolVersion();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (shortName: ");
        if (this.shortNameESet) {
            result.append(this.shortName);
        } else {
            result.append("<unset>");
        }
        result.append(", tool: ");
        if (this.toolESet) {
            result.append(this.tool);
        } else {
            result.append("<unset>");
        }
        result.append(", toolVersion: ");
        if (this.toolVersionESet) {
            result.append(this.toolVersion);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

