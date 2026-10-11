/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.commonstructure.implementation.impl;

import autosar3x.commonstructure.implementation.ImplementationPackage;
import autosar3x.commonstructure.implementation.XfileSo;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Url;
import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class XfileSoImpl
extends IdentifiableImpl
implements XfileSo {
    protected Url url;
    protected static final String TOOL_EDEFAULT = "";
    protected String tool = "";
    protected boolean toolESet;
    protected static final String TOOL_VERSION_EDEFAULT = "";
    protected String toolVersion = "";
    protected boolean toolVersionESet;

    protected XfileSoImpl() {
    }

    protected EClass eStaticClass() {
        return ImplementationPackage.Literals.XFILE_SO;
    }

    public Url getUrl() {
        return this.url;
    }

    public NotificationChain basicSetUrl(Url newUrl, NotificationChain msgs) {
        Url oldUrl = this.url;
        this.url = newUrl;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldUrl, (Object)newUrl);
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
                msgs = ((InternalEObject)this.url).eInverseRemove((InternalEObject)this, -18, null, msgs);
            }
            if (newUrl != null) {
                msgs = ((InternalEObject)newUrl).eInverseAdd((InternalEObject)this, -18, null, msgs);
            }
            if ((msgs = this.basicSetUrl(newUrl, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newUrl, (Object)newUrl));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldTool, (Object)this.tool, !oldToolESet));
        }
    }

    public void unsetTool() {
        String oldTool = this.tool;
        boolean oldToolESet = this.toolESet;
        this.tool = "";
        this.toolESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldTool, (Object)"", oldToolESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldToolVersion, (Object)this.toolVersion, !oldToolVersionESet));
        }
    }

    public void unsetToolVersion() {
        String oldToolVersion = this.toolVersion;
        boolean oldToolVersionESet = this.toolVersionESet;
        this.toolVersion = "";
        this.toolVersionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldToolVersion, (Object)"", oldToolVersionESet));
        }
    }

    public boolean isSetToolVersion() {
        return this.toolVersionESet;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetUrl(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getUrl();
            }
            case 18: {
                return this.getTool();
            }
            case 19: {
                return this.getToolVersion();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setUrl((Url)newValue);
                return;
            }
            case 18: {
                this.setTool((String)newValue);
                return;
            }
            case 19: {
                this.setToolVersion((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.setUrl(null);
                return;
            }
            case 18: {
                this.unsetTool();
                return;
            }
            case 19: {
                this.unsetToolVersion();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.url != null;
            }
            case 18: {
                return this.isSetTool();
            }
            case 19: {
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
        result.append(" (tool: ");
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

