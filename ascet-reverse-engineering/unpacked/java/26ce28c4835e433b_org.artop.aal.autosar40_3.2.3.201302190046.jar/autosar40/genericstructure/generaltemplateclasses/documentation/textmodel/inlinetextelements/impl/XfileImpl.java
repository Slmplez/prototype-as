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
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.Url;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.InlinetextelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Xfile;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForParagraph;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.SingleLanguageReferrableImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class XfileImpl
extends SingleLanguageReferrableImpl
implements Xfile {
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
        return InlinetextelementsPackage.Literals.XFILE;
    }

    public MixedContentForParagraph getMixedContentForParagraph() {
        if (this.eContainerFeatureID() != 7) {
            return null;
        }
        return (MixedContentForParagraph)this.eContainer();
    }

    public NotificationChain basicSetMixedContentForParagraph(MixedContentForParagraph newMixedContentForParagraph, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newMixedContentForParagraph, 7, msgs);
        return msgs;
    }

    public void setMixedContentForParagraph(MixedContentForParagraph newMixedContentForParagraph) {
        if (newMixedContentForParagraph != this.eInternalContainer() || this.eContainerFeatureID() != 7 && newMixedContentForParagraph != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newMixedContentForParagraph)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newMixedContentForParagraph != null) {
                msgs = ((InternalEObject)newMixedContentForParagraph).eInverseAdd((InternalEObject)this, 16, MixedContentForParagraph.class, msgs);
            }
            if ((msgs = this.basicSetMixedContentForParagraph(newMixedContentForParagraph, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newMixedContentForParagraph, (Object)newMixedContentForParagraph));
        }
    }

    public Url getUrl() {
        return this.url;
    }

    public NotificationChain basicSetUrl(Url newUrl, NotificationChain msgs) {
        Url oldUrl = this.url;
        this.url = newUrl;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldUrl, (Object)newUrl);
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
                msgs = ((InternalEObject)this.url).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newUrl != null) {
                msgs = ((InternalEObject)newUrl).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetUrl(newUrl, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newUrl, (Object)newUrl));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldTool, (Object)this.tool, !oldToolESet));
        }
    }

    public void unsetTool() {
        String oldTool = this.tool;
        boolean oldToolESet = this.toolESet;
        this.tool = "";
        this.toolESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldTool, (Object)"", oldToolESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldToolVersion, (Object)this.toolVersion, !oldToolVersionESet));
        }
    }

    public void unsetToolVersion() {
        String oldToolVersion = this.toolVersion;
        boolean oldToolVersionESet = this.toolVersionESet;
        this.toolVersion = "";
        this.toolVersionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldToolVersion, (Object)"", oldToolVersionESet));
        }
    }

    public boolean isSetToolVersion() {
        return this.toolVersionESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetMixedContentForParagraph((MixedContentForParagraph)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                return this.basicSetMixedContentForParagraph(null, msgs);
            }
            case 8: {
                return this.basicSetUrl(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 7: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 16, MixedContentForParagraph.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 7: {
                return this.getMixedContentForParagraph();
            }
            case 8: {
                return this.getUrl();
            }
            case 9: {
                return this.getTool();
            }
            case 10: {
                return this.getToolVersion();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 7: {
                this.setMixedContentForParagraph((MixedContentForParagraph)newValue);
                return;
            }
            case 8: {
                this.setUrl((Url)newValue);
                return;
            }
            case 9: {
                this.setTool((String)newValue);
                return;
            }
            case 10: {
                this.setToolVersion((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 7: {
                this.setMixedContentForParagraph(null);
                return;
            }
            case 8: {
                this.setUrl(null);
                return;
            }
            case 9: {
                this.unsetTool();
                return;
            }
            case 10: {
                this.unsetToolVersion();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 7: {
                return this.getMixedContentForParagraph() != null;
            }
            case 8: {
                return this.url != null;
            }
            case 9: {
                return this.isSetTool();
            }
            case 10: {
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

